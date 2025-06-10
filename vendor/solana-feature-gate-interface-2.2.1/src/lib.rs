//! Runtime features.
//!
//! Runtime features provide a mechanism for features to be simultaneously activated across the
//! network. Since validators may choose when to upgrade, features must remain dormant until a
//! sufficient majority of the network is running a version that would support a given feature.
//!
//! Feature activation is accomplished by:
//! 1. Activation is requested by the feature authority, who issues a transaction to create the
//!    feature account. The newly created feature account will have the value of
//!    `Feature::default()`
//! 2. When the next epoch is entered the runtime will check for new activation requests and
//!    active them.  When this occurs, the activation slot is recorded in the feature account

pub use solana_sdk_ids::feature::{check_id, id, ID};
#[cfg(feature = "bincode")]
use {
    solana_account::{AccountSharedData, ReadableAccount, WritableAccount},
    solana_account_info::AccountInfo,
    solana_instruction::Instruction,
    solana_program_error::ProgramError,
    solana_pubkey::Pubkey,
    solana_rent::Rent,
    solana_system_interface::instruction as system_instruction,
};

#[cfg_attr(
    feature = "serde",
    derive(serde_derive::Deserialize, serde_derive::Serialize)
)]
#[derive(Default, Debug, PartialEq, Eq)]
pub struct Feature {
    pub activated_at: Option<u64>,
}

impl Feature {
    pub const fn size_of() -> usize {
        9 // see test_feature_size_of.
    }

    #[cfg(feature = "bincode")]
    pub fn from_account_info(account_info: &AccountInfo) -> Result<Self, ProgramError> {
        if *account_info.owner != id() {
            return Err(ProgramError::InvalidAccountOwner);
        }
        bincode::deserialize(&account_info.data.borrow())
            .map_err(|_| ProgramError::InvalidAccountData)
    }
}

#[cfg(feature = "bincode")]
/// Activate a feature
pub fn activate(feature_id: &Pubkey, funding_address: &Pubkey, rent: &Rent) -> Vec<Instruction> {
    activate_with_lamports(
        feature_id,
        funding_address,
        rent.minimum_balance(Feature::size_of()),
    )
}

#[cfg(feature = "bincode")]
pub fn activate_with_lamports(
    feature_id: &Pubkey,
    funding_address: &Pubkey,
    lamports: u64,
) -> Vec<Instruction> {
    vec![
        system_instruction::transfer(funding_address, feature_id, lamports),
        system_instruction::allocate(feature_id, Feature::size_of() as u64),
        system_instruction::assign(feature_id, &id()),
    ]
}

#[cfg(feature = "bincode")]
pub fn from_account<T: ReadableAccount>(account: &T) -> Option<Feature> {
    if account.owner() != &id() {
        None
    } else {
        bincode::deserialize(account.data()).ok()
    }
}

#[cfg(feature = "bincode")]
pub fn to_account(feature: &Feature, account: &mut AccountSharedData) -> Option<()> {
    bincode::serialize_into(account.data_as_mut_slice(), feature).ok()
}

#[cfg(feature = "bincode")]
pub fn create_account(feature: &Feature, lamports: u64) -> AccountSharedData {
    let data_len = Feature::size_of().max(bincode::serialized_size(feature).unwrap() as usize);
    let mut account = AccountSharedData::new(lamports, data_len, &id());
    to_account(feature, &mut account).unwrap();
    account
}

#[cfg(test)]
mod test {
    use super::*;

    #[test]
    fn test_feature_size_of() {
        assert_eq!(Feature::size_of() as u64, {
            let feature = Feature {
                activated_at: Some(0),
            };
            bincode::serialized_size(&feature).unwrap()
        });
        assert!(
            Feature::size_of() >= bincode::serialized_size(&Feature::default()).unwrap() as usize
        );
        assert_eq!(Feature::default(), Feature { activated_at: None });

        let features = [
            Feature {
                activated_at: Some(0),
            },
            Feature {
                activated_at: Some(u64::MAX),
            },
        ];
        for feature in &features {
            assert_eq!(
                Feature::size_of(),
                bincode::serialized_size(feature).unwrap() as usize
            );
        }
    }

    #[test]
    fn feature_deserialize_none() {
        let just_initialized = AccountSharedData::new(42, Feature::size_of(), &id());
        assert_eq!(
            from_account(&just_initialized),
            Some(Feature { activated_at: None })
        );
    }
}
