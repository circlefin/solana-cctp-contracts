#![no_std]

extern crate alloc;

// --- alloc ---
use alloc::{string::String, vec::Vec};
// --- core ---
use core::{char, convert::TryInto, i16, i32, num::ParseIntError};
// --- crates.io ---
#[cfg(feature = "serde")]
use serde::{de::Error as DeError, Deserialize, Deserializer};
// use thiserror::Error as ThisError;

/// Alias for `Vec<u8>`
pub type Bytes = Vec<u8>;
/// Alias for `String`
pub type Hex = String;
/// The generic main result of crate array-bytes
pub type ArrayBytesResult<T> = Result<T, Error>;

pub trait TryFromHex
where
	Self: Sized,
{
	fn try_from_hex(hex: impl AsRef<str>) -> ArrayBytesResult<Self>;
}

macro_rules! impl_num_from_hex {
	($t:ty) => {
		impl TryFromHex for $t {
			fn try_from_hex(hex: impl AsRef<str>) -> ArrayBytesResult<Self> {
				let hex = hex.as_ref();

				Self::from_str_radix(&hex[if hex.starts_with("0x") { 2 } else { 0 }..], 16)
					.map_err(|e| Error::ParseIntError(e))
			}
		}
	};
}
impl_num_from_hex!(isize);
impl_num_from_hex!(i8);
impl_num_from_hex!(i16);
impl_num_from_hex!(i32);
impl_num_from_hex!(i64);
impl_num_from_hex!(i128);
impl_num_from_hex!(usize);
impl_num_from_hex!(u8);
impl_num_from_hex!(u16);
impl_num_from_hex!(u32);
impl_num_from_hex!(u64);
impl_num_from_hex!(u128);

// #[derive(Debug, ThisError)]
// #[cfg_attr(test, derive(PartialEq))]
// pub enum Error {
// 	#[error("Invalid length: {}", length)]
// 	InvalidLength { length: usize },
// 	#[error("Invalid char boundary at: {}", index)]
// 	InvalidCharBoundary { index: usize },
// }

/// The main error of crate array-bytes
#[derive(Debug)]
#[cfg_attr(test, derive(PartialEq))]
pub enum Error {
	InvalidLength { length: usize },
	InvalidCharBoundary { index: usize },
	ParseIntError(ParseIntError),
}

/// `Slice`/`Vec`([`Bytes`]) to `[u8; _]`
///
/// # Examples
///
/// ```
/// assert_eq!([0; 8], array_bytes::dyn2array!(vec![0; 10], 8));
/// ```
#[macro_export]
macro_rules! dyn2array {
	($dyn:expr, $len:expr) => {{
		unsafe { *($dyn.as_ptr() as *const [u8; $len]) }
	}};
}

///  Convert `Slice`/`Vec`([`Bytes`]) to a type directly
///
/// # Examples
///
/// ```
/// #[derive(Debug, PartialEq)]
/// struct LJF([u8; 17]);
/// impl From<[u8; 17]> for LJF {
/// 	fn from(array: [u8; 17]) -> Self {
/// 		Self(array)
/// 	}
/// }
///
/// let ljf: LJF = array_bytes::dyn_into!(*b"Love Jane Forever Forever Forever", 17);
/// assert_eq!(ljf, LJF(*b"Love Jane Forever"));
///
/// let ljf: LJF = array_bytes::dyn_into!(b"Love Jane Forever Forever Forever".to_vec(), 17);
/// assert_eq!(ljf, LJF(*b"Love Jane Forever"));
/// ```
#[macro_export]
macro_rules! dyn_into {
	($dyn:expr, $len:expr) => {{
		unsafe { *($dyn.as_ptr() as *const [u8; $len]) }.into()
	}};
}

/// [`Hex`] to [`Bytes`]
///
/// Return error while length is a odd number or any byte out of radix
///
/// # Examples
///
/// ```
/// assert_eq!(
/// 	array_bytes::hex2bytes("0x4c6f7665204a616e6520466f7265766572").unwrap(),
/// 	*b"Love Jane Forever"
/// );
/// ```
pub fn hex2bytes(hex: impl AsRef<str>) -> ArrayBytesResult<Bytes> {
	let hex = hex.as_ref();

	if hex.len() % 2 != 0 {
		return Err(Error::InvalidLength {
			length: if hex.starts_with("0x") {
				hex.len() - 2
			} else {
				hex.len()
			},
		});
	}

	let mut bytes = Bytes::new();

	for i in (if hex.starts_with("0x") { 2 } else { 0 }..hex.len()).step_by(2) {
		for i in i + 1..i + 3 {
			if !hex.is_char_boundary(i) {
				return Err(Error::InvalidCharBoundary { index: i });
			}
		}

		// radix is always 16 which will never fail this; qed
		bytes.push(u8::from_str_radix(&hex[i..i + 2], 16).unwrap());
	}

	Ok(bytes)
}

/// Just like [`hex2bytes`] but without checking
///
/// # Examples
///
/// ```
/// assert_eq!(
/// 	array_bytes::hex2bytes_unchecked("0x4c6f7665204a616e6520466f7265766572"),
/// 	*b"Love Jane Forever"
/// );
/// ```
pub fn hex2bytes_unchecked(hex: impl AsRef<str>) -> Bytes {
	let hex = hex.as_ref();

	(if hex.starts_with("0x") { 2 } else { 0 }..hex.len())
		.step_by(2)
		.map(|i| u8::from_str_radix(&hex[i..i + 2], 16).unwrap())
		.collect()
}

/// Just like [`hex2bytes`] but to a fixed length array
///
/// # Examples
///
/// ```
/// assert_eq!(
/// 	array_bytes::hex2array("0x4c6f7665204a616e6520466f7265766572").unwrap(),
/// 	*b"Love Jane Forever"
/// );
/// ```
pub fn hex2array<H, const N: usize>(hex: H) -> ArrayBytesResult<[u8; N]>
where
	H: AsRef<str>,
{
	hex2bytes(hex)?
		.try_into()
		.map_err(|e: Bytes| Error::InvalidLength { length: e.len() })
}

/// Just like [`hex2array`] but without checking
///
/// # Examples
///
/// ```
/// assert_eq!(
/// 	array_bytes::hex2array_unchecked("0x4c6f7665204a616e6520466f7265766572"),
/// 	*b"Love Jane Forever"
/// );
/// ```
pub fn hex2array_unchecked<H, const N: usize>(hex: H) -> [u8; N]
where
	H: AsRef<str>,
{
	hex2bytes_unchecked(hex).try_into().unwrap()
}

/// Try to convert [`Hex`] to a type directly
///
/// # Examples
///
/// ```
/// #[derive(Debug, PartialEq)]
/// struct LJF([u8; 17]);
/// impl From<[u8; 17]> for LJF {
/// 	fn from(array: [u8; 17]) -> Self {
/// 		Self(array)
/// 	}
/// }
///
/// assert_eq!(
/// 	array_bytes::hex_try_into::<_, LJF, 17>("0x4c6f7665204a616e6520466f7265766572").unwrap(),
/// 	LJF(*b"Love Jane Forever")
/// );
/// ```
pub fn hex_try_into<H, T, const N: usize>(hex: H) -> ArrayBytesResult<T>
where
	H: AsRef<str>,
	T: From<[u8; N]>,
{
	Ok(hex2array(hex)?.into())
}

/// Just like [`hex_try_into`] but without checking
///
/// # Examples
///
/// ```
/// #[derive(Debug, PartialEq)]
/// struct LJF([u8; 17]);
/// impl From<[u8; 17]> for LJF {
/// 	fn from(array: [u8; 17]) -> Self {
/// 		Self(array)
/// 	}
/// }
///
/// assert_eq!(
/// 	array_bytes::hex_into_unchecked::<_, LJF, 17>("0x4c6f7665204a616e6520466f7265766572"),
/// 	LJF(*b"Love Jane Forever")
/// );
/// ```
pub fn hex_into_unchecked<H, T, const N: usize>(hex: H) -> T
where
	H: AsRef<str>,
	T: From<[u8; N]>,
{
	hex2array_unchecked(hex).into()
}

/// ```
/// use serde::Deserialize;
///
/// #[derive(Debug, PartialEq)]
/// struct LJF([u8; 17]);
/// impl From<[u8; 17]> for LJF {
/// 	fn from(array: [u8; 17]) -> Self {
/// 		Self(array)
/// 	}
/// }
///
/// #[derive(Debug, PartialEq, Deserialize)]
/// struct WrappedLJF {
/// 	#[serde(deserialize_with = "array_bytes::hex_deserialize_into")]
/// 	ljf: LJF,
/// }
///
/// assert_eq!(
/// 	serde_json::from_str::<WrappedLJF>(
/// 		r#"{
/// 		"ljf": "0x4c6f7665204a616e6520466f7265766572"
/// 	}"#
/// 	)
/// 	.unwrap(),
/// 	WrappedLJF {
/// 		ljf: LJF(*b"Love Jane Forever")
/// 	}
/// );
#[cfg(feature = "serde")]
pub fn hex_deserialize_into<'de, D, T, const N: usize>(hex: D) -> Result<T, D::Error>
where
	D: Deserializer<'de>,
	T: From<[u8; N]>,
{
	Ok(hex2array_unchecked(Hex::deserialize(hex)?).into())
}

/// Deserialize [`Hex`] to any Rust primitive num type
///
/// # Examples
///
/// ```
/// use serde::Deserialize;
///
/// #[derive(Debug, PartialEq, Deserialize)]
/// struct LJF {
/// 	#[serde(deserialize_with = "array_bytes::de_hex2num")]
/// 	_0: u8,
/// 	#[serde(deserialize_with = "array_bytes::de_hex2num")]
/// 	_1: u8,
/// 	#[serde(deserialize_with = "array_bytes::de_hex2num")]
/// 	_2: u8,
/// 	#[serde(deserialize_with = "array_bytes::de_hex2num")]
/// 	_3: u32,
/// }
///
/// assert_eq!(
/// 	serde_json::from_str::<LJF>(
/// 		r#"{
/// 		"_0": "0x5",
/// 		"_1": "0x2",
/// 		"_2": "0x0",
/// 		"_3": "0x522"
/// 	}"#
/// 	)
/// 	.unwrap(),
/// 	LJF {
/// 		_0: 5,
/// 		_1: 2,
/// 		_2: 0,
/// 		_3: 1314
/// 	}
/// );
/// ```
#[cfg(feature = "serde")]
pub fn de_hex2num<'de, D, T>(hex: D) -> Result<T, D::Error>
where
	D: Deserializer<'de>,
	T: TryFromHex,
{
	let hex = Hex::deserialize(hex)?;

	T::try_from_hex(&hex).map_err(|_| D::Error::custom(alloc::format!("Invalid hex str `{}`", hex)))
}

/// Deserialize [`Hex`] to [`Bytes`]
///
/// # Examples
///
/// ```
/// use array_bytes::Bytes;
/// use serde::Deserialize;
///
/// #[derive(Debug, PartialEq, Deserialize)]
/// struct LJF {
/// 	#[serde(deserialize_with = "array_bytes::de_hex2bytes")]
/// 	ljf: Bytes,
/// }
///
/// assert_eq!(
/// 	serde_json::from_str::<LJF>(
/// 		r#"{
/// 		"ljf": "0x4c6f7665204a616e6520466f7265766572"
/// 	}"#
/// 	)
/// 	.unwrap(),
/// 	LJF {
/// 		ljf: (*b"Love Jane Forever").to_vec()
/// 	}
/// );
/// ```
#[cfg(feature = "serde")]
pub fn de_hex2bytes<'de, D>(hex: D) -> Result<Bytes, D::Error>
where
	D: Deserializer<'de>,
{
	let hex = Hex::deserialize(hex)?;

	hex2bytes(&hex).map_err(|_| D::Error::custom(alloc::format!("Invalid hex str `{}`", hex)))
}

/// [`Bytes`] to [`Hex`]
///
/// # Examples
///
/// ```
/// use array_bytes::Hex;
///
/// assert_eq!(
/// 	array_bytes::bytes2hex("0x", b"Love Jane Forever"),
/// 	Hex::from("0x4c6f7665204a616e6520466f7265766572")
/// );
/// ```
pub fn bytes2hex(prefix: impl AsRef<str>, bytes: impl AsRef<[u8]>) -> Hex {
	let prefix = prefix.as_ref();
	let bytes = bytes.as_ref();
	let mut hex = Hex::with_capacity(prefix.len() + bytes.len() * 2);

	for byte in prefix.chars() {
		hex.push(byte);
	}
	for byte in bytes.iter() {
		hex.push(char::from_digit((byte >> 4) as _, 16).unwrap());
		hex.push(char::from_digit((byte & 0xf) as _, 16).unwrap());
	}

	hex
}

#[cfg(test)]
mod test {
	// --- array-bytes ---
	use crate::*;

	macro_rules! bytes {
		($v:expr; $n:expr) => {{
			let mut v = Bytes::new();

			for _ in 0..$n {
				v.push($v);
			}

			v
		}};
	}

	#[derive(Debug, PartialEq)]
	struct LJF([u8; 17]);
	impl From<[u8; 17]> for LJF {
		fn from(array: [u8; 17]) -> Self {
			Self(array)
		}
	}

	#[test]
	fn dyn2array_should_work() {
		for v in 0u8..16 {
			assert_eq!([v; 8], dyn2array!(bytes![v; 10], 8));
		}
	}

	#[test]
	fn dyn_into_should_work() {
		let ljf: LJF = dyn_into!(*b"Love Jane Forever Forever Forever", 17);

		assert_eq!(ljf, LJF(*b"Love Jane Forever"));

		let ljf: LJF = dyn_into!(b"Love Jane Forever Forever Forever".to_vec(), 17);

		assert_eq!(ljf, LJF(*b"Love Jane Forever"));
	}

	#[test]
	fn hex2bytes_should_work() {
		assert_eq!(
			hex2bytes("0x4c6f7665204a616e6520466f7265766572").unwrap(),
			*b"Love Jane Forever"
		);
		assert_eq!(
			hex2bytes("4c6f7665204a616e6520466f7265766572").unwrap(),
			*b"Love Jane Forever"
		);

		assert_eq!(
			hex2bytes(Hex::from("我爱你")).unwrap_err(),
			Error::InvalidLength { length: 9 }
		);
		assert_eq!(
			hex2bytes(Hex::from("0x我爱你")).unwrap_err(),
			Error::InvalidLength { length: 9 }
		);

		assert_eq!(
			hex2bytes(Hex::from("我爱你 ")).unwrap_err(),
			Error::InvalidCharBoundary { index: 1 }
		);
		assert_eq!(
			hex2bytes(Hex::from(" 我爱你")).unwrap_err(),
			Error::InvalidCharBoundary { index: 2 }
		);
	}

	#[test]
	fn hex2bytes_unchecked_should_work() {
		assert_eq!(
			hex2bytes_unchecked("0x4c6f7665204a616e6520466f7265766572"),
			*b"Love Jane Forever"
		);
		assert_eq!(
			hex2bytes_unchecked("4c6f7665204a616e6520466f7265766572"),
			*b"Love Jane Forever"
		);
	}

	#[test]
	fn hex2array_should_work() {
		assert_eq!(
			hex2array("0x4c6f7665204a616e6520466f7265766572").unwrap(),
			*b"Love Jane Forever"
		);
		assert_eq!(
			hex2array("4c6f7665204a616e6520466f7265766572").unwrap(),
			*b"Love Jane Forever"
		);
	}

	#[test]
	fn hex2array_unchecked_should_work() {
		assert_eq!(
			hex2array_unchecked("0x4c6f7665204a616e6520466f7265766572"),
			*b"Love Jane Forever"
		);
		assert_eq!(
			hex2array_unchecked("4c6f7665204a616e6520466f7265766572"),
			*b"Love Jane Forever"
		);
	}

	#[test]
	fn hex_try_into_should_work() {
		assert_eq!(
			hex_try_into::<_, LJF, 17>("0x4c6f7665204a616e6520466f7265766572").unwrap(),
			LJF(*b"Love Jane Forever")
		);
		assert_eq!(
			hex_try_into::<_, LJF, 17>("4c6f7665204a616e6520466f7265766572").unwrap(),
			LJF(*b"Love Jane Forever")
		);
	}

	#[test]
	fn hex_into_should_work() {
		assert_eq!(
			hex_into_unchecked::<_, LJF, 17>("0x4c6f7665204a616e6520466f7265766572"),
			LJF(*b"Love Jane Forever")
		);
		assert_eq!(
			hex_into_unchecked::<_, LJF, 17>("4c6f7665204a616e6520466f7265766572"),
			LJF(*b"Love Jane Forever")
		);
	}

	#[cfg(feature = "serde")]
	#[test]
	fn hex_deserialize_into_should_work() {
		#[derive(Debug, PartialEq, Deserialize)]
		struct WrappedLJF {
			#[serde(deserialize_with = "hex_deserialize_into")]
			ljf: LJF,
		}

		assert_eq!(
			serde_json::from_str::<WrappedLJF>(
				r#"{
				"ljf": "0x4c6f7665204a616e6520466f7265766572"
			}"#
			)
			.unwrap(),
			WrappedLJF {
				ljf: LJF(*b"Love Jane Forever")
			}
		);
		assert_eq!(
			serde_json::from_str::<WrappedLJF>(
				r#"{
				"ljf": "4c6f7665204a616e6520466f7265766572"
			}"#
			)
			.unwrap(),
			WrappedLJF {
				ljf: LJF(*b"Love Jane Forever")
			}
		);
	}

	#[cfg(feature = "serde")]
	#[test]
	fn de_hex2num_should_work() {
		macro_rules! assert_de_hex2num {
			($num_type:ty) => {{
				#[derive(Debug, PartialEq, Deserialize)]
				struct LJF {
					#[serde(deserialize_with = "de_hex2num")]
					_0: $num_type,
					#[serde(deserialize_with = "de_hex2num")]
					_1: $num_type,
					#[serde(deserialize_with = "de_hex2num")]
					_2: $num_type,
					#[serde(deserialize_with = "de_hex2num")]
					_3: u32,
				}

				assert_eq!(
					serde_json::from_str::<LJF>(
						r#"{
						"_0": "0x5",
						"_1": "0x2",
						"_2": "0x0",
						"_3": "0x522"
					}"#
					)
					.unwrap(),
					LJF {
						_0: 5,
						_1: 2,
						_2: 0,
						_3: 1314
					}
				);
				assert_eq!(
					serde_json::from_str::<LJF>(
						r#"{
						"_0": "5",
						"_1": "2",
						"_2": "0",
						"_3": "522"
					}"#
					)
					.unwrap(),
					LJF {
						_0: 5,
						_1: 2,
						_2: 0,
						_3: 1314
					}
				);
			}};
		}

		assert_de_hex2num!(isize);
		assert_de_hex2num!(i8);
		assert_de_hex2num!(i16);
		assert_de_hex2num!(i32);
		assert_de_hex2num!(i64);
		assert_de_hex2num!(i128);
		assert_de_hex2num!(usize);
		assert_de_hex2num!(u8);
		assert_de_hex2num!(u16);
		assert_de_hex2num!(u32);
		assert_de_hex2num!(u64);
		assert_de_hex2num!(u128);
	}

	#[cfg(feature = "serde")]
	#[test]
	fn de_hex2bytes_should_work() {
		#[derive(Debug, PartialEq, Deserialize)]
		struct LJF {
			#[serde(deserialize_with = "de_hex2bytes")]
			ljf: Bytes,
		}

		assert_eq!(
			serde_json::from_str::<LJF>(
				r#"{
				"ljf": "0x4c6f7665204a616e6520466f7265766572"
			}"#
			)
			.unwrap(),
			LJF {
				ljf: (*b"Love Jane Forever").to_vec()
			}
		);
		assert_eq!(
			serde_json::from_str::<LJF>(
				r#"{
				"ljf": "4c6f7665204a616e6520466f7265766572"
			}"#
			)
			.unwrap(),
			LJF {
				ljf: (*b"Love Jane Forever").to_vec()
			}
		);
	}

	#[test]
	fn bytes2hex_should_work() {
		assert_eq!(
			bytes2hex("0x", b"Love Jane Forever"),
			Hex::from("0x4c6f7665204a616e6520466f7265766572")
		);
		assert_eq!(
			bytes2hex("", b"Love Jane Forever"),
			Hex::from("4c6f7665204a616e6520466f7265766572")
		);
	}
}
