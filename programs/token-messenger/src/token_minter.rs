pub mod events;
pub mod instructions;
pub mod state;

// bring everything in scope
pub use {
    events::*, instructions::*, state::*
};