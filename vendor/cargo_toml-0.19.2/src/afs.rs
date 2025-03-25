use crate::Error;
use crate::Manifest;
use crate::Value;
use std::collections::HashSet;
use std::fs::read_dir;
use std::io;
use std::path::Path;
use std::path::PathBuf;

/// This crate supports reading `Cargo.toml` not only from a real directory, but also directly from other sources, like tarballs or bare git repos (BYO directory reader).
pub trait AbstractFilesystem {
    /// List all files and directories at the given relative path (no leading `/`).
    fn file_names_in(&self, rel_path: &str) -> io::Result<HashSet<Box<str>>>;

    /// `parse_root_workspace` is preferred.
    ///
    /// The `rel_path_hint` may be specified explicitly by `package.workspace` (it may be relative like `"../"`, without `Cargo.toml`) or `None`,
    /// which means you have to search for workspace's `Cargo.toml` in parent directories.
    ///
    /// Read bytes of the root workspace manifest TOML file and return the path it's been read from.
    /// The path needs to be an absolute path, because it will be used as the base path for inherited readmes, and would be ambiguous otherwise.
    fn read_root_workspace(&self, _rel_path_hint: Option<&str>) -> io::Result<(Vec<u8>, PathBuf)> {
        Err(io::Error::new(io::ErrorKind::Unsupported, "AbstractFilesystem::read_root_workspace unimplemented"))
    }

    /// The `rel_path_hint` may be specified explicitly by `package.workspace` (it may be relative like `"../"`, without `Cargo.toml`) or `None`,
    /// which means you have to search for workspace's `Cargo.toml` in parent directories.
    ///
    /// Read and parse the root workspace manifest TOML file and return the path it's been read from.
    /// The path needs to be an absolute path, because it will be used as the base path for inherited readmes, and would be ambiguous otherwise.
    fn parse_root_workspace(&self, rel_path_hint: Option<&str>) -> Result<(Manifest<Value>, PathBuf), Error> {
        let (data, path) = self.read_root_workspace(rel_path_hint).map_err(|e| Error::Workspace(Box::new(e.into())))?;
        let manifest = Manifest::from_slice(&data).map_err(|e| Error::Workspace(Box::new(e)))?;
        if manifest.workspace.is_none() {
            return Err(Error::WorkspaceIntegrity(format!("Manifest at {} was expected to be a workspace.\nUse package.workspace to select a differnt path, or implement cargo_toml::AbstractFilesystem::parse_root_workspace", path.display())));
        }
        Ok((manifest, path))
    }
}

impl<T> AbstractFilesystem for &T
where
    T: AbstractFilesystem + ?Sized,
{
    fn file_names_in(&self, rel_path: &str) -> io::Result<HashSet<Box<str>>> {
        <T as AbstractFilesystem>::file_names_in(*self, rel_path)
    }

    fn read_root_workspace(&self, rel_path_hint: Option<&str>) -> io::Result<(Vec<u8>, PathBuf)> {
        <T as AbstractFilesystem>::read_root_workspace(*self, rel_path_hint)
    }

    fn parse_root_workspace(&self, rel_path_hint: Option<&str>) -> Result<(Manifest<Value>, PathBuf), Error> {
        <T as AbstractFilesystem>::parse_root_workspace(*self, rel_path_hint)
    }
}

/// [`AbstractFilesystem`] implementation for real files.
pub struct Filesystem<'a> {
    path: &'a Path,
}

impl<'a> Filesystem<'a> {
    #[must_use]
    pub fn new(path: &'a Path) -> Self {
        Self { path }
    }
}

impl<'a> AbstractFilesystem for Filesystem<'a> {
    fn file_names_in(&self, rel_path: &str) -> io::Result<HashSet<Box<str>>> {
        Ok(read_dir(self.path.join(rel_path))?.filter_map(|entry| {
            entry.ok().map(|e| {
                e.file_name().to_string_lossy().into_owned().into()
            })
        })
        .collect())
    }

    fn read_root_workspace(&self, path: Option<&str>) -> io::Result<(Vec<u8>, PathBuf)> {
        match path {
            Some(path) => {
                let ws = self.path.join(path);
                Ok((std::fs::read(ws.join("Cargo.toml"))?, ws))
            },
            None => {
                // Try relative path first
                match find_cargo_toml_file(self.path) {
                    Ok(found) => Ok(found),
                    Err(err) if self.path.is_absolute() => Err(err),
                    Err(_) => find_cargo_toml_file(&self.path.ancestors().last().unwrap().canonicalize()?),
                }
            }
        }
    }

    fn parse_root_workspace(&self, path: Option<&str>) -> Result<(Manifest<Value>, PathBuf), Error> {
        match path {
            Some(path) => {
                let ws = self.path.join(path);
                let toml_path = ws.join("Cargo.toml");
                let data = std::fs::read(&toml_path)
                    .map_err(|e| Error::Workspace(Box::new(Error::Io(e))))?;
                Ok((parse_workspace(&data, &toml_path)?, ws))
            },
            None => {
                // Try relative path first
                match find_workspace(self.path) {
                    Ok(found) => Ok(found),
                    Err(err) if self.path.is_absolute() => Err(err),
                    Err(_) => find_workspace(&self.path.ancestors().last().unwrap().canonicalize()?),
                }
            }
        }
    }
}

/// This doesn't check if the `Cargo.toml` is just a nested package, not a workspace.
/// If you run into this problem: use `cargo_metadata` to find the workspace properly,
/// or move the decoy package to a subdirectory.
#[inline(never)]
fn find_cargo_toml_file(path: &Path) -> io::Result<(Vec<u8>, PathBuf)> {
    path.ancestors().skip(1)
        .map(|parent| parent.join("Cargo.toml"))
        .find_map(|p| {
            Some((std::fs::read(&p).ok()?, p))
        })
        .ok_or(io::ErrorKind::NotFound.into())
}

#[inline(never)]
fn find_workspace(path: &Path) -> Result<(Manifest<Value>, PathBuf), Error> {
    let mut last_error = Error::Io(io::ErrorKind::NotFound.into());
    path.ancestors().skip(1)
        .map(|parent| parent.join("Cargo.toml"))
        .find_map(|p| {
            let data = std::fs::read(&p).ok()?;
            match parse_workspace(&data, &p) {
                Ok(manifest) => Some((manifest, p)),
                Err(e) => {
                    last_error = e;
                    None
                },
            }
        })
        .ok_or(last_error)
}

#[inline(never)]
fn parse_workspace(data: &[u8], path: &Path) -> Result<Manifest<Value>, Error> {
    let manifest = Manifest::from_slice(data).map_err(|e| Error::Workspace(Box::new(e)))?;
    if manifest.workspace.is_none() {
        return Err(Error::WorkspaceIntegrity(format!("Manifest at {} was expected to be a workspace.", path.display())));
    }
    Ok(manifest)
}
