# Deserialize `Cargo.toml`

<img src="the-real-tom.jpeg" align="left" alt="tom replacement" title="due to a milkshake duck situation, the preferred Tom for this format has been replaced">

This is a definition of fields in `Cargo.toml` files for [serde](https://serde.rs). It allows reading of `Cargo.toml` data, and serializing it using TOML or other formats. It's used by [the lib.rs site](https://lib.rs) to extract information about crates.

This crate is more than just schema definition. It supports post-processing of the data to emulate Cargo's workspace inheritance and `autobins` features. It supports files on disk as well as other non-disk data sources.

To get started, see [`Manifest::from_slice`][docs]. If you need to get information about Cargo projects local to devs' machines, also consider [cargo_metadata](lib.rs/crates/cargo_metadata).

[docs]: https://docs.rs/cargo_toml/latest/cargo_toml/struct.Manifest.html#method.from_slice
