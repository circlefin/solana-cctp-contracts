; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

@event_q = internal constant [7 x i8] c"event_q"
@req_q = internal constant [5 x i8] c"req_q"
@asks = internal constant [4 x i8] c"asks"
@bids = internal constant [4 x i8] c"bids"
@pc_mint = internal constant [7 x i8] c"pc_mint"
@coin_mint = internal constant [9 x i8] c"coin_mint"
@sweep_receiver = internal constant [14 x i8] c"sweep_receiver"
@sweep_authority = internal constant [15 x i8] c"sweep_authority"
@vault_signer = internal constant [12 x i8] c"vault_signer"
@pc_wallet = internal constant [9 x i8] c"pc_wallet"
@coin_wallet = internal constant [11 x i8] c"coin_wallet"
@pc_vault = internal constant [8 x i8] c"pc_vault"
@coin_vault = internal constant [10 x i8] c"coin_vault"
@open_orders_authority = internal constant [21 x i8] c"open_orders_authority"
@order_payer_token_account = internal constant [25 x i8] c"order_payer_token_account"
@market_asks = internal constant [11 x i8] c"market_asks"
@market_bids = internal constant [11 x i8] c"market_bids"
@event_queue = internal constant [11 x i8] c"event_queue"
@request_queue = internal constant [13 x i8] c"request_queue"
@open_orders = internal constant [11 x i8] c"open_orders"
@market = internal constant [6 x i8] c"market"
@ctx.accounts.event_q.key = internal constant [24 x i8] c"ctx.accounts.event_q.key"
@ctx.accounts.req_q.key = internal constant [22 x i8] c"ctx.accounts.req_q.key"
@ctx.accounts.asks.key = internal constant [21 x i8] c"ctx.accounts.asks.key"
@ctx.accounts.bids.key = internal constant [21 x i8] c"ctx.accounts.bids.key"
@ctx.accounts.pc_mint.key = internal constant [24 x i8] c"ctx.accounts.pc_mint.key"
@ctx.accounts.coin_mint.key = internal constant [26 x i8] c"ctx.accounts.coin_mint.key"
@prune_authority = internal constant [15 x i8] c"prune_authority"
@"1" = internal constant [1 x i8] c"1"
@pc_dust_threshold = internal constant [17 x i8] c"pc_dust_threshold"
@vault_signer_nonce = internal constant [18 x i8] c"vault_signer_nonce"
@pc_lot_size = internal constant [11 x i8] c"pc_lot_size"
@coin_lot_size = internal constant [13 x i8] c"coin_lot_size"
@"CpiContext<'_,'_,'_,'info,InitializeMarket<'info>>" = internal constant [50 x i8] c"CpiContext<'_,'_,'_,'info,InitializeMarket<'info>>"
@ctx.accounts.sweep_receiver.key = internal constant [31 x i8] c"ctx.accounts.sweep_receiver.key"
@ctx.accounts.sweep_authority.key = internal constant [32 x i8] c"ctx.accounts.sweep_authority.key"
@"CpiContext<'_,'_,'_,'info,SweepFees<'info>>" = internal constant [43 x i8] c"CpiContext<'_,'_,'_,'info,SweepFees<'info>>"
@"CpiContext<'_,'_,'_,'info,CloseOpenOrders<'info>>" = internal constant [49 x i8] c"CpiContext<'_,'_,'_,'info,CloseOpenOrders<'info>>"
@acc.key = internal constant [7 x i8] c"acc.key"
@"CpiContext<'_,'_,'_,'info,InitOpenOrders<'info>>" = internal constant [48 x i8] c"CpiContext<'_,'_,'_,'info,InitOpenOrders<'info>>"
@ctx.accounts.vault_signer.key = internal constant [29 x i8] c"ctx.accounts.vault_signer.key"
@ctx.accounts.pc_wallet.key = internal constant [26 x i8] c"ctx.accounts.pc_wallet.key"
@ctx.accounts.coin_wallet.key = internal constant [28 x i8] c"ctx.accounts.coin_wallet.key"
@"CpiContext<'_,'_,'_,'info,SettleFunds<'info>>" = internal constant [45 x i8] c"CpiContext<'_,'_,'_,'info,SettleFunds<'info>>"
@u128 = internal constant [4 x i8] c"u128"
@order_id = internal constant [8 x i8] c"order_id"
@"CpiContext<'_,'_,'_,'info,CancelOrderV2<'info>>" = internal constant [47 x i8] c"CpiContext<'_,'_,'_,'info,CancelOrderV2<'info>>"
@pe = internal constant [2 x i8] c"pe"
@r.key = internal constant [5 x i8] c"r.key"
@ctx.accounts.rent.key = internal constant [21 x i8] c"ctx.accounts.rent.key"
@ctx.accounts.pc_vault.key = internal constant [25 x i8] c"ctx.accounts.pc_vault.key"
@ctx.accounts.coin_vault.key = internal constant [27 x i8] c"ctx.accounts.coin_vault.key"
@ctx.accounts.open_orders_authority.key = internal constant [38 x i8] c"ctx.accounts.open_orders_authority.key"
@ctx.accounts.order_payer_token_account.key = internal constant [42 x i8] c"ctx.accounts.order_payer_token_account.key"
@ctx.accounts.market_asks.key = internal constant [28 x i8] c"ctx.accounts.market_asks.key"
@ctx.accounts.market_bids.key = internal constant [28 x i8] c"ctx.accounts.market_bids.key"
@ctx.accounts.event_queue.key = internal constant [28 x i8] c"ctx.accounts.event_queue.key"
@ctx.accounts.request_queue.key = internal constant [30 x i8] c"ctx.accounts.request_queue.key"
@ctx.accounts.open_orders.key = internal constant [28 x i8] c"ctx.accounts.open_orders.key"
@ctx.accounts.market.key = internal constant [23 x i8] c"ctx.accounts.market.key"
@referral = internal constant [8 x i8] c"referral"
@"0" = internal constant [1 x i8] c"0"
@ctx.remaining_accounts = internal constant [22 x i8] c"ctx.remaining_accounts"
@u16 = internal constant [3 x i8] c"u16"
@limit = internal constant [5 x i8] c"limit"
@client_order_id = internal constant [15 x i8] c"client_order_id"
@OrderType = internal constant [9 x i8] c"OrderType"
@order_type = internal constant [10 x i8] c"order_type"
@SelfTradeBehavior = internal constant [17 x i8] c"SelfTradeBehavior"
@self_trade_behavior = internal constant [19 x i8] c"self_trade_behavior"
@max_native_pc_qty_including_fees = internal constant [32 x i8] c"max_native_pc_qty_including_fees"
@max_coin_qty = internal constant [12 x i8] c"max_coin_qty"
@NonZeroU64 = internal constant [10 x i8] c"NonZeroU64"
@limit_price = internal constant [11 x i8] c"limit_price"
@Side = internal constant [4 x i8] c"Side"
@side = internal constant [4 x i8] c"side"
@"CpiContext<'_,'_,'_,'info,NewOrderV3<'info>>" = internal constant [44 x i8] c"CpiContext<'_,'_,'_,'info,NewOrderV3<'info>>"
@IDS = internal constant [3 x i8] c"IDS"
@t.base = internal constant [6 x i8] c"t.base"
@"&str" = internal constant [4 x i8] c"&str"
@ui_amount = internal constant [9 x i8] c"ui_amount"
@"CpiContext<'_,'_,'_,'info,UiAmountToAmount<'info>>" = internal constant [50 x i8] c"CpiContext<'_,'_,'_,'info,UiAmountToAmount<'info>>"
@"CpiContext<'_,'_,'_,'info,AmountToUiAmount<'info>>" = internal constant [50 x i8] c"CpiContext<'_,'_,'_,'info,AmountToUiAmount<'info>>"
@"CpiContext<'_,'_,'_,'info,InitializeImmutableOwner<'info>>" = internal constant [58 x i8] c"CpiContext<'_,'_,'_,'info,InitializeImmutableOwner<'info>>"
@close_authority = internal constant [15 x i8] c"close_authority"
@"CpiContext<'_,'_,'_,'info,InitializeMintCloseAuthority<'info>>" = internal constant [62 x i8] c"CpiContext<'_,'_,'_,'info,InitializeMintCloseAuthority<'info>>"
@"&[spl_token_2022::extension::ExtensionType]" = internal constant [43 x i8] c"&[spl_token_2022::extension::ExtensionType]"
@extension_types = internal constant [15 x i8] c"extension_types"
@"CpiContext<'_,'_,'_,'info,GetAccountDataSize<'info>>" = internal constant [52 x i8] c"CpiContext<'_,'_,'_,'info,GetAccountDataSize<'info>>"
@key = internal constant [3 x i8] c"key"
@"u64::from_le_bytes" = internal constant [18 x i8] c"u64::from_le_bytes"
@"solana_program::program_error::ProgramError::InvalidInstructionData" = internal constant [67 x i8] c"solana_program::program_error::ProgramError::InvalidInstructionData"
@"solana_program::program_error::ProgramError::IncorrectProgramId" = internal constant [63 x i8] c"solana_program::program_error::ProgramError::IncorrectProgramId"
@"spl_token_2022::instruction::AuthorityType" = internal constant [42 x i8] c"spl_token_2022::instruction::AuthorityType"
@associated_token = internal constant [16 x i8] c"associated_token"
@"CpiContext<'_,'_,'_,'info,CreateIdempotent<'info>>" = internal constant [50 x i8] c"CpiContext<'_,'_,'_,'info,CreateIdempotent<'info>>"
@"[ctx.accounts.payer,ctx.accounts.associated_token,ctx.accounts.authority,ctx.accounts.mint,ctx.accounts.system_program,ctx.accounts.token_program,]" = internal constant [147 x i8] c"[ctx.accounts.payer,ctx.accounts.associated_token,ctx.accounts.authority,ctx.accounts.mint,ctx.accounts.system_program,ctx.accounts.token_program,]"
@ctx.accounts.token_program.key = internal constant [30 x i8] c"ctx.accounts.token_program.key"
@"CpiContext<'_,'_,'_,'info,Create<'info>>" = internal constant [40 x i8] c"CpiContext<'_,'_,'_,'info,Create<'info>>"
@Self = internal constant [4 x i8] c"Self"
@staker = internal constant [6 x i8] c"staker"
@stake_history = internal constant [13 x i8] c"stake_history"
@withdrawer = internal constant [10 x i8] c"withdrawer"
@clock = internal constant [5 x i8] c"clock"
@new_authorized = internal constant [14 x i8] c"new_authorized"
@authorized = internal constant [10 x i8] c"authorized"
@stake = internal constant [5 x i8] c"stake"
@"[ctx.accounts.stake,ctx.accounts.clock,ctx.accounts.staker]" = internal constant [59 x i8] c"[ctx.accounts.stake,ctx.accounts.clock,ctx.accounts.staker]"
@ctx.accounts.staker.key = internal constant [23 x i8] c"ctx.accounts.staker.key"
@"CpiContext<'_,'_,'_,'info,DeactivateStake<'info>>" = internal constant [49 x i8] c"CpiContext<'_,'_,'_,'info,DeactivateStake<'info>>"
@"[ctx.accounts.stake,ctx.accounts.to,ctx.accounts.clock,ctx.accounts.stake_history,ctx.accounts.withdrawer,]" = internal constant [107 x i8] c"[ctx.accounts.stake,ctx.accounts.to,ctx.accounts.clock,ctx.accounts.stake_history,ctx.accounts.withdrawer,]"
@ctx.accounts.withdrawer.key = internal constant [27 x i8] c"ctx.accounts.withdrawer.key"
@"CpiContext<'_,'_,'_,'info,Withdraw<'info>>" = internal constant [42 x i8] c"CpiContext<'_,'_,'_,'info,Withdraw<'info>>"
@"[ctx.accounts.stake,ctx.accounts.clock,ctx.accounts.authorized,]" = internal constant [64 x i8] c"[ctx.accounts.stake,ctx.accounts.clock,ctx.accounts.authorized,]"
@c.key = internal constant [5 x i8] c"c.key"
@ctx.accounts.new_authorized.key = internal constant [31 x i8] c"ctx.accounts.new_authorized.key"
@ctx.accounts.authorized.key = internal constant [27 x i8] c"ctx.accounts.authorized.key"
@ctx.accounts.stake.key = internal constant [22 x i8] c"ctx.accounts.stake.key"
@"Option<AccountInfo<'info>>" = internal constant [26 x i8] c"Option<AccountInfo<'info>>"
@custodian = internal constant [9 x i8] c"custodian"
@StakeAuthorize = internal constant [14 x i8] c"StakeAuthorize"
@stake_authorize = internal constant [15 x i8] c"stake_authorize"
@"CpiContext<'_,'_,'_,'info,Authorize<'info>>" = internal constant [43 x i8] c"CpiContext<'_,'_,'_,'info,Authorize<'info>>"
@c = internal constant [1 x i8] c"c"
@account_infos = internal constant [13 x i8] c"account_infos"
@shmem_program = internal constant [13 x i8] c"shmem_program"
@"constraint=shmem_program.key==&ID" = internal constant [33 x i8] c"constraint=shmem_program.key==&ID"
@shmem = internal constant [5 x i8] c"shmem"
@"mut,constraint=shmem.owner==shmem_program.key" = internal constant [45 x i8] c"mut,constraint=shmem.owner==shmem_program.key"
@buffer = internal constant [6 x i8] c"buffer"
@mut = internal constant [3 x i8] c"mut"
@ctx.program = internal constant [11 x i8] c"ctx.program"
@"[ctx.accounts.buffer]" = internal constant [21 x i8] c"[ctx.accounts.buffer]"
@instruction = internal constant [11 x i8] c"instruction"
@accounts = internal constant [8 x i8] c"accounts"
@"[AccountMeta::new(*ctx.accounts.buffer.key,false)]" = internal constant [50 x i8] c"[AccountMeta::new(*ctx.accounts.buffer.key,false)]"
@program_id = internal constant [10 x i8] c"program_id"
@ctx.program.key = internal constant [15 x i8] c"ctx.program.key"
@"Vec<u8>" = internal constant [7 x i8] c"Vec<u8>"
@"CpiContext<'a,'b,'c,'info,Ret<'info>>" = internal constant [37 x i8] c"CpiContext<'a,'b,'c,'info,Ret<'info>>"
@owner_bytes = internal constant [11 x i8] c"owner_bytes"
@mint_bytes = internal constant [10 x i8] c"mint_bytes"
@"[0u8;32]" = internal constant [8 x i8] c"[0u8;32]"
@amount_bytes = internal constant [12 x i8] c"amount_bytes"
@"[0u8;8]" = internal constant [7 x i8] c"[0u8;8]"
@bytes = internal constant [5 x i8] c"bytes"
@"&AccountInfo" = internal constant [12 x i8] c"&AccountInfo"
@Mint = internal constant [4 x i8] c"Mint"
@TokenAccount = internal constant [12 x i8] c"TokenAccount"
@account_or_mint = internal constant [15 x i8] c"account_or_mint"
@current_authority = internal constant [17 x i8] c"current_authority"
@destination = internal constant [11 x i8] c"destination"
@account = internal constant [7 x i8] c"account"
@source = internal constant [6 x i8] c"source"
@to = internal constant [2 x i8] c"to"
@from = internal constant [4 x i8] c"from"
@"[ctx.accounts.account.clone()]" = internal constant [30 x i8] c"[ctx.accounts.account.clone()]"
@"CpiContext<'_,'_,'_,'info,SyncNative<'info>>" = internal constant [44 x i8] c"CpiContext<'_,'_,'_,'info,SyncNative<'info>>"
@"[ctx.accounts.account_or_mint.clone(),ctx.accounts.current_authority.clone(),]" = internal constant [78 x i8] c"[ctx.accounts.account_or_mint.clone(),ctx.accounts.current_authority.clone(),]"
@ctx.accounts.current_authority.key = internal constant [34 x i8] c"ctx.accounts.current_authority.key"
@ctx.accounts.account_or_mint.key = internal constant [32 x i8] c"ctx.accounts.account_or_mint.key"
@None = internal constant [4 x i8] c"None"
@"spl_token::instruction::AuthorityType" = internal constant [37 x i8] c"spl_token::instruction::AuthorityType"
@authority_type = internal constant [14 x i8] c"authority_type"
@"CpiContext<'_,'_,'_,'info,SetAuthority<'info>>" = internal constant [46 x i8] c"CpiContext<'_,'_,'_,'info,SetAuthority<'info>>"
@spl_new_authority = internal constant [17 x i8] c"spl_new_authority"
@new_authority = internal constant [13 x i8] c"new_authority"
@"[ctx.accounts.mint.clone()]" = internal constant [27 x i8] c"[ctx.accounts.mint.clone()]"
@"CpiContext<'_,'_,'_,'info,InitializeMint2<'info>>" = internal constant [49 x i8] c"CpiContext<'_,'_,'_,'info,InitializeMint2<'info>>"
@"[ctx.accounts.mint.clone(),ctx.accounts.rent.clone()]" = internal constant [53 x i8] c"[ctx.accounts.mint.clone(),ctx.accounts.rent.clone()]"
@"Option<&Pubkey>" = internal constant [15 x i8] c"Option<&Pubkey>"
@freeze_authority = internal constant [16 x i8] c"freeze_authority"
@"&Pubkey" = internal constant [7 x i8] c"&Pubkey"
@authority = internal constant [9 x i8] c"authority"
@"CpiContext<'_,'_,'_,'info,InitializeMint<'info>>" = internal constant [48 x i8] c"CpiContext<'_,'_,'_,'info,InitializeMint<'info>>"
@"CpiContext<'_,'_,'_,'info,ThawAccount<'info>>" = internal constant [45 x i8] c"CpiContext<'_,'_,'_,'info,ThawAccount<'info>>"
@"[ctx.accounts.account.clone(),ctx.accounts.mint.clone(),ctx.accounts.authority.clone(),]" = internal constant [88 x i8] c"[ctx.accounts.account.clone(),ctx.accounts.mint.clone(),ctx.accounts.authority.clone(),]"
@"CpiContext<'_,'_,'_,'info,FreezeAccount<'info>>" = internal constant [47 x i8] c"CpiContext<'_,'_,'_,'info,FreezeAccount<'info>>"
@"[ctx.accounts.account.clone(),ctx.accounts.destination.clone(),ctx.accounts.authority.clone(),]" = internal constant [95 x i8] c"[ctx.accounts.account.clone(),ctx.accounts.destination.clone(),ctx.accounts.authority.clone(),]"
@ctx.accounts.destination.key = internal constant [28 x i8] c"ctx.accounts.destination.key"
@"CpiContext<'_,'_,'_,'info,CloseAccount<'info>>" = internal constant [46 x i8] c"CpiContext<'_,'_,'_,'info,CloseAccount<'info>>"
@"[ctx.accounts.account.clone(),ctx.accounts.mint.clone()]" = internal constant [56 x i8] c"[ctx.accounts.account.clone(),ctx.accounts.mint.clone()]"
@"CpiContext<'_,'_,'_,'info,InitializeAccount3<'info>>" = internal constant [52 x i8] c"CpiContext<'_,'_,'_,'info,InitializeAccount3<'info>>"
@"[ctx.accounts.account.clone(),ctx.accounts.mint.clone(),ctx.accounts.authority.clone(),ctx.accounts.rent.clone(),]" = internal constant [114 x i8] c"[ctx.accounts.account.clone(),ctx.accounts.mint.clone(),ctx.accounts.authority.clone(),ctx.accounts.rent.clone(),]"
@ctx.accounts.account.key = internal constant [24 x i8] c"ctx.accounts.account.key"
@"CpiContext<'_,'_,'_,'info,InitializeAccount<'info>>" = internal constant [51 x i8] c"CpiContext<'_,'_,'_,'info,InitializeAccount<'info>>"
@"[ctx.accounts.source.clone(),ctx.accounts.authority.clone()]" = internal constant [60 x i8] c"[ctx.accounts.source.clone(),ctx.accounts.authority.clone()]"
@ctx.accounts.source.key = internal constant [23 x i8] c"ctx.accounts.source.key"
@"CpiContext<'_,'_,'_,'info,Revoke<'info>>" = internal constant [40 x i8] c"CpiContext<'_,'_,'_,'info,Revoke<'info>>"
@"[ctx.accounts.to.clone(),ctx.accounts.mint.clone(),ctx.accounts.delegate.clone(),ctx.accounts.authority.clone(),]" = internal constant [113 x i8] c"[ctx.accounts.to.clone(),ctx.accounts.mint.clone(),ctx.accounts.delegate.clone(),ctx.accounts.authority.clone(),]"
@"CpiContext<'_,'_,'_,'info,ApproveChecked<'info>>" = internal constant [48 x i8] c"CpiContext<'_,'_,'_,'info,ApproveChecked<'info>>"
@"[ctx.accounts.to.clone(),ctx.accounts.delegate.clone(),ctx.accounts.authority.clone(),]" = internal constant [87 x i8] c"[ctx.accounts.to.clone(),ctx.accounts.delegate.clone(),ctx.accounts.authority.clone(),]"
@"CpiContext<'_,'_,'_,'info,Approve<'info>>" = internal constant [41 x i8] c"CpiContext<'_,'_,'_,'info,Approve<'info>>"
@"[ctx.accounts.from.clone(),ctx.accounts.mint.clone(),ctx.accounts.authority.clone(),]" = internal constant [85 x i8] c"[ctx.accounts.from.clone(),ctx.accounts.mint.clone(),ctx.accounts.authority.clone(),]"
@"CpiContext<'_,'_,'_,'info,Burn<'info>>" = internal constant [38 x i8] c"CpiContext<'_,'_,'_,'info,Burn<'info>>"
@"[ctx.accounts.to.clone(),ctx.accounts.mint.clone(),ctx.accounts.authority.clone(),]" = internal constant [83 x i8] c"[ctx.accounts.to.clone(),ctx.accounts.mint.clone(),ctx.accounts.authority.clone(),]"
@"CpiContext<'_,'_,'_,'info,MintTo<'info>>" = internal constant [40 x i8] c"CpiContext<'_,'_,'_,'info,MintTo<'info>>"
@"[ctx.accounts.from.clone(),ctx.accounts.mint.clone(),ctx.accounts.to.clone(),ctx.accounts.authority.clone(),]" = internal constant [109 x i8] c"[ctx.accounts.from.clone(),ctx.accounts.mint.clone(),ctx.accounts.to.clone(),ctx.accounts.authority.clone(),]"
@u8 = internal constant [2 x i8] c"u8"
@decimals = internal constant [8 x i8] c"decimals"
@"CpiContext<'_,'_,'_,'info,TransferChecked<'info>>" = internal constant [49 x i8] c"CpiContext<'_,'_,'_,'info,TransferChecked<'info>>"
@"[ctx.accounts.from.clone(),ctx.accounts.to.clone(),ctx.accounts.authority.clone(),]" = internal constant [83 x i8] c"[ctx.accounts.from.clone(),ctx.accounts.to.clone(),ctx.accounts.authority.clone(),]"
@"[]" = internal constant [2 x i8] c"[]"
@ctx.accounts.authority.key = internal constant [26 x i8] c"ctx.accounts.authority.key"
@ctx.accounts.to.key = internal constant [19 x i8] c"ctx.accounts.to.key"
@ctx.accounts.from.key = internal constant [21 x i8] c"ctx.accounts.from.key"
@"spl_token::ID" = internal constant [13 x i8] c"spl_token::ID"
@amount = internal constant [6 x i8] c"amount"
@"CpiContext<'_,'_,'_,'info,Transfer<'info>>" = internal constant [42 x i8] c"CpiContext<'_,'_,'_,'info,Transfer<'info>>"
@result = internal constant [6 x i8] c"result"
@me.key = internal constant [6 x i8] c"me.key"
@me = internal constant [2 x i8] c"me"
@self = internal constant [4 x i8] c"self"
@"&self" = internal constant [5 x i8] c"&self"
@md.key = internal constant [6 x i8] c"md.key"
@md = internal constant [2 x i8] c"md"
@"&mut&[u8]" = internal constant [9 x i8] c"&mut&[u8]"
@buf = internal constant [3 x i8] c"buf"
@"ErrorCode::AccountNotInitialized" = internal constant [32 x i8] c"ErrorCode::AccountNotInitialized"
@collection_master_edition_account = internal constant [33 x i8] c"collection_master_edition_account"
@use_authority = internal constant [13 x i8] c"use_authority"
@creator = internal constant [7 x i8] c"creator"
@delegate = internal constant [8 x i8] c"delegate"
@collection_master_edition = internal constant [25 x i8] c"collection_master_edition"
@collection_mint = internal constant [15 x i8] c"collection_mint"
@collection_authority = internal constant [20 x i8] c"collection_authority"
@mint_account = internal constant [12 x i8] c"mint_account"
@revoke_authority = internal constant [16 x i8] c"revoke_authority"
@delegate_authority = internal constant [18 x i8] c"delegate_authority"
@new_metadata_update_authority = internal constant [29 x i8] c"new_metadata_update_authority"
@token_account = internal constant [13 x i8] c"token_account"
@token_account_owner = internal constant [19 x i8] c"token_account_owner"
@new_mint_authority = internal constant [18 x i8] c"new_mint_authority"
@edition_mark_pda = internal constant [16 x i8] c"edition_mark_pda"
@new_mint = internal constant [8 x i8] c"new_mint"
@new_edition = internal constant [11 x i8] c"new_edition"
@new_metadata = internal constant [12 x i8] c"new_metadata"
@token_program = internal constant [13 x i8] c"token_program"
@rent = internal constant [4 x i8] c"rent"
@system_program = internal constant [14 x i8] c"system_program"
@mint_authority = internal constant [14 x i8] c"mint_authority"
@token = internal constant [5 x i8] c"token"
@spl_token = internal constant [9 x i8] c"spl_token"
@edition_marker = internal constant [14 x i8] c"edition_marker"
@print_edition = internal constant [13 x i8] c"print_edition"
@master_edition = internal constant [14 x i8] c"master_edition"
@master_edition_token = internal constant [20 x i8] c"master_edition_token"
@print_edition_token = internal constant [19 x i8] c"print_edition_token"
@master_edition_mint = internal constant [19 x i8] c"master_edition_mint"
@print_edition_mint = internal constant [18 x i8] c"print_edition_mint"
@owner = internal constant [5 x i8] c"owner"
@bubblegum_signer = internal constant [16 x i8] c"bubblegum_signer"
@metadata_account = internal constant [16 x i8] c"metadata_account"
@mint = internal constant [4 x i8] c"mint"
@metadata = internal constant [8 x i8] c"metadata"
@payer = internal constant [5 x i8] c"payer"
@update_authority = internal constant [16 x i8] c"update_authority"
@new_collection_authority = internal constant [24 x i8] c"new_collection_authority"
@"AccountInfo<'info>" = internal constant [18 x i8] c"AccountInfo<'info>"
@"*i8" = internal constant [3 x i8] c"*i8"
@parser.error = internal constant [12 x i8] c"parser.error"
@"CpiContext<'_,'_,'_,'info,UnverifySizedCollectionItem<'info>>" = internal constant [61 x i8] c"CpiContext<'_,'_,'_,'info,UnverifySizedCollectionItem<'info>>"
@ctx.accounts.collection_master_edition_account.key = internal constant [50 x i8] c"ctx.accounts.collection_master_edition_account.key"
@ctx.accounts.collection.key = internal constant [27 x i8] c"ctx.accounts.collection.key"
@"CpiContext<'_,'_,'_,'info,UnverifyCollection<'info>>" = internal constant [52 x i8] c"CpiContext<'_,'_,'_,'info,UnverifyCollection<'info>>"
@ctx.accounts.use_authority.key = internal constant [30 x i8] c"ctx.accounts.use_authority.key"
@number_of_uses = internal constant [14 x i8] c"number_of_uses"
@burner = internal constant [6 x i8] c"burner"
@use_authority_record_pda = internal constant [24 x i8] c"use_authority_record_pda"
@"CpiContext<'_,'_,'_,'info,Utilize<'info>>" = internal constant [41 x i8] c"CpiContext<'_,'_,'_,'info,Utilize<'info>>"
@"CpiContext<'_,'_,'_,'info,RemoveCreatorVerification<'info>>" = internal constant [59 x i8] c"CpiContext<'_,'_,'_,'info,RemoveCreatorVerification<'info>>"
@ctx.accounts.creator.key = internal constant [24 x i8] c"ctx.accounts.creator.key"
@"CpiContext<'_,'_,'_,'info,SignMetadata<'info>>" = internal constant [46 x i8] c"CpiContext<'_,'_,'_,'info,SignMetadata<'info>>"
@ctx.accounts.mint_account.key = internal constant [29 x i8] c"ctx.accounts.mint_account.key"
@edition_account = internal constant [15 x i8] c"edition_account"
@"CpiContext<'_,'_,'_,'info,SetTokenStandard<'info>>" = internal constant [50 x i8] c"CpiContext<'_,'_,'_,'info,SetTokenStandard<'info>>"
@"()" = internal constant [2 x i8] c"()"
@"CpiContext<'_,'_,'_,'info,UpdatePrimarySaleHappenedViaToken<'info>>" = internal constant [67 x i8] c"CpiContext<'_,'_,'_,'info,UpdatePrimarySaleHappenedViaToken<'info>>"
@"CpiContext<'_,'_,'_,'info,ThawDelegatedAccount<'info>>" = internal constant [54 x i8] c"CpiContext<'_,'_,'_,'info,ThawDelegatedAccount<'info>>"
@ctx.accounts.delegate.key = internal constant [25 x i8] c"ctx.accounts.delegate.key"
@"CpiContext<'_,'_,'_,'info,FreezeDelegatedAccount<'info>>" = internal constant [56 x i8] c"CpiContext<'_,'_,'_,'info,FreezeDelegatedAccount<'info>>"
@"CpiContext<'_,'_,'_,'info,SetAndVerifySizedCollectionItem<'info>>" = internal constant [65 x i8] c"CpiContext<'_,'_,'_,'info,SetAndVerifySizedCollectionItem<'info>>"
@"CpiContext<'_,'_,'_,'info,SetAndVerifyCollection<'info>>" = internal constant [56 x i8] c"CpiContext<'_,'_,'_,'info,SetAndVerifyCollection<'info>>"
@"CpiContext<'_,'_,'_,'info,VerifySizedCollectionItem<'info>>" = internal constant [59 x i8] c"CpiContext<'_,'_,'_,'info,VerifySizedCollectionItem<'info>>"
@ctx.accounts.collection_master_edition.key = internal constant [42 x i8] c"ctx.accounts.collection_master_edition.key"
@ctx.accounts.collection_metadata.key = internal constant [36 x i8] c"ctx.accounts.collection_metadata.key"
@ctx.accounts.collection_mint.key = internal constant [32 x i8] c"ctx.accounts.collection_mint.key"
@ctx.accounts.collection_authority.key = internal constant [37 x i8] c"ctx.accounts.collection_authority.key"
@"CpiContext<'_,'_,'_,'info,VerifyCollection<'info>>" = internal constant [50 x i8] c"CpiContext<'_,'_,'_,'info,VerifyCollection<'info>>"
@"CpiContext<'_,'_,'_,'info,SetCollectionSize<'info>>" = internal constant [51 x i8] c"CpiContext<'_,'_,'_,'info,SetCollectionSize<'info>>"
@ctx.accounts.revoke_authority.key = internal constant [33 x i8] c"ctx.accounts.revoke_authority.key"
@ctx.accounts.delegate_authority.key = internal constant [35 x i8] c"ctx.accounts.delegate_authority.key"
@"CpiContext<'_,'_,'_,'info,RevokeCollectionAuthority<'info>>" = internal constant [59 x i8] c"CpiContext<'_,'_,'_,'info,RevokeCollectionAuthority<'info>>"
@ctx.accounts.metadata_mint.key = internal constant [30 x i8] c"ctx.accounts.metadata_mint.key"
@ctx.accounts.new_metadata_update_authority.key = internal constant [46 x i8] c"ctx.accounts.new_metadata_update_authority.key"
@ctx.accounts.token_account.key = internal constant [30 x i8] c"ctx.accounts.token_account.key"
@ctx.accounts.token_account_owner.key = internal constant [36 x i8] c"ctx.accounts.token_account_owner.key"
@ctx.accounts.new_mint_authority.key = internal constant [35 x i8] c"ctx.accounts.new_mint_authority.key"
@ctx.accounts.new_mint.key = internal constant [25 x i8] c"ctx.accounts.new_mint.key"
@ctx.accounts.new_edition.key = internal constant [28 x i8] c"ctx.accounts.new_edition.key"
@ctx.accounts.new_metadata.key = internal constant [29 x i8] c"ctx.accounts.new_metadata.key"
@edition = internal constant [7 x i8] c"edition"
@"CpiContext<'_,'_,'_,'info,MintNewEditionFromMasterEditionViaToken<'info>>" = internal constant [73 x i8] c"CpiContext<'_,'_,'_,'info,MintNewEditionFromMasterEditionViaToken<'info>>"
@"Option<u64>" = internal constant [11 x i8] c"Option<u64>"
@max_supply = internal constant [10 x i8] c"max_supply"
@"CpiContext<'_,'_,'_,'info,CreateMasterEditionV3<'info>>" = internal constant [55 x i8] c"CpiContext<'_,'_,'_,'info,CreateMasterEditionV3<'info>>"
@"Option<bool>" = internal constant [12 x i8] c"Option<bool>"
@primary_sale_happened = internal constant [21 x i8] c"primary_sale_happened"
@"Option<DataV2>" = internal constant [14 x i8] c"Option<DataV2>"
@new_update_authority = internal constant [20 x i8] c"new_update_authority"
@"CpiContext<'_,'_,'_,'info,UpdateMetadataAccountsV2<'info>>" = internal constant [58 x i8] c"CpiContext<'_,'_,'_,'info,UpdateMetadataAccountsV2<'info>>"
@uses = internal constant [4 x i8] c"uses"
@collection = internal constant [10 x i8] c"collection"
@seller_fee_basis_points = internal constant [23 x i8] c"seller_fee_basis_points"
@creators = internal constant [8 x i8] c"creators"
@uri = internal constant [3 x i8] c"uri"
@symbol = internal constant [6 x i8] c"symbol"
@name = internal constant [4 x i8] c"name"
@ctx.accounts.mint_authority.key = internal constant [31 x i8] c"ctx.accounts.mint_authority.key"
@"DataV2{name,symbol,uri,creators,seller_fee_basis_points,collection,uses,}" = internal constant [73 x i8] c"DataV2{name,symbol,uri,creators,seller_fee_basis_points,collection,uses,}"
@"Option<CollectionDetails>" = internal constant [25 x i8] c"Option<CollectionDetails>"
@details = internal constant [7 x i8] c"details"
@update_authority_is_signer = internal constant [26 x i8] c"update_authority_is_signer"
@bool = internal constant [4 x i8] c"bool"
@is_mutable = internal constant [10 x i8] c"is_mutable"
@DataV2 = internal constant [6 x i8] c"DataV2"
@data = internal constant [4 x i8] c"data"
@"CpiContext<'_,'_,'_,'info,CreateMetadataAccountsV3<'info>>" = internal constant [58 x i8] c"CpiContext<'_,'_,'_,'info,CreateMetadataAccountsV3<'info>>"
@ctx.accounts.edition.key = internal constant [24 x i8] c"ctx.accounts.edition.key"
@ctx.accounts.token.key = internal constant [22 x i8] c"ctx.accounts.token.key"
@collection_metadata = internal constant [19 x i8] c"collection_metadata"
@"CpiContext<'_,'_,'_,'info,BurnNft<'info>>" = internal constant [41 x i8] c"CpiContext<'_,'_,'_,'info,BurnNft<'info>>"
@ctx.accounts.spl_token.key = internal constant [26 x i8] c"ctx.accounts.spl_token.key"
@ctx.accounts.edition_marker.key = internal constant [31 x i8] c"ctx.accounts.edition_marker.key"
@ctx.accounts.print_edition.key = internal constant [30 x i8] c"ctx.accounts.print_edition.key"
@ctx.accounts.master_edition.key = internal constant [31 x i8] c"ctx.accounts.master_edition.key"
@ctx.accounts.master_edition_token.key = internal constant [37 x i8] c"ctx.accounts.master_edition_token.key"
@ctx.accounts.print_edition_token.key = internal constant [36 x i8] c"ctx.accounts.print_edition_token.key"
@ctx.accounts.master_edition_mint.key = internal constant [36 x i8] c"ctx.accounts.master_edition_mint.key"
@ctx.accounts.print_edition_mint.key = internal constant [35 x i8] c"ctx.accounts.print_edition_mint.key"
@ctx.accounts.owner.key = internal constant [22 x i8] c"ctx.accounts.owner.key"
@"CpiContext<'_,'_,'_,'info,BurnEditionNft<'info>>" = internal constant [48 x i8] c"CpiContext<'_,'_,'_,'info,BurnEditionNft<'info>>"
@ctx.accounts.bubblegum_signer.key = internal constant [33 x i8] c"ctx.accounts.bubblegum_signer.key"
@ctx.accounts.metadata_account.key = internal constant [33 x i8] c"ctx.accounts.metadata_account.key"
@u64 = internal constant [3 x i8] c"u64"
@size = internal constant [4 x i8] c"size"
@"Option<Pubkey>" = internal constant [14 x i8] c"Option<Pubkey>"
@collection_authority_record = internal constant [27 x i8] c"collection_authority_record"
@"CpiContext<'_,'_,'_,'info,BubblegumSetCollectionSize<'info>>" = internal constant [60 x i8] c"CpiContext<'_,'_,'_,'info,BubblegumSetCollectionSize<'info>>"
@"Into::into" = internal constant [10 x i8] c"Into::into"
@ctx.signer_seeds = internal constant [16 x i8] c"ctx.signer_seeds"
@ix = internal constant [2 x i8] c"ix"
@ctx.accounts.mint.key = internal constant [21 x i8] c"ctx.accounts.mint.key"
@ctx.accounts.metadata.key = internal constant [25 x i8] c"ctx.accounts.metadata.key"
@ctx.accounts.payer.key = internal constant [22 x i8] c"ctx.accounts.payer.key"
@ctx.accounts.update_authority.key = internal constant [33 x i8] c"ctx.accounts.update_authority.key"
@ctx.accounts.new_collection_authority.key = internal constant [41 x i8] c"ctx.accounts.new_collection_authority.key"
@ctx.accounts.collection_authority_record.key = internal constant [44 x i8] c"ctx.accounts.collection_authority_record.key"
@ID = internal constant [2 x i8] c"ID"
@"CpiContext<'_,'_,'_,'info,ApproveCollectionAuthority<'info>>" = internal constant [60 x i8] c"CpiContext<'_,'_,'_,'info,ApproveCollectionAuthority<'info>>"
@ctx = internal constant [3 x i8] c"ctx"
@SRMuApVNdxXokk5GT7XD5cUUgXMBCoAz2LHeuAoKWRt = internal constant [43 x i8] c"SRMuApVNdxXokk5GT7XD5cUUgXMBCoAz2LHeuAoKWRt"
@EPjFWdd5AufqSSqeM2qN1xzybapC8G4wEGGkZwyTDt1v = internal constant [44 x i8] c"EPjFWdd5AufqSSqeM2qN1xzybapC8G4wEGGkZwyTDt1v"
@DynWy94wrWp5RimU49creYMQ5py3Up8BBNS4VA73VCpi = internal constant [44 x i8] c"DynWy94wrWp5RimU49creYMQ5py3Up8BBNS4VA73VCpi"
@"3.5" = internal constant [3 x i8] c"3.5"
@dependencies.spl-token.version = internal constant [30 x i8] c"dependencies.spl-token.version"
@">=1.14, <1.17" = internal constant [13 x i8] c">=1.14, <1.17"
@dependencies.solana_program.version = internal constant [35 x i8] c"dependencies.solana_program.version"
@"0.28.0" = internal constant [6 x i8] c"0.28.0"
@dependencies.anchor-lang.version = internal constant [32 x i8] c"dependencies.anchor-lang.version"

declare i8* @malloc(i64)

declare void @free(i8*)

declare i8* @"sol.serum_dex::instruction::initialize_market.16"(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)

declare i8* @"sol.serum_dex::instruction::sweep_fees.7"(i8*, i8*, i8*, i8*, i8*, i8*, i8*)

declare i8* @"sol.serum_dex::instruction::close_open_orders.5"(i8*, i8*, i8*, i8*, i8*)

declare i8* @"sol.serum_dex::instruction::init_open_orders.5"(i8*, i8*, i8*, i8*, i8*)

declare i8* @sol.first.1(i8*)

declare i8* @"sol.serum_dex::instruction::settle_funds.11"(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)

declare i8* @"sol.serum_dex::instruction::cancel_order.9"(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)

declare i8* @"sol.ProgramError::from.1"(i8*)

declare i8* @"sol.serum_dex::instruction::new_order.22"(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)

declare i8* @sol.get.2(i8*, i8*)

declare i8* @sol.Mint.1(i8*)

declare i8* @sol.TokenAccount.1(i8*)

declare i8* @"sol.spl_token_2022::extension::StateWithExtensions::unpack.1"(i8*)

declare i8* @"sol.token_2022::ui_amount_to_amount.anon.4"(i8*)

declare i8* @"sol.token_2022::ui_amount_to_amount.anon.2"(i8*)

declare i8* @"sol.token_2022::ui_amount_to_amount.anon.1"(i8*)

declare i8* @"sol.spl_token_2022::instruction::ui_amount_to_amount.3"(i8*, i8*, i8*)

declare i8* @"sol.token_2022::ui_amount_to_amount.anon.6"(i8*)

declare i8* @"sol.token_2022::ui_amount_to_amount.anon.5"(i8*)

declare i8* @"sol.token_2022::ui_amount_to_amount.anon.7"(i8*)

declare i8* @"sol.token_2022::ui_amount_to_amount.anon.3"(i8*)

declare i8* @"sol.token_2022::amount_to_ui_amount.anon.4"(i8*)

declare i8* @"sol.token_2022::amount_to_ui_amount.anon.2"(i8*)

declare i8* @"sol.token_2022::amount_to_ui_amount.anon.1"(i8*)

declare i8* @"sol.spl_token_2022::instruction::amount_to_ui_amount.3"(i8*, i8*, i8*)

declare i8* @"sol.token_2022::amount_to_ui_amount.anon.6"(i8*)

declare i8* @"sol.token_2022::amount_to_ui_amount.anon.5"(i8*)

declare i8* @"sol.token_2022::amount_to_ui_amount.anon.7"(i8*)

declare i8* @"sol.token_2022::amount_to_ui_amount.anon.3"(i8*)

declare i8* @"sol.String::from_utf8.1"(i8*)

declare i8* @"sol.spl_token_2022::instruction::initialize_immutable_owner.2"(i8*, i8*)

declare i8* @"sol.spl_token_2022::instruction::initialize_mint_close_authority.3"(i8*, i8*, i8*)

declare i8* @sol.and_then.2(i8*, i8*)

declare i8* @"sol.token_2022::get_account_data_size.anon.4"(i8*)

declare i8* @"sol.token_2022::get_account_data_size.anon.2"(i8*)

declare i8* @"sol.token_2022::get_account_data_size.anon.1"(i8*)

declare i8* @sol.ok_or.2(i8*, i8*)

declare i8* @"sol.solana_program::program::get_return_data.0"()

declare i8* @"sol.spl_token_2022::instruction::get_account_data_size.3"(i8*, i8*, i8*)

declare i8* @sol.ifFalse.anon.(i8*)

declare i8* @"sol.token_2022::get_account_data_size.anon.6"(i8*)

declare i8* @"sol.token_2022::get_account_data_size.anon.5"(i8*)

declare i8* @"sol.token_2022::get_account_data_size.anon.7"(i8*)

declare i8* @"sol.token_2022::get_account_data_size.anon.3"(i8*)

declare i8* @sol.try_into.1(i8*)

declare i8* @"sol.spl_token_2022::instruction::sync_native.2"(i8*, i8*)

declare i8* @"sol.spl_token_2022::instruction::set_authority.6"(i8*, i8*, i8*, i8*, i8*, i8*)

declare i8* @"sol.token_2022::set_authority.anon.1"(i8*)

declare i8* @"sol.spl_token_2022::instruction::initialize_mint2.5"(i8*, i8*, i8*, i8*, i8*)

declare i8* @"sol.spl_token_2022::instruction::initialize_mint.5"(i8*, i8*, i8*, i8*, i8*)

declare i8* @"sol.spl_token_2022::instruction::thaw_account.5"(i8*, i8*, i8*, i8*, i8*)

declare i8* @"sol.spl_token_2022::instruction::freeze_account.5"(i8*, i8*, i8*, i8*, i8*)

declare i8* @"sol.spl_token_2022::instruction::close_account.5"(i8*, i8*, i8*, i8*, i8*)

declare i8* @"sol.spl_token_2022::instruction::initialize_account3.4"(i8*, i8*, i8*, i8*)

declare i8* @"sol.solana_program::program::invoke.2"(i8*, i8*)

declare i8* @"sol.spl_token_2022::instruction::initialize_account.4"(i8*, i8*, i8*, i8*)

declare i8* @"sol.spl_token_2022::instruction::revoke.4"(i8*, i8*, i8*, i8*)

declare i8* @"sol.spl_token_2022::instruction::approve.6"(i8*, i8*, i8*, i8*, i8*, i8*)

declare i8* @"sol.spl_token_2022::instruction::burn.6"(i8*, i8*, i8*, i8*, i8*, i8*)

declare i8* @"sol.spl_token_2022::instruction::mint_to.6"(i8*, i8*, i8*, i8*, i8*, i8*)

declare i8* @"sol.spl_token_2022::instruction::transfer_checked.8"(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)

declare i8* @"sol.spl_token_2022::instruction::transfer.6"(i8*, i8*, i8*, i8*, i8*, i8*)

declare i8* @"sol.spl_associated_token_account::instruction::create_associated_token_account_idempotent.4"(i8*, i8*, i8*, i8*)

declare i8* @"sol.spl_associated_token_account::instruction::create_associated_token_account.4"(i8*, i8*, i8*, i8*)

declare i8* @"sol.StakeState::deserialize.1"(i8*)

declare i8* @"sol.stake::instruction::deactivate_stake.2"(i8*, i8*)

declare i8* @"sol.stake::withdraw.anon.1"(i8*)

declare i8* @"sol.stake::instruction::withdraw.5"(i8*, i8*, i8*, i8*, i8*)

declare i8* @"sol.stake::authorize.anon.1"(i8*)

declare i8* @"sol.stake::instruction::authorize.5"(i8*, i8*, i8*, i8*, i8*)

declare i8* @sol.model.struct.constraint(i8*)

declare i8* @"sol.program::invoke.2"(i8*, i8*)

declare i8* @sol.push.2(i8*, i8*)

declare i8* @sol.clone.1(i8*)

declare i8* @sol.model.struct.new.Instruction.3(i8*, i8*, i8*)

declare i8* @"sol.model.macro.vec.!1"(i8*)

declare i8* @"sol.Pubkey::new_from_array.1"(i8*)

declare i8* @"sol.u64::from_le_bytes.1"(i8*)

declare i8* @sol.copy_from_slice.2(i8*, i8*)

declare i8* @sol.try_borrow_data.1(i8*)

declare i8* @"sol.spl_token::state::Mint::unpack.1"(i8*)

declare i8* @sol.map.2(i8*, i8*)

declare i8* @"sol.spl_token::state::Account::unpack.1"(i8*)

declare i8* @"sol.spl_token::instruction::sync_native.2"(i8*, i8*)

declare i8* @"sol.spl_token::instruction::set_authority.6"(i8*, i8*, i8*, i8*, i8*, i8*)

declare i8* @"sol.token::set_authority.anon.1"(i8*)

declare i8* @sol.is_some.1(i8*)

declare i8* @sol.as_ref.1(i8*)

declare i8* @"sol.spl_token::instruction::initialize_mint2.5"(i8*, i8*, i8*, i8*, i8*)

declare i8* @"sol.spl_token::instruction::initialize_mint.5"(i8*, i8*, i8*, i8*, i8*)

declare i8* @"sol.spl_token::instruction::thaw_account.5"(i8*, i8*, i8*, i8*, i8*)

declare i8* @"sol.spl_token::instruction::freeze_account.5"(i8*, i8*, i8*, i8*, i8*)

declare i8* @"sol.spl_token::instruction::close_account.5"(i8*, i8*, i8*, i8*, i8*)

declare i8* @"sol.spl_token::instruction::initialize_account3.4"(i8*, i8*, i8*, i8*)

declare i8* @"sol.spl_token::instruction::initialize_account.4"(i8*, i8*, i8*, i8*)

declare i8* @"sol.spl_token::instruction::revoke.4"(i8*, i8*, i8*, i8*)

declare i8* @"sol.spl_token::instruction::approve_checked.8"(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)

declare i8* @"sol.spl_token::instruction::approve.6"(i8*, i8*, i8*, i8*, i8*, i8*)

declare i8* @"sol.spl_token::instruction::burn.6"(i8*, i8*, i8*, i8*, i8*, i8*)

declare i8* @"sol.spl_token::instruction::mint_to.6"(i8*, i8*, i8*, i8*, i8*, i8*)

declare i8* @"sol.spl_token::instruction::transfer_checked.8"(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)

declare i8* @"sol.spl_token::instruction::transfer.6"(i8*, i8*, i8*, i8*, i8*, i8*)

declare i8* @"sol.mpl_token_metadata::state::MasterEditionV2::safe_deserialize.1"(i8*)

declare i8* @"sol.metadata::MasterEditionAccount::try_deserialize.anon.1"(i8*)

declare i8* @"sol.mpl_token_metadata::state::MasterEditionV2::key.0"()

declare i8* @sol.Self.1(i8*)

declare i8* @"sol.mpl_token_metadata::state::Metadata::safe_deserialize.1"(i8*)

declare i8* @sol.ifTrue.anon.(i8*)

declare i8* @"sol.metadata::MetadataAccount::try_deserialize.anon.1"(i8*)

declare i8* @sol.if(i8*)

declare i8* @"sol.!="(i8*, i8*)

declare i8* @"sol.mpl_token_metadata::state::Metadata::key.0"()

declare i8* @"sol.Self::try_deserialize_unchecked.1"(i8*)

declare i8* @sol.return.1(i8*)

declare i8* @sol.Err.1(i8*)

declare i8* @sol.into.1(i8*)

declare i8* @sol.model.struct.field(i8*, i8*)

declare i8* @"sol.mpl_token_metadata::instruction::unverify_sized_collection_item.8"(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)

declare i8* @"sol.mpl_token_metadata::instruction::unverify_collection.7"(i8*, i8*, i8*, i8*, i8*, i8*, i8*)

declare i8* @"sol.mpl_token_metadata::instruction::utilize.9"(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)

declare i8* @"sol.mpl_token_metadata::instruction::remove_creator_verification.3"(i8*, i8*, i8*)

declare i8* @"sol.mpl_token_metadata::instruction::sign_metadata.3"(i8*, i8*, i8*)

declare i8* @"sol.mpl_token_metadata::instruction::set_token_standard.5"(i8*, i8*, i8*, i8*, i8*)

declare i8* @sol.Ok.1(i8*)

declare i8* @"sol.mpl_token_metadata::instruction::update_primary_sale_happened_via_token.4"(i8*, i8*, i8*, i8*)

declare i8* @"sol.mpl_token_metadata::instruction::thaw_delegated_account.5"(i8*, i8*, i8*, i8*, i8*)

declare i8* @"sol.mpl_token_metadata::instruction::freeze_delegated_account.5"(i8*, i8*, i8*, i8*, i8*)

declare i8* @"sol.mpl_token_metadata::instruction::set_and_verify_sized_collection_item.9"(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)

declare i8* @"sol.mpl_token_metadata::instruction::set_and_verify_collection.9"(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)

declare i8* @"sol.mpl_token_metadata::instruction::verify_sized_collection_item.8"(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)

declare i8* @"sol.mpl_token_metadata::instruction::verify_collection.8"(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)

declare i8* @"sol.mpl_token_metadata::instruction::set_collection_size.6"(i8*, i8*, i8*, i8*, i8*, i8*)

declare i8* @"sol.mpl_token_metadata::instruction::revoke_collection_authority.6"(i8*, i8*, i8*, i8*, i8*, i8*)

declare i8* @"sol.mpl_token_metadata::instruction::mint_new_edition_from_master_edition_via_token.13"(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)

declare i8* @"sol.mpl_token_metadata::instruction::create_master_edition_v3.8"(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)

declare i8* @"sol.mpl_token_metadata::instruction::update_metadata_accounts_v2.7"(i8*, i8*, i8*, i8*, i8*, i8*, i8*)

declare i8* @"sol.mpl_token_metadata::instruction::create_metadata_accounts_v3.16"(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)

declare i8* @"sol.mpl_token_metadata::instruction::burn_nft.8"(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)

declare i8* @"sol.mpl_token_metadata::instruction::burn_edition_nft.11"(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)

declare i8* @"sol.mpl_token_metadata::instruction::bubblegum_set_collection_size.7"(i8*, i8*, i8*, i8*, i8*, i8*, i8*)

declare i8* @sol.map_err.2(i8*, i8*)

declare i8* @"sol.solana_program::program::invoke_signed.3"(i8*, i8*, i8*)

declare i8* @"sol.ToAccountInfos::to_account_infos.1"(i8*)

declare void @sol.model.opaqueAssign(i8*, i8*)

declare i8* @"sol.mpl_token_metadata::instruction::approve_collection_authority.7"(i8*, i8*, i8*, i8*, i8*, i8*, i8*)

declare i8* @sol.model.funcArg(i8*, i8*)

declare i8* @sol.model.declare_id(i8*)

declare i8* @sol.model.toml(i8*, i8*)

define i64 @sol.model.cargo.toml(i8* %0) !dbg !3 {
  %2 = call i8* @sol.model.toml(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @dependencies.anchor-lang.version, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"0.28.0", i64 0, i64 0)), !dbg !7
  %3 = call i8* @sol.model.toml(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @dependencies.solana_program.version, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @">=1.14, <1.17", i64 0, i64 0)), !dbg !7
  %4 = call i8* @sol.model.toml(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @dependencies.spl-token.version, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"3.5", i64 0, i64 0)), !dbg !7
  ret i64 0, !dbg !10
}

define i64 @sol.model.declare_id.address(i8* %0) !dbg !12 {
  %2 = call i8* @sol.model.declare_id(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @DynWy94wrWp5RimU49creYMQ5py3Up8BBNS4VA73VCpi, i64 0, i64 0)), !dbg !13
  %3 = call i8* @sol.model.declare_id(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @EPjFWdd5AufqSSqeM2qN1xzybapC8G4wEGGkZwyTDt1v, i64 0, i64 0)), !dbg !13
  %4 = call i8* @sol.model.declare_id(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @SRMuApVNdxXokk5GT7XD5cUUgXMBCoAz2LHeuAoKWRt, i64 0, i64 0)), !dbg !13
  ret i64 0, !dbg !16
}

define i8* @"metadata::approve_collection_authority.1"(i8* %0) !dbg !18 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @"CpiContext<'_,'_,'_,'info,ApproveCollectionAuthority<'info>>", i64 0, i64 0)), !dbg !20
  %3 = call i8* @"sol.mpl_token_metadata::instruction::approve_collection_authority.7"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ID, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @ctx.accounts.collection_authority_record.key, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @ctx.accounts.new_collection_authority.key, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @ctx.accounts.update_authority.key, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @ctx.accounts.payer.key, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @ctx.accounts.metadata.key, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @ctx.accounts.mint.key, i64 0, i64 0)), !dbg !22
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %3), !dbg !23
  %4 = call i8* @"sol.ToAccountInfos::to_account_infos.1"(i8* %0), !dbg !24
  %5 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !25
  %6 = call i8* @sol.map_err.2(i8* %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !26
  ret i8* %0, !dbg !20
}

define i8* @"metadata::bubblegum_set_collection_size.3"(i8* %0, i8* %1, i8* %2) !dbg !27 {
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @"CpiContext<'_,'_,'_,'info,BubblegumSetCollectionSize<'info>>", i64 0, i64 0)), !dbg !28
  %5 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @collection_authority_record, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"Option<Pubkey>", i64 0, i64 0)), !dbg !28
  %6 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @size, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u64, i64 0, i64 0)), !dbg !28
  %7 = call i8* @"sol.mpl_token_metadata::instruction::bubblegum_set_collection_size.7"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ID, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @ctx.accounts.metadata_account.key, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @ctx.accounts.update_authority.key, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @ctx.accounts.mint.key, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @ctx.accounts.bubblegum_signer.key, i64 0, i64 0), i8* %1, i8* %2), !dbg !30
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %7), !dbg !31
  %8 = call i8* @"sol.ToAccountInfos::to_account_infos.1"(i8* %0), !dbg !32
  %9 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !33
  %10 = call i8* @sol.map_err.2(i8* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !34
  ret i8* %0, !dbg !28
}

define i8* @"metadata::burn_edition_nft.1"(i8* %0) !dbg !35 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @"CpiContext<'_,'_,'_,'info,BurnEditionNft<'info>>", i64 0, i64 0)), !dbg !36
  %3 = call i8* @"sol.mpl_token_metadata::instruction::burn_edition_nft.11"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ID, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @ctx.accounts.metadata.key, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @ctx.accounts.owner.key, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @ctx.accounts.print_edition_mint.key, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @ctx.accounts.master_edition_mint.key, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @ctx.accounts.print_edition_token.key, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @ctx.accounts.master_edition_token.key, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @ctx.accounts.master_edition.key, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @ctx.accounts.print_edition.key, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @ctx.accounts.edition_marker.key, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @ctx.accounts.spl_token.key, i64 0, i64 0)), !dbg !38
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %3), !dbg !39
  %4 = call i8* @"sol.ToAccountInfos::to_account_infos.1"(i8* %0), !dbg !40
  %5 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !41
  %6 = call i8* @sol.map_err.2(i8* %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !42
  ret i8* %0, !dbg !36
}

define i8* @"metadata::burn_nft.2"(i8* %0, i8* %1) !dbg !43 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @"CpiContext<'_,'_,'_,'info,BurnNft<'info>>", i64 0, i64 0)), !dbg !44
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @collection_metadata, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"Option<Pubkey>", i64 0, i64 0)), !dbg !44
  %5 = call i8* @"sol.mpl_token_metadata::instruction::burn_nft.8"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ID, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @ctx.accounts.metadata.key, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @ctx.accounts.owner.key, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @ctx.accounts.mint.key, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @ctx.accounts.token.key, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @ctx.accounts.edition.key, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @ctx.accounts.spl_token.key, i64 0, i64 0), i8* %1), !dbg !46
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %5), !dbg !47
  %6 = call i8* @"sol.ToAccountInfos::to_account_infos.1"(i8* %0), !dbg !48
  %7 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !49
  %8 = call i8* @sol.map_err.2(i8* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !50
  ret i8* %0, !dbg !44
}

define i8* @"metadata::create_metadata_accounts_v3.5"(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4) !dbg !51 {
  %6 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @"CpiContext<'_,'_,'_,'info,CreateMetadataAccountsV3<'info>>", i64 0, i64 0)), !dbg !52
  %7 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @data, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @DataV2, i64 0, i64 0)), !dbg !52
  %8 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @is_mutable, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @bool, i64 0, i64 0)), !dbg !52
  %9 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @update_authority_is_signer, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @bool, i64 0, i64 0)), !dbg !52
  %10 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @details, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @"Option<CollectionDetails>", i64 0, i64 0)), !dbg !52
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @"DataV2{name,symbol,uri,creators,seller_fee_basis_points,collection,uses,}", i64 0, i64 0), i8* %1), !dbg !54
  %11 = call i8* @"sol.mpl_token_metadata::instruction::create_metadata_accounts_v3.16"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ID, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @ctx.accounts.metadata.key, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @ctx.accounts.mint.key, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @ctx.accounts.mint_authority.key, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @ctx.accounts.payer.key, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @ctx.accounts.update_authority.key, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @name, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @symbol, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @uri, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @creators, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @seller_fee_basis_points, i64 0, i64 0), i8* %3, i8* %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @collection, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @uses, i64 0, i64 0), i8* %4), !dbg !55
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %11), !dbg !56
  %12 = call i8* @"sol.ToAccountInfos::to_account_infos.1"(i8* %0), !dbg !57
  %13 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !58
  %14 = call i8* @sol.map_err.2(i8* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !59
  ret i8* %0, !dbg !52
}

define i8* @"metadata::update_metadata_accounts_v2.5"(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4) !dbg !60 {
  %6 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @"CpiContext<'_,'_,'_,'info,UpdateMetadataAccountsV2<'info>>", i64 0, i64 0)), !dbg !61
  %7 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @new_update_authority, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"Option<Pubkey>", i64 0, i64 0)), !dbg !61
  %8 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @data, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"Option<DataV2>", i64 0, i64 0)), !dbg !61
  %9 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @primary_sale_happened, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"Option<bool>", i64 0, i64 0)), !dbg !61
  %10 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @is_mutable, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"Option<bool>", i64 0, i64 0)), !dbg !61
  %11 = call i8* @"sol.mpl_token_metadata::instruction::update_metadata_accounts_v2.7"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ID, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @ctx.accounts.metadata.key, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @ctx.accounts.update_authority.key, i64 0, i64 0), i8* %1, i8* %2, i8* %3, i8* %4), !dbg !63
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %11), !dbg !64
  %12 = call i8* @"sol.ToAccountInfos::to_account_infos.1"(i8* %0), !dbg !65
  %13 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !66
  %14 = call i8* @sol.map_err.2(i8* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !67
  ret i8* %0, !dbg !61
}

define i8* @"metadata::create_master_edition_v3.2"(i8* %0, i8* %1) !dbg !68 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @"CpiContext<'_,'_,'_,'info,CreateMasterEditionV3<'info>>", i64 0, i64 0)), !dbg !69
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @max_supply, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"Option<u64>", i64 0, i64 0)), !dbg !69
  %5 = call i8* @"sol.mpl_token_metadata::instruction::create_master_edition_v3.8"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ID, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @ctx.accounts.edition.key, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @ctx.accounts.mint.key, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @ctx.accounts.update_authority.key, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @ctx.accounts.mint_authority.key, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @ctx.accounts.metadata.key, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @ctx.accounts.payer.key, i64 0, i64 0), i8* %1), !dbg !71
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %5), !dbg !72
  %6 = call i8* @"sol.ToAccountInfos::to_account_infos.1"(i8* %0), !dbg !73
  %7 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !74
  %8 = call i8* @sol.map_err.2(i8* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !75
  ret i8* %0, !dbg !69
}

define i8* @"metadata::mint_new_edition_from_master_edition_via_token.2"(i8* %0, i8* %1) !dbg !76 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @"CpiContext<'_,'_,'_,'info,MintNewEditionFromMasterEditionViaToken<'info>>", i64 0, i64 0)), !dbg !77
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @edition, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u64, i64 0, i64 0)), !dbg !77
  %5 = call i8* @"sol.mpl_token_metadata::instruction::mint_new_edition_from_master_edition_via_token.13"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ID, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @ctx.accounts.new_metadata.key, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @ctx.accounts.new_edition.key, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @ctx.accounts.master_edition.key, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @ctx.accounts.new_mint.key, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @ctx.accounts.new_mint_authority.key, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @ctx.accounts.payer.key, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @ctx.accounts.token_account_owner.key, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @ctx.accounts.token_account.key, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @ctx.accounts.new_metadata_update_authority.key, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @ctx.accounts.metadata.key, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @ctx.accounts.metadata_mint.key, i64 0, i64 0), i8* %1), !dbg !79
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %5), !dbg !80
  %6 = call i8* @"sol.ToAccountInfos::to_account_infos.1"(i8* %0), !dbg !81
  %7 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !82
  %8 = call i8* @sol.map_err.2(i8* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !83
  ret i8* %0, !dbg !77
}

define i8* @"metadata::revoke_collection_authority.1"(i8* %0) !dbg !84 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @"CpiContext<'_,'_,'_,'info,RevokeCollectionAuthority<'info>>", i64 0, i64 0)), !dbg !85
  %3 = call i8* @"sol.mpl_token_metadata::instruction::revoke_collection_authority.6"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ID, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @ctx.accounts.collection_authority_record.key, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @ctx.accounts.delegate_authority.key, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @ctx.accounts.revoke_authority.key, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @ctx.accounts.metadata.key, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @ctx.accounts.mint.key, i64 0, i64 0)), !dbg !87
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %3), !dbg !88
  %4 = call i8* @"sol.ToAccountInfos::to_account_infos.1"(i8* %0), !dbg !89
  %5 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !90
  %6 = call i8* @sol.map_err.2(i8* %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !91
  ret i8* %0, !dbg !85
}

define i8* @"metadata::set_collection_size.3"(i8* %0, i8* %1, i8* %2) !dbg !92 {
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @"CpiContext<'_,'_,'_,'info,SetCollectionSize<'info>>", i64 0, i64 0)), !dbg !93
  %5 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @collection_authority_record, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"Option<Pubkey>", i64 0, i64 0)), !dbg !93
  %6 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @size, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u64, i64 0, i64 0)), !dbg !93
  %7 = call i8* @"sol.mpl_token_metadata::instruction::set_collection_size.6"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ID, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @ctx.accounts.metadata.key, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @ctx.accounts.update_authority.key, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @ctx.accounts.mint.key, i64 0, i64 0), i8* %1, i8* %2), !dbg !95
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %7), !dbg !96
  %8 = call i8* @"sol.ToAccountInfos::to_account_infos.1"(i8* %0), !dbg !97
  %9 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !98
  %10 = call i8* @sol.map_err.2(i8* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !99
  ret i8* %0, !dbg !93
}

define i8* @"metadata::verify_collection.2"(i8* %0, i8* %1) !dbg !100 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @"CpiContext<'_,'_,'_,'info,VerifyCollection<'info>>", i64 0, i64 0)), !dbg !101
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @collection_authority_record, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"Option<Pubkey>", i64 0, i64 0)), !dbg !101
  %5 = call i8* @"sol.mpl_token_metadata::instruction::verify_collection.8"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ID, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @ctx.accounts.metadata.key, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @ctx.accounts.collection_authority.key, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @ctx.accounts.payer.key, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @ctx.accounts.collection_mint.key, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @ctx.accounts.collection_metadata.key, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @ctx.accounts.collection_master_edition.key, i64 0, i64 0), i8* %1), !dbg !103
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %5), !dbg !104
  %6 = call i8* @"sol.ToAccountInfos::to_account_infos.1"(i8* %0), !dbg !105
  %7 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !106
  %8 = call i8* @sol.map_err.2(i8* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !107
  ret i8* %0, !dbg !101
}

define i8* @"metadata::verify_sized_collection_item.2"(i8* %0, i8* %1) !dbg !108 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @"CpiContext<'_,'_,'_,'info,VerifySizedCollectionItem<'info>>", i64 0, i64 0)), !dbg !109
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @collection_authority_record, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"Option<Pubkey>", i64 0, i64 0)), !dbg !109
  %5 = call i8* @"sol.mpl_token_metadata::instruction::verify_sized_collection_item.8"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ID, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @ctx.accounts.metadata.key, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @ctx.accounts.collection_authority.key, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @ctx.accounts.payer.key, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @ctx.accounts.collection_mint.key, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @ctx.accounts.collection_metadata.key, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @ctx.accounts.collection_master_edition.key, i64 0, i64 0), i8* %1), !dbg !111
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %5), !dbg !112
  %6 = call i8* @"sol.ToAccountInfos::to_account_infos.1"(i8* %0), !dbg !113
  %7 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !114
  %8 = call i8* @sol.map_err.2(i8* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !115
  ret i8* %0, !dbg !109
}

define i8* @"metadata::set_and_verify_collection.2"(i8* %0, i8* %1) !dbg !116 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @"CpiContext<'_,'_,'_,'info,SetAndVerifyCollection<'info>>", i64 0, i64 0)), !dbg !117
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @collection_authority_record, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"Option<Pubkey>", i64 0, i64 0)), !dbg !117
  %5 = call i8* @"sol.mpl_token_metadata::instruction::set_and_verify_collection.9"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ID, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @ctx.accounts.metadata.key, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @ctx.accounts.collection_authority.key, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @ctx.accounts.payer.key, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @ctx.accounts.update_authority.key, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @ctx.accounts.collection_mint.key, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @ctx.accounts.collection_metadata.key, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @ctx.accounts.collection_master_edition.key, i64 0, i64 0), i8* %1), !dbg !119
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %5), !dbg !120
  %6 = call i8* @"sol.ToAccountInfos::to_account_infos.1"(i8* %0), !dbg !121
  %7 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !122
  %8 = call i8* @sol.map_err.2(i8* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !123
  ret i8* %0, !dbg !117
}

define i8* @"metadata::set_and_verify_sized_collection_item.2"(i8* %0, i8* %1) !dbg !124 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @"CpiContext<'_,'_,'_,'info,SetAndVerifySizedCollectionItem<'info>>", i64 0, i64 0)), !dbg !125
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @collection_authority_record, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"Option<Pubkey>", i64 0, i64 0)), !dbg !125
  %5 = call i8* @"sol.mpl_token_metadata::instruction::set_and_verify_sized_collection_item.9"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ID, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @ctx.accounts.metadata.key, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @ctx.accounts.collection_authority.key, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @ctx.accounts.payer.key, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @ctx.accounts.update_authority.key, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @ctx.accounts.collection_mint.key, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @ctx.accounts.collection_metadata.key, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @ctx.accounts.collection_master_edition.key, i64 0, i64 0), i8* %1), !dbg !127
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %5), !dbg !128
  %6 = call i8* @"sol.ToAccountInfos::to_account_infos.1"(i8* %0), !dbg !129
  %7 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !130
  %8 = call i8* @sol.map_err.2(i8* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !131
  ret i8* %0, !dbg !125
}

define i8* @"metadata::freeze_delegated_account.1"(i8* %0) !dbg !132 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @"CpiContext<'_,'_,'_,'info,FreezeDelegatedAccount<'info>>", i64 0, i64 0)), !dbg !133
  %3 = call i8* @"sol.mpl_token_metadata::instruction::freeze_delegated_account.5"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ID, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @ctx.accounts.delegate.key, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @ctx.accounts.token_account.key, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @ctx.accounts.edition.key, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @ctx.accounts.mint.key, i64 0, i64 0)), !dbg !135
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %3), !dbg !136
  %4 = call i8* @"sol.ToAccountInfos::to_account_infos.1"(i8* %0), !dbg !137
  %5 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !138
  %6 = call i8* @sol.map_err.2(i8* %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !139
  ret i8* %0, !dbg !133
}

define i8* @"metadata::thaw_delegated_account.1"(i8* %0) !dbg !140 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @"CpiContext<'_,'_,'_,'info,ThawDelegatedAccount<'info>>", i64 0, i64 0)), !dbg !141
  %3 = call i8* @"sol.mpl_token_metadata::instruction::thaw_delegated_account.5"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ID, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @ctx.accounts.delegate.key, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @ctx.accounts.token_account.key, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @ctx.accounts.edition.key, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @ctx.accounts.mint.key, i64 0, i64 0)), !dbg !143
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %3), !dbg !144
  %4 = call i8* @"sol.ToAccountInfos::to_account_infos.1"(i8* %0), !dbg !145
  %5 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !146
  %6 = call i8* @sol.map_err.2(i8* %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !147
  ret i8* %0, !dbg !141
}

define i8* @"metadata::update_primary_sale_happened_via_token.1"(i8* %0) !dbg !148 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @"CpiContext<'_,'_,'_,'info,UpdatePrimarySaleHappenedViaToken<'info>>", i64 0, i64 0)), !dbg !149
  %3 = call i8* @"sol.mpl_token_metadata::instruction::update_primary_sale_happened_via_token.4"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ID, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @ctx.accounts.metadata.key, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @ctx.accounts.owner.key, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @ctx.accounts.token.key, i64 0, i64 0)), !dbg !151
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %3), !dbg !152
  %4 = call i8* @"sol.ToAccountInfos::to_account_infos.1"(i8* %0), !dbg !153
  %5 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !154
  %6 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"()", i64 0, i64 0)), !dbg !155
  ret i8* %0, !dbg !149
}

define i8* @"metadata::set_token_standard.2"(i8* %0, i8* %1) !dbg !156 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @"CpiContext<'_,'_,'_,'info,SetTokenStandard<'info>>", i64 0, i64 0)), !dbg !157
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @edition_account, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"Option<Pubkey>", i64 0, i64 0)), !dbg !157
  %5 = call i8* @"sol.mpl_token_metadata::instruction::set_token_standard.5"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ID, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @ctx.accounts.metadata_account.key, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @ctx.accounts.update_authority.key, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @ctx.accounts.mint_account.key, i64 0, i64 0), i8* %1), !dbg !159
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %5), !dbg !160
  %6 = call i8* @"sol.ToAccountInfos::to_account_infos.1"(i8* %0), !dbg !161
  %7 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !162
  %8 = call i8* @sol.map_err.2(i8* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !163
  ret i8* %0, !dbg !157
}

define i8* @"metadata::sign_metadata.1"(i8* %0) !dbg !164 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @"CpiContext<'_,'_,'_,'info,SignMetadata<'info>>", i64 0, i64 0)), !dbg !165
  %3 = call i8* @"sol.mpl_token_metadata::instruction::sign_metadata.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ID, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @ctx.accounts.metadata.key, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @ctx.accounts.creator.key, i64 0, i64 0)), !dbg !167
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %3), !dbg !168
  %4 = call i8* @"sol.ToAccountInfos::to_account_infos.1"(i8* %0), !dbg !169
  %5 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !170
  %6 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"()", i64 0, i64 0)), !dbg !171
  ret i8* %0, !dbg !165
}

define i8* @"metadata::remove_creator_verification.1"(i8* %0) !dbg !172 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @"CpiContext<'_,'_,'_,'info,RemoveCreatorVerification<'info>>", i64 0, i64 0)), !dbg !173
  %3 = call i8* @"sol.mpl_token_metadata::instruction::remove_creator_verification.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ID, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @ctx.accounts.metadata.key, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @ctx.accounts.creator.key, i64 0, i64 0)), !dbg !175
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %3), !dbg !176
  %4 = call i8* @"sol.ToAccountInfos::to_account_infos.1"(i8* %0), !dbg !177
  %5 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !178
  %6 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"()", i64 0, i64 0)), !dbg !179
  ret i8* %0, !dbg !173
}

define i8* @"metadata::utilize.4"(i8* %0, i8* %1, i8* %2, i8* %3) !dbg !180 {
  %5 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @"CpiContext<'_,'_,'_,'info,Utilize<'info>>", i64 0, i64 0)), !dbg !181
  %6 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @use_authority_record_pda, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"Option<Pubkey>", i64 0, i64 0)), !dbg !181
  %7 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @burner, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"Option<Pubkey>", i64 0, i64 0)), !dbg !181
  %8 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @number_of_uses, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u64, i64 0, i64 0)), !dbg !181
  %9 = call i8* @"sol.mpl_token_metadata::instruction::utilize.9"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ID, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @ctx.accounts.metadata.key, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @ctx.accounts.token_account.key, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @ctx.accounts.mint.key, i64 0, i64 0), i8* %1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @ctx.accounts.use_authority.key, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @ctx.accounts.owner.key, i64 0, i64 0), i8* %2, i8* %3), !dbg !183
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %9), !dbg !184
  %10 = call i8* @"sol.ToAccountInfos::to_account_infos.1"(i8* %0), !dbg !185
  %11 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !186
  %12 = call i8* @sol.map_err.2(i8* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !187
  ret i8* %0, !dbg !181
}

define i8* @"metadata::unverify_collection.2"(i8* %0, i8* %1) !dbg !188 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @"CpiContext<'_,'_,'_,'info,UnverifyCollection<'info>>", i64 0, i64 0)), !dbg !189
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @collection_authority_record, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"Option<Pubkey>", i64 0, i64 0)), !dbg !189
  %5 = call i8* @"sol.mpl_token_metadata::instruction::unverify_collection.7"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ID, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @ctx.accounts.metadata.key, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @ctx.accounts.collection_authority.key, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @ctx.accounts.collection_mint.key, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @ctx.accounts.collection.key, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @ctx.accounts.collection_master_edition_account.key, i64 0, i64 0), i8* %1), !dbg !191
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %5), !dbg !192
  %6 = call i8* @"sol.ToAccountInfos::to_account_infos.1"(i8* %0), !dbg !193
  %7 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !194
  %8 = call i8* @sol.map_err.2(i8* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !195
  ret i8* %0, !dbg !189
}

define i8* @"metadata::unverify_sized_collection_item.2"(i8* %0, i8* %1) !dbg !196 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @"CpiContext<'_,'_,'_,'info,UnverifySizedCollectionItem<'info>>", i64 0, i64 0)), !dbg !197
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @collection_authority_record, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"Option<Pubkey>", i64 0, i64 0)), !dbg !197
  %5 = call i8* @"sol.mpl_token_metadata::instruction::unverify_sized_collection_item.8"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ID, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @ctx.accounts.metadata.key, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @ctx.accounts.collection_authority.key, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @ctx.accounts.payer.key, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @ctx.accounts.collection_mint.key, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @ctx.accounts.collection.key, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @ctx.accounts.collection_master_edition_account.key, i64 0, i64 0), i8* %1), !dbg !199
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %5), !dbg !200
  %6 = call i8* @"sol.ToAccountInfos::to_account_infos.1"(i8* %0), !dbg !201
  %7 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !202
  %8 = call i8* @sol.map_err.2(i8* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !203
  ret i8* %0, !dbg !197
}

define i8* @sol.model.struct.anchor.ApproveCollectionAuthority(i8* %0) !dbg !204 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !205
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @collection_authority_record, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !207
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @new_collection_authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !208
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @update_authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !209
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @payer, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !210
  %7 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @metadata, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !211
  %8 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @mint, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !212
  ret i8* %0, !dbg !205
}

define i8* @sol.model.struct.anchor.BubblegumSetCollectionSize(i8* %0) !dbg !213 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !214
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @metadata_account, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !216
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @update_authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !217
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @mint, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !218
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @bubblegum_signer, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !219
  ret i8* %0, !dbg !214
}

define i8* @sol.model.struct.anchor.BurnEditionNft(i8* %0) !dbg !220 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !221
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @metadata, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !223
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @owner, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !224
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @print_edition_mint, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !225
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @master_edition_mint, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !226
  %7 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @print_edition_token, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !227
  %8 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @master_edition_token, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !228
  %9 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @master_edition, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !229
  %10 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @print_edition, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !230
  %11 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @edition_marker, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !231
  %12 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @spl_token, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !232
  ret i8* %0, !dbg !221
}

define i8* @sol.model.struct.anchor.BurnNft(i8* %0) !dbg !233 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !234
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @metadata, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !236
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @owner, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !237
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @mint, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !238
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @token, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !239
  %7 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @edition, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !240
  %8 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @spl_token, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !241
  ret i8* %0, !dbg !234
}

define i8* @sol.model.struct.anchor.CreateMetadataAccountsV3(i8* %0) !dbg !242 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !243
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @metadata, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !245
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @mint, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !246
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @mint_authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !247
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @payer, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !248
  %7 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @update_authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !249
  %8 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @system_program, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !250
  %9 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @rent, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !251
  ret i8* %0, !dbg !243
}

define i8* @sol.model.struct.anchor.UpdateMetadataAccountsV2(i8* %0) !dbg !252 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !253
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @metadata, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !255
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @update_authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !256
  ret i8* %0, !dbg !253
}

define i8* @sol.model.struct.anchor.CreateMasterEditionV3(i8* %0) !dbg !257 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !258
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @edition, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !260
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @mint, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !261
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @update_authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !262
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @mint_authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !263
  %7 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @payer, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !264
  %8 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @metadata, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !265
  %9 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @token_program, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !266
  %10 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @system_program, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !267
  %11 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @rent, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !268
  ret i8* %0, !dbg !258
}

define i8* @sol.model.struct.anchor.MintNewEditionFromMasterEditionViaToken(i8* %0) !dbg !269 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !270
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @new_metadata, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !272
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @new_edition, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !273
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @master_edition, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !274
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @new_mint, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !275
  %7 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @edition_mark_pda, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !276
  %8 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @new_mint_authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !277
  %9 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @payer, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !278
  %10 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @token_account_owner, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !279
  %11 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @token_account, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !280
  %12 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @new_metadata_update_authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !281
  %13 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @metadata, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !282
  %14 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @token_program, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !283
  %15 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @system_program, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !284
  %16 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @rent, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !285
  ret i8* %0, !dbg !270
}

define i8* @sol.model.struct.anchor.RevokeCollectionAuthority(i8* %0) !dbg !286 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !287
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @collection_authority_record, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !289
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @delegate_authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !290
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @revoke_authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !291
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @metadata, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !292
  %7 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @mint, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !293
  ret i8* %0, !dbg !287
}

define i8* @sol.model.struct.anchor.SetCollectionSize(i8* %0) !dbg !294 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !295
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @metadata, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !297
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @mint, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !298
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @update_authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !299
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @system_program, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !300
  ret i8* %0, !dbg !295
}

define i8* @sol.model.struct.anchor.SetTokenStandard(i8* %0) !dbg !301 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !302
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @metadata_account, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !304
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @update_authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !305
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @mint_account, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !306
  ret i8* %0, !dbg !302
}

define i8* @sol.model.struct.anchor.VerifyCollection(i8* %0) !dbg !307 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !308
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @payer, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !310
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @metadata, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !311
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @collection_authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !312
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @collection_mint, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !313
  %7 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @collection_metadata, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !314
  %8 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @collection_master_edition, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !315
  ret i8* %0, !dbg !308
}

define i8* @sol.model.struct.anchor.VerifySizedCollectionItem(i8* %0) !dbg !316 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !317
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @payer, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !319
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @metadata, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !320
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @collection_authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !321
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @collection_mint, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !322
  %7 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @collection_metadata, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !323
  %8 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @collection_master_edition, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !324
  ret i8* %0, !dbg !317
}

define i8* @sol.model.struct.anchor.SetAndVerifyCollection(i8* %0) !dbg !325 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !326
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @metadata, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !328
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @collection_authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !329
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @payer, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !330
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @update_authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !331
  %7 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @collection_mint, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !332
  %8 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @collection_metadata, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !333
  %9 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @collection_master_edition, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !334
  ret i8* %0, !dbg !326
}

define i8* @sol.model.struct.anchor.SetAndVerifySizedCollectionItem(i8* %0) !dbg !335 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !336
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @metadata, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !338
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @collection_authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !339
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @payer, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !340
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @update_authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !341
  %7 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @collection_mint, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !342
  %8 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @collection_metadata, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !343
  %9 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @collection_master_edition, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !344
  ret i8* %0, !dbg !336
}

define i8* @sol.model.struct.anchor.FreezeDelegatedAccount(i8* %0) !dbg !345 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !346
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @metadata, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !348
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @delegate, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !349
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @token_account, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !350
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @edition, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !351
  %7 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @mint, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !352
  %8 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @token_program, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !353
  ret i8* %0, !dbg !346
}

define i8* @sol.model.struct.anchor.ThawDelegatedAccount(i8* %0) !dbg !354 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !355
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @metadata, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !357
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @delegate, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !358
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @token_account, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !359
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @edition, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !360
  %7 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @mint, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !361
  %8 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @token_program, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !362
  ret i8* %0, !dbg !355
}

define i8* @sol.model.struct.anchor.UpdatePrimarySaleHappenedViaToken(i8* %0) !dbg !363 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !364
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @metadata, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !366
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @owner, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !367
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @token, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !368
  ret i8* %0, !dbg !364
}

define i8* @sol.model.struct.anchor.SignMetadata(i8* %0) !dbg !369 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !370
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @creator, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !372
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @metadata, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !373
  ret i8* %0, !dbg !370
}

define i8* @sol.model.struct.anchor.RemoveCreatorVerification(i8* %0) !dbg !374 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !375
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @creator, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !377
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @metadata, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !378
  ret i8* %0, !dbg !375
}

define i8* @sol.model.struct.anchor.Utilize(i8* %0) !dbg !379 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !380
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @metadata, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !382
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @token_account, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !383
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @mint, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !384
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @use_authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !385
  %7 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @owner, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !386
  ret i8* %0, !dbg !380
}

define i8* @sol.model.struct.anchor.UnverifyCollection(i8* %0) !dbg !387 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !388
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @metadata, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !390
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @collection_authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !391
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @collection_mint, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !392
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @collection, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !393
  %7 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @collection_master_edition_account, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !394
  ret i8* %0, !dbg !388
}

define i8* @sol.model.struct.anchor.UnverifySizedCollectionItem(i8* %0) !dbg !395 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !396
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @metadata, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !398
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @collection_authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !399
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @payer, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !400
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @collection_mint, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !401
  %7 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @collection, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !402
  %8 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @collection_master_edition_account, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !403
  ret i8* %0, !dbg !396
}

define i8* @"metadata::MetadataAccount::try_deserialize.anon.1"(i8* %0) !dbg !404 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !405
  %3 = call i8* @sol.into.1(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @"ErrorCode::AccountNotInitialized", i64 0, i64 0)), !dbg !407
  %4 = call i8* @sol.Err.1(i8* %3), !dbg !408
  %5 = call i8* @sol.return.1(i8* %4), !dbg !409
  ret i8* %0, !dbg !405
}

define i8* @"metadata::MetadataAccount::try_deserialize.1"(i8* %0) !dbg !410 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @buf, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"&mut&[u8]", i64 0, i64 0)), !dbg !411
  %3 = call i8* @"sol.Self::try_deserialize_unchecked.1"(i8* %0), !dbg !413
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @md, i64 0, i64 0), i8* %3), !dbg !414
  %4 = call i8* @"sol.mpl_token_metadata::state::Metadata::key.0"(), !dbg !415
  %5 = call i8* @"sol.!="(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @md.key, i64 0, i64 0), i8* %4), !dbg !416
  %6 = call i8* @sol.if(i8* %5), !dbg !417
  %7 = call i8* @"sol.metadata::MetadataAccount::try_deserialize.anon.1"(i8* %6), !dbg !418
  %8 = call i8* @sol.ifTrue.anon.(i8* %7), !dbg !418
  %9 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @md, i64 0, i64 0)), !dbg !419
  ret i8* %0, !dbg !411
}

define i8* @"metadata::MetadataAccount::try_deserialize_unchecked.1"(i8* %0) !dbg !420 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @buf, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"&mut&[u8]", i64 0, i64 0)), !dbg !421
  %3 = call i8* @"sol.mpl_token_metadata::state::Metadata::safe_deserialize.1"(i8* %0), !dbg !423
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @md, i64 0, i64 0), i8* %3), !dbg !424
  %4 = call i8* @sol.Self.1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @md, i64 0, i64 0)), !dbg !425
  %5 = call i8* @sol.Ok.1(i8* %4), !dbg !426
  ret i8* %0, !dbg !421
}

define i8* @"metadata::MetadataAccount::owner.0"(i8* %0) !dbg !427 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !428
  ret i8* %0, !dbg !428
}

define i8* @"metadata::MetadataAccount::deref.1"(i8* %0) !dbg !430 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0)), !dbg !431
  ret i8* %0, !dbg !431
}

define i8* @"metadata::MasterEditionAccount::try_deserialize.anon.1"(i8* %0) !dbg !433 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !434
  %3 = call i8* @sol.into.1(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @"ErrorCode::AccountNotInitialized", i64 0, i64 0)), !dbg !436
  %4 = call i8* @sol.Err.1(i8* %3), !dbg !437
  %5 = call i8* @sol.return.1(i8* %4), !dbg !438
  ret i8* %0, !dbg !434
}

define i8* @"metadata::MasterEditionAccount::try_deserialize.1"(i8* %0) !dbg !439 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @buf, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"&mut&[u8]", i64 0, i64 0)), !dbg !440
  %3 = call i8* @"sol.Self::try_deserialize_unchecked.1"(i8* %0), !dbg !442
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @me, i64 0, i64 0), i8* %3), !dbg !443
  %4 = call i8* @"sol.mpl_token_metadata::state::MasterEditionV2::key.0"(), !dbg !444
  %5 = call i8* @"sol.!="(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @me.key, i64 0, i64 0), i8* %4), !dbg !445
  %6 = call i8* @sol.if(i8* %5), !dbg !446
  %7 = call i8* @"sol.metadata::MasterEditionAccount::try_deserialize.anon.1"(i8* %6), !dbg !447
  %8 = call i8* @sol.ifTrue.anon.(i8* %7), !dbg !447
  %9 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @me, i64 0, i64 0)), !dbg !448
  ret i8* %0, !dbg !440
}

define i8* @"metadata::MasterEditionAccount::try_deserialize_unchecked.1"(i8* %0) !dbg !449 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @buf, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"&mut&[u8]", i64 0, i64 0)), !dbg !450
  %3 = call i8* @"sol.mpl_token_metadata::state::MasterEditionV2::safe_deserialize.1"(i8* %0), !dbg !452
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @result, i64 0, i64 0), i8* %3), !dbg !453
  %4 = call i8* @sol.Self.1(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @result, i64 0, i64 0)), !dbg !454
  %5 = call i8* @sol.Ok.1(i8* %4), !dbg !455
  ret i8* %0, !dbg !450
}

define i8* @"metadata::MasterEditionAccount::deref.1"(i8* %0) !dbg !456 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0)), !dbg !457
  ret i8* %0, !dbg !457
}

define i8* @"metadata::MasterEditionAccount::owner.0"(i8* %0) !dbg !459 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !460
  ret i8* %0, !dbg !460
}

define i8* @sol.model.struct.Metadata(i8* %0) !dbg !462 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !463
  ret i8* %0, !dbg !463
}

define i8* @"metadata::Metadata::id.0"(i8* %0) !dbg !465 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !466
  ret i8* %0, !dbg !466
}

define i8* @"token::transfer.2"(i8* %0, i8* %1) !dbg !468 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @"CpiContext<'_,'_,'_,'info,Transfer<'info>>", i64 0, i64 0)), !dbg !470
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @amount, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u64, i64 0, i64 0)), !dbg !470
  %5 = call i8* @"sol.spl_token::instruction::transfer.6"(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"spl_token::ID", i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @ctx.accounts.from.key, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @ctx.accounts.to.key, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @ctx.accounts.authority.key, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"[]", i64 0, i64 0), i8* %1), !dbg !472
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %5), !dbg !473
  %6 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @"[ctx.accounts.from.clone(),ctx.accounts.to.clone(),ctx.accounts.authority.clone(),]", i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !474
  %7 = call i8* @sol.map_err.2(i8* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !475
  ret i8* %0, !dbg !470
}

define i8* @"token::transfer_checked.3"(i8* %0, i8* %1, i8* %2) !dbg !476 {
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @"CpiContext<'_,'_,'_,'info,TransferChecked<'info>>", i64 0, i64 0)), !dbg !477
  %5 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @amount, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u64, i64 0, i64 0)), !dbg !477
  %6 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @decimals, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @u8, i64 0, i64 0)), !dbg !477
  %7 = call i8* @"sol.spl_token::instruction::transfer_checked.8"(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"spl_token::ID", i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @ctx.accounts.from.key, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @ctx.accounts.mint.key, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @ctx.accounts.to.key, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @ctx.accounts.authority.key, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"[]", i64 0, i64 0), i8* %1, i8* %2), !dbg !479
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %7), !dbg !480
  %8 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* getelementptr inbounds ([109 x i8], [109 x i8]* @"[ctx.accounts.from.clone(),ctx.accounts.mint.clone(),ctx.accounts.to.clone(),ctx.accounts.authority.clone(),]", i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !481
  %9 = call i8* @sol.map_err.2(i8* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !482
  ret i8* %0, !dbg !477
}

define i8* @"token::mint_to.2"(i8* %0, i8* %1) !dbg !483 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @"CpiContext<'_,'_,'_,'info,MintTo<'info>>", i64 0, i64 0)), !dbg !484
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @amount, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u64, i64 0, i64 0)), !dbg !484
  %5 = call i8* @"sol.spl_token::instruction::mint_to.6"(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"spl_token::ID", i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @ctx.accounts.mint.key, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @ctx.accounts.to.key, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @ctx.accounts.authority.key, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"[]", i64 0, i64 0), i8* %1), !dbg !486
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %5), !dbg !487
  %6 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @"[ctx.accounts.to.clone(),ctx.accounts.mint.clone(),ctx.accounts.authority.clone(),]", i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !488
  %7 = call i8* @sol.map_err.2(i8* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !489
  ret i8* %0, !dbg !484
}

define i8* @"token::burn.2"(i8* %0, i8* %1) !dbg !490 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @"CpiContext<'_,'_,'_,'info,Burn<'info>>", i64 0, i64 0)), !dbg !491
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @amount, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u64, i64 0, i64 0)), !dbg !491
  %5 = call i8* @"sol.spl_token::instruction::burn.6"(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"spl_token::ID", i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @ctx.accounts.from.key, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @ctx.accounts.mint.key, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @ctx.accounts.authority.key, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"[]", i64 0, i64 0), i8* %1), !dbg !493
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %5), !dbg !494
  %6 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @"[ctx.accounts.from.clone(),ctx.accounts.mint.clone(),ctx.accounts.authority.clone(),]", i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !495
  %7 = call i8* @sol.map_err.2(i8* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !496
  ret i8* %0, !dbg !491
}

define i8* @"token::approve.2"(i8* %0, i8* %1) !dbg !497 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @"CpiContext<'_,'_,'_,'info,Approve<'info>>", i64 0, i64 0)), !dbg !498
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @amount, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u64, i64 0, i64 0)), !dbg !498
  %5 = call i8* @"sol.spl_token::instruction::approve.6"(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"spl_token::ID", i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @ctx.accounts.to.key, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @ctx.accounts.delegate.key, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @ctx.accounts.authority.key, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"[]", i64 0, i64 0), i8* %1), !dbg !500
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %5), !dbg !501
  %6 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @"[ctx.accounts.to.clone(),ctx.accounts.delegate.clone(),ctx.accounts.authority.clone(),]", i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !502
  %7 = call i8* @sol.map_err.2(i8* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !503
  ret i8* %0, !dbg !498
}

define i8* @"token::approve_checked.3"(i8* %0, i8* %1, i8* %2) !dbg !504 {
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @"CpiContext<'_,'_,'_,'info,ApproveChecked<'info>>", i64 0, i64 0)), !dbg !505
  %5 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @amount, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u64, i64 0, i64 0)), !dbg !505
  %6 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @decimals, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @u8, i64 0, i64 0)), !dbg !505
  %7 = call i8* @"sol.spl_token::instruction::approve_checked.8"(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"spl_token::ID", i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @ctx.accounts.to.key, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @ctx.accounts.mint.key, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @ctx.accounts.delegate.key, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @ctx.accounts.authority.key, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"[]", i64 0, i64 0), i8* %1, i8* %2), !dbg !507
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %7), !dbg !508
  %8 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* getelementptr inbounds ([113 x i8], [113 x i8]* @"[ctx.accounts.to.clone(),ctx.accounts.mint.clone(),ctx.accounts.delegate.clone(),ctx.accounts.authority.clone(),]", i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !509
  %9 = call i8* @sol.map_err.2(i8* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !510
  ret i8* %0, !dbg !505
}

define i8* @"token::revoke.1"(i8* %0) !dbg !511 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @"CpiContext<'_,'_,'_,'info,Revoke<'info>>", i64 0, i64 0)), !dbg !512
  %3 = call i8* @"sol.spl_token::instruction::revoke.4"(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"spl_token::ID", i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @ctx.accounts.source.key, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @ctx.accounts.authority.key, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"[]", i64 0, i64 0)), !dbg !514
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %3), !dbg !515
  %4 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @"[ctx.accounts.source.clone(),ctx.accounts.authority.clone()]", i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !516
  %5 = call i8* @sol.map_err.2(i8* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !517
  ret i8* %0, !dbg !512
}

define i8* @"token::initialize_account.1"(i8* %0) !dbg !518 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @"CpiContext<'_,'_,'_,'info,InitializeAccount<'info>>", i64 0, i64 0)), !dbg !519
  %3 = call i8* @"sol.spl_token::instruction::initialize_account.4"(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"spl_token::ID", i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @ctx.accounts.account.key, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @ctx.accounts.mint.key, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @ctx.accounts.authority.key, i64 0, i64 0)), !dbg !521
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %3), !dbg !522
  %4 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* getelementptr inbounds ([114 x i8], [114 x i8]* @"[ctx.accounts.account.clone(),ctx.accounts.mint.clone(),ctx.accounts.authority.clone(),ctx.accounts.rent.clone(),]", i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !523
  %5 = call i8* @sol.map_err.2(i8* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !524
  ret i8* %0, !dbg !519
}

define i8* @"token::initialize_account3.1"(i8* %0) !dbg !525 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @"CpiContext<'_,'_,'_,'info,InitializeAccount3<'info>>", i64 0, i64 0)), !dbg !526
  %3 = call i8* @"sol.spl_token::instruction::initialize_account3.4"(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"spl_token::ID", i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @ctx.accounts.account.key, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @ctx.accounts.mint.key, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @ctx.accounts.authority.key, i64 0, i64 0)), !dbg !528
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %3), !dbg !529
  %4 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @"[ctx.accounts.account.clone(),ctx.accounts.mint.clone()]", i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !530
  %5 = call i8* @sol.map_err.2(i8* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !531
  ret i8* %0, !dbg !526
}

define i8* @"token::close_account.1"(i8* %0) !dbg !532 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @"CpiContext<'_,'_,'_,'info,CloseAccount<'info>>", i64 0, i64 0)), !dbg !533
  %3 = call i8* @"sol.spl_token::instruction::close_account.5"(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"spl_token::ID", i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @ctx.accounts.account.key, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @ctx.accounts.destination.key, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @ctx.accounts.authority.key, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"[]", i64 0, i64 0)), !dbg !535
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %3), !dbg !536
  %4 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* getelementptr inbounds ([95 x i8], [95 x i8]* @"[ctx.accounts.account.clone(),ctx.accounts.destination.clone(),ctx.accounts.authority.clone(),]", i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !537
  %5 = call i8* @sol.map_err.2(i8* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !538
  ret i8* %0, !dbg !533
}

define i8* @"token::freeze_account.1"(i8* %0) !dbg !539 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @"CpiContext<'_,'_,'_,'info,FreezeAccount<'info>>", i64 0, i64 0)), !dbg !540
  %3 = call i8* @"sol.spl_token::instruction::freeze_account.5"(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"spl_token::ID", i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @ctx.accounts.account.key, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @ctx.accounts.mint.key, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @ctx.accounts.authority.key, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"[]", i64 0, i64 0)), !dbg !542
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %3), !dbg !543
  %4 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @"[ctx.accounts.account.clone(),ctx.accounts.mint.clone(),ctx.accounts.authority.clone(),]", i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !544
  %5 = call i8* @sol.map_err.2(i8* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !545
  ret i8* %0, !dbg !540
}

define i8* @"token::thaw_account.1"(i8* %0) !dbg !546 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @"CpiContext<'_,'_,'_,'info,ThawAccount<'info>>", i64 0, i64 0)), !dbg !547
  %3 = call i8* @"sol.spl_token::instruction::thaw_account.5"(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"spl_token::ID", i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @ctx.accounts.account.key, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @ctx.accounts.mint.key, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @ctx.accounts.authority.key, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"[]", i64 0, i64 0)), !dbg !549
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %3), !dbg !550
  %4 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @"[ctx.accounts.account.clone(),ctx.accounts.mint.clone(),ctx.accounts.authority.clone(),]", i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !551
  %5 = call i8* @sol.map_err.2(i8* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !552
  ret i8* %0, !dbg !547
}

define i8* @"token::initialize_mint.4"(i8* %0, i8* %1, i8* %2, i8* %3) !dbg !553 {
  %5 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @"CpiContext<'_,'_,'_,'info,InitializeMint<'info>>", i64 0, i64 0)), !dbg !554
  %6 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @decimals, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @u8, i64 0, i64 0)), !dbg !554
  %7 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @authority, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&Pubkey", i64 0, i64 0)), !dbg !554
  %8 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @freeze_authority, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"Option<&Pubkey>", i64 0, i64 0)), !dbg !554
  %9 = call i8* @"sol.spl_token::instruction::initialize_mint.5"(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"spl_token::ID", i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @ctx.accounts.mint.key, i64 0, i64 0), i8* %2, i8* %3, i8* %1), !dbg !556
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %9), !dbg !557
  %10 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @"[ctx.accounts.mint.clone(),ctx.accounts.rent.clone()]", i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !558
  %11 = call i8* @sol.map_err.2(i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !559
  ret i8* %0, !dbg !554
}

define i8* @"token::initialize_mint2.4"(i8* %0, i8* %1, i8* %2, i8* %3) !dbg !560 {
  %5 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @"CpiContext<'_,'_,'_,'info,InitializeMint2<'info>>", i64 0, i64 0)), !dbg !561
  %6 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @decimals, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @u8, i64 0, i64 0)), !dbg !561
  %7 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @authority, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&Pubkey", i64 0, i64 0)), !dbg !561
  %8 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @freeze_authority, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"Option<&Pubkey>", i64 0, i64 0)), !dbg !561
  %9 = call i8* @"sol.spl_token::instruction::initialize_mint2.5"(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"spl_token::ID", i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @ctx.accounts.mint.key, i64 0, i64 0), i8* %2, i8* %3, i8* %1), !dbg !563
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %9), !dbg !564
  %10 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"[ctx.accounts.mint.clone()]", i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !565
  %11 = call i8* @sol.map_err.2(i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !566
  ret i8* %0, !dbg !561
}

define i8* @"token::set_authority.anon.1"(i8* %0) !dbg !567 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !568
  %3 = call i8* @sol.as_ref.1(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @new_authority, i64 0, i64 0)), !dbg !570
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @spl_new_authority, i64 0, i64 0), i8* %3), !dbg !571
  ret i8* %0, !dbg !568
}

define i8* @"token::set_authority.3"(i8* %0, i8* %1, i8* %2) !dbg !572 {
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @"CpiContext<'_,'_,'_,'info,SetAuthority<'info>>", i64 0, i64 0)), !dbg !573
  %5 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @authority_type, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @"spl_token::instruction::AuthorityType", i64 0, i64 0)), !dbg !573
  %6 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @new_authority, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"Option<Pubkey>", i64 0, i64 0)), !dbg !573
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @spl_new_authority, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @None, i64 0, i64 0)), !dbg !575
  %7 = call i8* @sol.is_some.1(i8* %2), !dbg !576
  %8 = call i8* @sol.if(i8* %7), !dbg !577
  %9 = call i8* @"sol.token::set_authority.anon.1"(i8* %8), !dbg !578
  %10 = call i8* @sol.ifTrue.anon.(i8* %9), !dbg !578
  %11 = call i8* @"sol.spl_token::instruction::set_authority.6"(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"spl_token::ID", i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @ctx.accounts.account_or_mint.key, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @spl_new_authority, i64 0, i64 0), i8* %1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @ctx.accounts.current_authority.key, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"[]", i64 0, i64 0)), !dbg !579
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %11), !dbg !580
  %12 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @"[ctx.accounts.account_or_mint.clone(),ctx.accounts.current_authority.clone(),]", i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !581
  %13 = call i8* @sol.map_err.2(i8* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !582
  ret i8* %0, !dbg !573
}

define i8* @"token::sync_native.1"(i8* %0) !dbg !583 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @"CpiContext<'_,'_,'_,'info,SyncNative<'info>>", i64 0, i64 0)), !dbg !584
  %3 = call i8* @"sol.spl_token::instruction::sync_native.2"(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"spl_token::ID", i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @ctx.accounts.account.key, i64 0, i64 0)), !dbg !586
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %3), !dbg !587
  %4 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"[ctx.accounts.account.clone()]", i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !588
  %5 = call i8* @sol.map_err.2(i8* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !589
  ret i8* %0, !dbg !584
}

define i8* @sol.model.struct.anchor.Transfer(i8* %0) !dbg !590 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !591
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @from, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !593
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @to, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !594
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !595
  ret i8* %0, !dbg !591
}

define i8* @sol.model.struct.anchor.TransferChecked(i8* %0) !dbg !596 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !597
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @from, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !599
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @mint, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !600
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @to, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !601
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !602
  ret i8* %0, !dbg !597
}

define i8* @sol.model.struct.anchor.MintTo(i8* %0) !dbg !603 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !604
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @mint, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !606
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @to, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !607
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !608
  ret i8* %0, !dbg !604
}

define i8* @sol.model.struct.anchor.Burn(i8* %0) !dbg !609 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !610
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @mint, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !612
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @from, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !613
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !614
  ret i8* %0, !dbg !610
}

define i8* @sol.model.struct.anchor.Approve(i8* %0) !dbg !615 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !616
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @to, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !618
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @delegate, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !619
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !620
  ret i8* %0, !dbg !616
}

define i8* @sol.model.struct.anchor.ApproveChecked(i8* %0) !dbg !621 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !622
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @to, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !624
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @mint, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !625
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @delegate, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !626
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !627
  ret i8* %0, !dbg !622
}

define i8* @sol.model.struct.anchor.Revoke(i8* %0) !dbg !628 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !629
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @source, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !631
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !632
  ret i8* %0, !dbg !629
}

define i8* @sol.model.struct.anchor.InitializeAccount(i8* %0) !dbg !633 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !634
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @account, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !636
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @mint, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !637
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !638
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @rent, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !639
  ret i8* %0, !dbg !634
}

define i8* @sol.model.struct.anchor.InitializeAccount3(i8* %0) !dbg !640 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !641
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @account, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !643
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @mint, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !644
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !645
  ret i8* %0, !dbg !641
}

define i8* @sol.model.struct.anchor.CloseAccount(i8* %0) !dbg !646 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !647
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @account, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !649
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @destination, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !650
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !651
  ret i8* %0, !dbg !647
}

define i8* @sol.model.struct.anchor.FreezeAccount(i8* %0) !dbg !652 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !653
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @account, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !655
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @mint, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !656
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !657
  ret i8* %0, !dbg !653
}

define i8* @sol.model.struct.anchor.ThawAccount(i8* %0) !dbg !658 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !659
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @account, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !661
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @mint, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !662
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !663
  ret i8* %0, !dbg !659
}

define i8* @sol.model.struct.anchor.InitializeMint(i8* %0) !dbg !664 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !665
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @mint, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !667
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @rent, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !668
  ret i8* %0, !dbg !665
}

define i8* @sol.model.struct.anchor.InitializeMint2(i8* %0) !dbg !669 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !670
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @mint, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !672
  ret i8* %0, !dbg !670
}

define i8* @sol.model.struct.anchor.SetAuthority(i8* %0) !dbg !673 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !674
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @current_authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !676
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @account_or_mint, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !677
  ret i8* %0, !dbg !674
}

define i8* @sol.model.struct.anchor.SyncNative(i8* %0) !dbg !678 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !679
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @account, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !681
  ret i8* %0, !dbg !679
}

define i8* @"token::TokenAccount::try_deserialize_unchecked.1"(i8* %0) !dbg !682 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @buf, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"&mut&[u8]", i64 0, i64 0)), !dbg !683
  %3 = call i8* @"sol.spl_token::state::Account::unpack.1"(i8* %0), !dbg !685
  %4 = call i8* @sol.map.2(i8* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @TokenAccount, i64 0, i64 0)), !dbg !686
  %5 = call i8* @sol.map_err.2(i8* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !687
  ret i8* %0, !dbg !683
}

define i8* @"token::TokenAccount::owner.0"(i8* %0) !dbg !688 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !689
  ret i8* %0, !dbg !689
}

define i8* @"token::TokenAccount::deref.1"(i8* %0) !dbg !691 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0)), !dbg !692
  ret i8* %0, !dbg !692
}

define i8* @"token::Mint::try_deserialize_unchecked.1"(i8* %0) !dbg !694 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @buf, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"&mut&[u8]", i64 0, i64 0)), !dbg !695
  %3 = call i8* @"sol.spl_token::state::Mint::unpack.1"(i8* %0), !dbg !697
  %4 = call i8* @sol.map.2(i8* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @Mint, i64 0, i64 0)), !dbg !698
  %5 = call i8* @sol.map_err.2(i8* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !699
  ret i8* %0, !dbg !695
}

define i8* @"token::Mint::owner.0"(i8* %0) !dbg !700 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !701
  ret i8* %0, !dbg !701
}

define i8* @"token::Mint::deref.1"(i8* %0) !dbg !703 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0)), !dbg !704
  ret i8* %0, !dbg !704
}

define i8* @sol.model.struct.Token(i8* %0) !dbg !706 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !707
  ret i8* %0, !dbg !707
}

define i8* @"token::Token::id.0"(i8* %0) !dbg !709 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !710
  ret i8* %0, !dbg !710
}

define i8* @"accessor::amount.1"(i8* %0) !dbg !712 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @account, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"&AccountInfo", i64 0, i64 0)), !dbg !713
  %3 = call i8* @sol.try_borrow_data.1(i8* %0), !dbg !715
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @bytes, i64 0, i64 0), i8* %3), !dbg !716
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @amount_bytes, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"[0u8;8]", i64 0, i64 0)), !dbg !717
  %4 = call i8* @sol.copy_from_slice.2(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @amount_bytes, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @bytes, i64 0, i64 0)), !dbg !718
  %5 = call i8* @"sol.u64::from_le_bytes.1"(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @amount_bytes, i64 0, i64 0)), !dbg !719
  %6 = call i8* @sol.Ok.1(i8* %5), !dbg !720
  ret i8* %0, !dbg !713
}

define i8* @"accessor::mint.1"(i8* %0) !dbg !721 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @account, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"&AccountInfo", i64 0, i64 0)), !dbg !722
  %3 = call i8* @sol.try_borrow_data.1(i8* %0), !dbg !724
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @bytes, i64 0, i64 0), i8* %3), !dbg !725
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @mint_bytes, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"[0u8;32]", i64 0, i64 0)), !dbg !726
  %4 = call i8* @sol.copy_from_slice.2(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @mint_bytes, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @bytes, i64 0, i64 0)), !dbg !727
  %5 = call i8* @"sol.Pubkey::new_from_array.1"(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @mint_bytes, i64 0, i64 0)), !dbg !728
  %6 = call i8* @sol.Ok.1(i8* %5), !dbg !729
  ret i8* %0, !dbg !722
}

define i8* @"accessor::authority.1"(i8* %0) !dbg !730 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @account, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"&AccountInfo", i64 0, i64 0)), !dbg !731
  %3 = call i8* @sol.try_borrow_data.1(i8* %0), !dbg !733
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @bytes, i64 0, i64 0), i8* %3), !dbg !734
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @owner_bytes, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"[0u8;32]", i64 0, i64 0)), !dbg !735
  %4 = call i8* @sol.copy_from_slice.2(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @owner_bytes, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @bytes, i64 0, i64 0)), !dbg !736
  %5 = call i8* @"sol.Pubkey::new_from_array.1"(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @owner_bytes, i64 0, i64 0)), !dbg !737
  %6 = call i8* @sol.Ok.1(i8* %5), !dbg !738
  ret i8* %0, !dbg !731
}

define i8* @"shmem::ret.2"(i8* %0, i8* %1) !dbg !739 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @"CpiContext<'a,'b,'c,'info,Ret<'info>>", i64 0, i64 0)), !dbg !741
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @data, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"Vec<u8>", i64 0, i64 0)), !dbg !741
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @program_id, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @ctx.program.key, i64 0, i64 0)), !dbg !743
  %5 = call i8* @"sol.model.macro.vec.!1"(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @"[AccountMeta::new(*ctx.accounts.buffer.key,false)]", i64 0, i64 0)), !dbg !744
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @accounts, i64 0, i64 0), i8* %5), !dbg !745
  %6 = call i8* @sol.model.struct.new.Instruction.3(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @program_id, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @accounts, i64 0, i64 0), i8* %1), !dbg !746
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @instruction, i64 0, i64 0), i8* %6), !dbg !747
  %7 = call i8* @"sol.model.macro.vec.!1"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"[ctx.accounts.buffer]", i64 0, i64 0)), !dbg !748
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @accounts, i64 0, i64 0), i8* %7), !dbg !749
  %8 = call i8* @sol.clone.1(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @ctx.program, i64 0, i64 0)), !dbg !750
  %9 = call i8* @sol.push.2(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @accounts, i64 0, i64 0), i8* %8), !dbg !751
  %10 = call i8* @"sol.program::invoke.2"(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @instruction, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @accounts, i64 0, i64 0)), !dbg !752
  ret i8* %0, !dbg !741
}

define i8* @sol.model.struct.anchor.Ret(i8* %0) !dbg !753 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !754
  %3 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @mut, i64 0, i64 0)), !dbg !756
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @buffer, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !757
  ret i8* %0, !dbg !754
}

define i8* @sol.model.struct.anchor.Shmem(i8* %0) !dbg !758 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !759
  %3 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @"mut,constraint=shmem.owner==shmem_program.key", i64 0, i64 0)), !dbg !761
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @shmem, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !762
  %5 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @"constraint=shmem_program.key==&ID", i64 0, i64 0)), !dbg !763
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @shmem_program, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !764
  ret i8* %0, !dbg !759
}

define i8* @"stake::authorize.anon.1"(i8* %0) !dbg !765 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !767
  %3 = call i8* @sol.push.2(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @account_infos, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @c, i64 0, i64 0)), !dbg !769
  ret i8* %0, !dbg !767
}

define i8* @"stake::authorize.3"(i8* %0, i8* %1, i8* %2) !dbg !770 {
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @"CpiContext<'_,'_,'_,'info,Authorize<'info>>", i64 0, i64 0)), !dbg !771
  %5 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @stake_authorize, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @StakeAuthorize, i64 0, i64 0)), !dbg !771
  %6 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @custodian, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"Option<AccountInfo<'info>>", i64 0, i64 0)), !dbg !771
  %7 = call i8* @sol.as_ref.1(i8* %2), !dbg !773
  %8 = call i8* @sol.map.2(i8* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @c.key, i64 0, i64 0)), !dbg !774
  %9 = call i8* @"sol.stake::instruction::authorize.5"(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @ctx.accounts.stake.key, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @ctx.accounts.authorized.key, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @ctx.accounts.new_authorized.key, i64 0, i64 0), i8* %1, i8* %8), !dbg !775
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %9), !dbg !776
  %10 = call i8* @"sol.model.macro.vec.!1"(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @"[ctx.accounts.stake,ctx.accounts.clock,ctx.accounts.authorized,]", i64 0, i64 0)), !dbg !777
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @account_infos, i64 0, i64 0), i8* %10), !dbg !778
  call void @sol.model.opaqueAssign(i8* %2, i8* %2), !dbg !779
  %11 = call i8* @"sol.stake::authorize.anon.1"(i8* %2), !dbg !780
  %12 = call i8* @sol.ifTrue.anon.(i8* %11), !dbg !780
  %13 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @account_infos, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !781
  %14 = call i8* @sol.map_err.2(i8* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !782
  ret i8* %0, !dbg !771
}

define i8* @"stake::withdraw.anon.1"(i8* %0) !dbg !783 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !784
  %3 = call i8* @sol.push.2(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @account_infos, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @c, i64 0, i64 0)), !dbg !786
  ret i8* %0, !dbg !784
}

define i8* @"stake::withdraw.3"(i8* %0, i8* %1, i8* %2) !dbg !787 {
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @"CpiContext<'_,'_,'_,'info,Withdraw<'info>>", i64 0, i64 0)), !dbg !788
  %5 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @amount, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u64, i64 0, i64 0)), !dbg !788
  %6 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @custodian, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"Option<AccountInfo<'info>>", i64 0, i64 0)), !dbg !788
  %7 = call i8* @sol.as_ref.1(i8* %2), !dbg !790
  %8 = call i8* @sol.map.2(i8* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @c.key, i64 0, i64 0)), !dbg !791
  %9 = call i8* @"sol.stake::instruction::withdraw.5"(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @ctx.accounts.stake.key, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @ctx.accounts.withdrawer.key, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @ctx.accounts.to.key, i64 0, i64 0), i8* %1, i8* %8), !dbg !792
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %9), !dbg !793
  %10 = call i8* @"sol.model.macro.vec.!1"(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @"[ctx.accounts.stake,ctx.accounts.to,ctx.accounts.clock,ctx.accounts.stake_history,ctx.accounts.withdrawer,]", i64 0, i64 0)), !dbg !794
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @account_infos, i64 0, i64 0), i8* %10), !dbg !795
  call void @sol.model.opaqueAssign(i8* %2, i8* %2), !dbg !796
  %11 = call i8* @"sol.stake::withdraw.anon.1"(i8* %2), !dbg !797
  %12 = call i8* @sol.ifTrue.anon.(i8* %11), !dbg !797
  %13 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @account_infos, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !798
  %14 = call i8* @sol.map_err.2(i8* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !799
  ret i8* %0, !dbg !788
}

define i8* @"stake::deactivate_stake.1"(i8* %0) !dbg !800 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @"CpiContext<'_,'_,'_,'info,DeactivateStake<'info>>", i64 0, i64 0)), !dbg !801
  %3 = call i8* @"sol.stake::instruction::deactivate_stake.2"(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @ctx.accounts.stake.key, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @ctx.accounts.staker.key, i64 0, i64 0)), !dbg !803
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %3), !dbg !804
  %4 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @"[ctx.accounts.stake,ctx.accounts.clock,ctx.accounts.staker]", i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !805
  %5 = call i8* @sol.map_err.2(i8* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !806
  ret i8* %0, !dbg !801
}

define i8* @sol.model.struct.anchor.Authorize(i8* %0) !dbg !807 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !808
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @stake, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !810
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @authorized, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !811
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @new_authorized, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !812
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @clock, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !813
  ret i8* %0, !dbg !808
}

define i8* @sol.model.struct.anchor.Withdraw(i8* %0) !dbg !814 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !815
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @stake, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !817
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @withdrawer, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !818
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @to, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !819
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @clock, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !820
  %7 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @stake_history, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !821
  ret i8* %0, !dbg !815
}

define i8* @sol.model.struct.anchor.DeactivateStake(i8* %0) !dbg !822 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !823
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @stake, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !825
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @staker, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !826
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @clock, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !827
  ret i8* %0, !dbg !823
}

define i8* @"stake::StakeAccount::try_deserialize.1"(i8* %0) !dbg !828 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @buf, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"&mut&[u8]", i64 0, i64 0)), !dbg !829
  %3 = call i8* @"sol.Self::try_deserialize_unchecked.1"(i8* %0), !dbg !831
  ret i8* %0, !dbg !829
}

define i8* @"stake::StakeAccount::try_deserialize_unchecked.1"(i8* %0) !dbg !832 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @buf, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"&mut&[u8]", i64 0, i64 0)), !dbg !833
  %3 = call i8* @"sol.StakeState::deserialize.1"(i8* %0), !dbg !835
  %4 = call i8* @sol.map.2(i8* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @Self, i64 0, i64 0)), !dbg !836
  %5 = call i8* @sol.map_err.2(i8* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !837
  ret i8* %0, !dbg !833
}

define i8* @"stake::StakeAccount::owner.0"(i8* %0) !dbg !838 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !839
  ret i8* %0, !dbg !839
}

define i8* @"stake::StakeAccount::deref.1"(i8* %0) !dbg !841 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0)), !dbg !842
  ret i8* %0, !dbg !842
}

define i8* @sol.model.struct.Stake(i8* %0) !dbg !844 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !845
  ret i8* %0, !dbg !845
}

define i8* @"stake::Stake::id.0"(i8* %0) !dbg !847 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !848
  ret i8* %0, !dbg !848
}

define i8* @"associated_token::create.1"(i8* %0) !dbg !850 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @"CpiContext<'_,'_,'_,'info,Create<'info>>", i64 0, i64 0)), !dbg !852
  %3 = call i8* @"sol.spl_associated_token_account::instruction::create_associated_token_account.4"(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @ctx.accounts.payer.key, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @ctx.accounts.authority.key, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @ctx.accounts.mint.key, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @ctx.accounts.token_program.key, i64 0, i64 0)), !dbg !854
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %3), !dbg !855
  %4 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* getelementptr inbounds ([147 x i8], [147 x i8]* @"[ctx.accounts.payer,ctx.accounts.associated_token,ctx.accounts.authority,ctx.accounts.mint,ctx.accounts.system_program,ctx.accounts.token_program,]", i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !856
  %5 = call i8* @sol.map_err.2(i8* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !857
  ret i8* %0, !dbg !852
}

define i8* @"associated_token::create_idempotent.1"(i8* %0) !dbg !858 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @"CpiContext<'_,'_,'_,'info,CreateIdempotent<'info>>", i64 0, i64 0)), !dbg !859
  %3 = call i8* @"sol.spl_associated_token_account::instruction::create_associated_token_account_idempotent.4"(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @ctx.accounts.payer.key, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @ctx.accounts.authority.key, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @ctx.accounts.mint.key, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @ctx.accounts.token_program.key, i64 0, i64 0)), !dbg !861
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %3), !dbg !862
  %4 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* getelementptr inbounds ([147 x i8], [147 x i8]* @"[ctx.accounts.payer,ctx.accounts.associated_token,ctx.accounts.authority,ctx.accounts.mint,ctx.accounts.system_program,ctx.accounts.token_program,]", i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !863
  %5 = call i8* @sol.map_err.2(i8* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !864
  ret i8* %0, !dbg !859
}

define i8* @sol.model.struct.anchor.Create(i8* %0) !dbg !865 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !866
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @payer, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !868
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @associated_token, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !869
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !870
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @mint, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !871
  %7 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @system_program, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !872
  %8 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @token_program, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !873
  ret i8* %0, !dbg !866
}

define i8* @sol.model.struct.AssociatedToken(i8* %0) !dbg !874 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !875
  ret i8* %0, !dbg !875
}

define i8* @"associated_token::AssociatedToken::id.0"(i8* %0) !dbg !877 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !878
  ret i8* %0, !dbg !878
}

define i8* @"token_2022::transfer.2"(i8* %0, i8* %1) !dbg !880 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @"CpiContext<'_,'_,'_,'info,Transfer<'info>>", i64 0, i64 0)), !dbg !882
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @amount, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u64, i64 0, i64 0)), !dbg !882
  %5 = call i8* @"sol.spl_token_2022::instruction::transfer.6"(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @ctx.program.key, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @ctx.accounts.from.key, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @ctx.accounts.to.key, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @ctx.accounts.authority.key, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"[]", i64 0, i64 0), i8* %1), !dbg !884
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %5), !dbg !885
  %6 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @"[ctx.accounts.from.clone(),ctx.accounts.to.clone(),ctx.accounts.authority.clone(),]", i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !886
  %7 = call i8* @sol.map_err.2(i8* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !887
  ret i8* %0, !dbg !882
}

define i8* @"token_2022::transfer_checked.3"(i8* %0, i8* %1, i8* %2) !dbg !888 {
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @"CpiContext<'_,'_,'_,'info,TransferChecked<'info>>", i64 0, i64 0)), !dbg !889
  %5 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @amount, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u64, i64 0, i64 0)), !dbg !889
  %6 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @decimals, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @u8, i64 0, i64 0)), !dbg !889
  %7 = call i8* @"sol.spl_token_2022::instruction::transfer_checked.8"(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @ctx.program.key, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @ctx.accounts.from.key, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @ctx.accounts.mint.key, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @ctx.accounts.to.key, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @ctx.accounts.authority.key, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"[]", i64 0, i64 0), i8* %1, i8* %2), !dbg !891
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %7), !dbg !892
  %8 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* getelementptr inbounds ([109 x i8], [109 x i8]* @"[ctx.accounts.from.clone(),ctx.accounts.mint.clone(),ctx.accounts.to.clone(),ctx.accounts.authority.clone(),]", i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !893
  %9 = call i8* @sol.map_err.2(i8* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !894
  ret i8* %0, !dbg !889
}

define i8* @"token_2022::mint_to.2"(i8* %0, i8* %1) !dbg !895 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @"CpiContext<'_,'_,'_,'info,MintTo<'info>>", i64 0, i64 0)), !dbg !896
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @amount, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u64, i64 0, i64 0)), !dbg !896
  %5 = call i8* @"sol.spl_token_2022::instruction::mint_to.6"(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @ctx.program.key, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @ctx.accounts.mint.key, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @ctx.accounts.to.key, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @ctx.accounts.authority.key, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"[]", i64 0, i64 0), i8* %1), !dbg !898
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %5), !dbg !899
  %6 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @"[ctx.accounts.to.clone(),ctx.accounts.mint.clone(),ctx.accounts.authority.clone(),]", i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !900
  %7 = call i8* @sol.map_err.2(i8* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !901
  ret i8* %0, !dbg !896
}

define i8* @"token_2022::burn.2"(i8* %0, i8* %1) !dbg !902 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @"CpiContext<'_,'_,'_,'info,Burn<'info>>", i64 0, i64 0)), !dbg !903
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @amount, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u64, i64 0, i64 0)), !dbg !903
  %5 = call i8* @"sol.spl_token_2022::instruction::burn.6"(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @ctx.program.key, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @ctx.accounts.from.key, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @ctx.accounts.mint.key, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @ctx.accounts.authority.key, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"[]", i64 0, i64 0), i8* %1), !dbg !905
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %5), !dbg !906
  %6 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @"[ctx.accounts.from.clone(),ctx.accounts.mint.clone(),ctx.accounts.authority.clone(),]", i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !907
  %7 = call i8* @sol.map_err.2(i8* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !908
  ret i8* %0, !dbg !903
}

define i8* @"token_2022::approve.2"(i8* %0, i8* %1) !dbg !909 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @"CpiContext<'_,'_,'_,'info,Approve<'info>>", i64 0, i64 0)), !dbg !910
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @amount, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u64, i64 0, i64 0)), !dbg !910
  %5 = call i8* @"sol.spl_token_2022::instruction::approve.6"(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @ctx.program.key, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @ctx.accounts.to.key, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @ctx.accounts.delegate.key, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @ctx.accounts.authority.key, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"[]", i64 0, i64 0), i8* %1), !dbg !912
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %5), !dbg !913
  %6 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @"[ctx.accounts.to.clone(),ctx.accounts.delegate.clone(),ctx.accounts.authority.clone(),]", i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !914
  %7 = call i8* @sol.map_err.2(i8* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !915
  ret i8* %0, !dbg !910
}

define i8* @"token_2022::revoke.1"(i8* %0) !dbg !916 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @"CpiContext<'_,'_,'_,'info,Revoke<'info>>", i64 0, i64 0)), !dbg !917
  %3 = call i8* @"sol.spl_token_2022::instruction::revoke.4"(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @ctx.program.key, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @ctx.accounts.source.key, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @ctx.accounts.authority.key, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"[]", i64 0, i64 0)), !dbg !919
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %3), !dbg !920
  %4 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @"[ctx.accounts.source.clone(),ctx.accounts.authority.clone()]", i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !921
  %5 = call i8* @sol.map_err.2(i8* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !922
  ret i8* %0, !dbg !917
}

define i8* @"token_2022::initialize_account.1"(i8* %0) !dbg !923 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @"CpiContext<'_,'_,'_,'info,InitializeAccount<'info>>", i64 0, i64 0)), !dbg !924
  %3 = call i8* @"sol.spl_token_2022::instruction::initialize_account.4"(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @ctx.program.key, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @ctx.accounts.account.key, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @ctx.accounts.mint.key, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @ctx.accounts.authority.key, i64 0, i64 0)), !dbg !926
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %3), !dbg !927
  %4 = call i8* @"sol.solana_program::program::invoke.2"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* getelementptr inbounds ([114 x i8], [114 x i8]* @"[ctx.accounts.account.clone(),ctx.accounts.mint.clone(),ctx.accounts.authority.clone(),ctx.accounts.rent.clone(),]", i64 0, i64 0)), !dbg !928
  %5 = call i8* @sol.map_err.2(i8* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !929
  ret i8* %0, !dbg !924
}

define i8* @"token_2022::initialize_account3.1"(i8* %0) !dbg !930 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @"CpiContext<'_,'_,'_,'info,InitializeAccount3<'info>>", i64 0, i64 0)), !dbg !931
  %3 = call i8* @"sol.spl_token_2022::instruction::initialize_account3.4"(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @ctx.program.key, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @ctx.accounts.account.key, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @ctx.accounts.mint.key, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @ctx.accounts.authority.key, i64 0, i64 0)), !dbg !933
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %3), !dbg !934
  %4 = call i8* @"sol.solana_program::program::invoke.2"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @"[ctx.accounts.account.clone(),ctx.accounts.mint.clone()]", i64 0, i64 0)), !dbg !935
  %5 = call i8* @sol.map_err.2(i8* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !936
  ret i8* %0, !dbg !931
}

define i8* @"token_2022::close_account.1"(i8* %0) !dbg !937 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @"CpiContext<'_,'_,'_,'info,CloseAccount<'info>>", i64 0, i64 0)), !dbg !938
  %3 = call i8* @"sol.spl_token_2022::instruction::close_account.5"(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @ctx.program.key, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @ctx.accounts.account.key, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @ctx.accounts.destination.key, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @ctx.accounts.authority.key, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"[]", i64 0, i64 0)), !dbg !940
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %3), !dbg !941
  %4 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* getelementptr inbounds ([95 x i8], [95 x i8]* @"[ctx.accounts.account.clone(),ctx.accounts.destination.clone(),ctx.accounts.authority.clone(),]", i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !942
  %5 = call i8* @sol.map_err.2(i8* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !943
  ret i8* %0, !dbg !938
}

define i8* @"token_2022::freeze_account.1"(i8* %0) !dbg !944 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @"CpiContext<'_,'_,'_,'info,FreezeAccount<'info>>", i64 0, i64 0)), !dbg !945
  %3 = call i8* @"sol.spl_token_2022::instruction::freeze_account.5"(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @ctx.program.key, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @ctx.accounts.account.key, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @ctx.accounts.mint.key, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @ctx.accounts.authority.key, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"[]", i64 0, i64 0)), !dbg !947
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %3), !dbg !948
  %4 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @"[ctx.accounts.account.clone(),ctx.accounts.mint.clone(),ctx.accounts.authority.clone(),]", i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !949
  %5 = call i8* @sol.map_err.2(i8* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !950
  ret i8* %0, !dbg !945
}

define i8* @"token_2022::thaw_account.1"(i8* %0) !dbg !951 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @"CpiContext<'_,'_,'_,'info,ThawAccount<'info>>", i64 0, i64 0)), !dbg !952
  %3 = call i8* @"sol.spl_token_2022::instruction::thaw_account.5"(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @ctx.program.key, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @ctx.accounts.account.key, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @ctx.accounts.mint.key, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @ctx.accounts.authority.key, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"[]", i64 0, i64 0)), !dbg !954
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %3), !dbg !955
  %4 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @"[ctx.accounts.account.clone(),ctx.accounts.mint.clone(),ctx.accounts.authority.clone(),]", i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !956
  %5 = call i8* @sol.map_err.2(i8* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !957
  ret i8* %0, !dbg !952
}

define i8* @"token_2022::initialize_mint.4"(i8* %0, i8* %1, i8* %2, i8* %3) !dbg !958 {
  %5 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @"CpiContext<'_,'_,'_,'info,InitializeMint<'info>>", i64 0, i64 0)), !dbg !959
  %6 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @decimals, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @u8, i64 0, i64 0)), !dbg !959
  %7 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @authority, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&Pubkey", i64 0, i64 0)), !dbg !959
  %8 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @freeze_authority, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"Option<&Pubkey>", i64 0, i64 0)), !dbg !959
  %9 = call i8* @"sol.spl_token_2022::instruction::initialize_mint.5"(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @ctx.program.key, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @ctx.accounts.mint.key, i64 0, i64 0), i8* %2, i8* %3, i8* %1), !dbg !961
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %9), !dbg !962
  %10 = call i8* @"sol.solana_program::program::invoke.2"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @"[ctx.accounts.mint.clone(),ctx.accounts.rent.clone()]", i64 0, i64 0)), !dbg !963
  %11 = call i8* @sol.map_err.2(i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !964
  ret i8* %0, !dbg !959
}

define i8* @"token_2022::initialize_mint2.4"(i8* %0, i8* %1, i8* %2, i8* %3) !dbg !965 {
  %5 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @"CpiContext<'_,'_,'_,'info,InitializeMint2<'info>>", i64 0, i64 0)), !dbg !966
  %6 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @decimals, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @u8, i64 0, i64 0)), !dbg !966
  %7 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @authority, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&Pubkey", i64 0, i64 0)), !dbg !966
  %8 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @freeze_authority, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"Option<&Pubkey>", i64 0, i64 0)), !dbg !966
  %9 = call i8* @"sol.spl_token_2022::instruction::initialize_mint2.5"(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @ctx.program.key, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @ctx.accounts.mint.key, i64 0, i64 0), i8* %2, i8* %3, i8* %1), !dbg !968
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %9), !dbg !969
  %10 = call i8* @"sol.solana_program::program::invoke.2"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"[ctx.accounts.mint.clone()]", i64 0, i64 0)), !dbg !970
  %11 = call i8* @sol.map_err.2(i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !971
  ret i8* %0, !dbg !966
}

define i8* @"token_2022::set_authority.anon.1"(i8* %0) !dbg !972 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !973
  %3 = call i8* @sol.as_ref.1(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @new_authority, i64 0, i64 0)), !dbg !975
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @spl_new_authority, i64 0, i64 0), i8* %3), !dbg !976
  ret i8* %0, !dbg !973
}

define i8* @"token_2022::set_authority.3"(i8* %0, i8* %1, i8* %2) !dbg !977 {
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @"CpiContext<'_,'_,'_,'info,SetAuthority<'info>>", i64 0, i64 0)), !dbg !978
  %5 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @authority_type, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @"spl_token_2022::instruction::AuthorityType", i64 0, i64 0)), !dbg !978
  %6 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @new_authority, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"Option<Pubkey>", i64 0, i64 0)), !dbg !978
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @spl_new_authority, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @None, i64 0, i64 0)), !dbg !980
  %7 = call i8* @sol.is_some.1(i8* %2), !dbg !981
  %8 = call i8* @sol.if(i8* %7), !dbg !982
  %9 = call i8* @"sol.token_2022::set_authority.anon.1"(i8* %8), !dbg !983
  %10 = call i8* @sol.ifTrue.anon.(i8* %9), !dbg !983
  %11 = call i8* @"sol.spl_token_2022::instruction::set_authority.6"(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @ctx.program.key, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @ctx.accounts.account_or_mint.key, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @spl_new_authority, i64 0, i64 0), i8* %1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @ctx.accounts.current_authority.key, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"[]", i64 0, i64 0)), !dbg !984
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %11), !dbg !985
  %12 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @"[ctx.accounts.account_or_mint.clone(),ctx.accounts.current_authority.clone(),]", i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !986
  %13 = call i8* @sol.map_err.2(i8* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !987
  ret i8* %0, !dbg !978
}

define i8* @"token_2022::sync_native.1"(i8* %0) !dbg !988 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @"CpiContext<'_,'_,'_,'info,SyncNative<'info>>", i64 0, i64 0)), !dbg !989
  %3 = call i8* @"sol.spl_token_2022::instruction::sync_native.2"(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @ctx.program.key, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @ctx.accounts.account.key, i64 0, i64 0)), !dbg !991
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %3), !dbg !992
  %4 = call i8* @"sol.solana_program::program::invoke.2"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"[ctx.accounts.account.clone()]", i64 0, i64 0)), !dbg !993
  %5 = call i8* @sol.map_err.2(i8* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !994
  ret i8* %0, !dbg !989
}

define i8* @"token_2022::get_account_data_size.anon.1"(i8* %0) !dbg !995 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !996
  %3 = call i8* @sol.Err.1(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @"solana_program::program_error::ProgramError::IncorrectProgramId", i64 0, i64 0)), !dbg !998
  ret i8* %0, !dbg !996
}

define i8* @"token_2022::get_account_data_size.anon.3"(i8* %0) !dbg !999 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1000
  ret i8* %0, !dbg !1000
}

define i8* @"token_2022::get_account_data_size.anon.2"(i8* %0) !dbg !1002 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1003
  %3 = call i8* @sol.try_into.1(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @data, i64 0, i64 0)), !dbg !1005
  %4 = call i8* @sol.map.2(i8* %3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"u64::from_le_bytes", i64 0, i64 0)), !dbg !1006
  %5 = call i8* @"sol.token_2022::get_account_data_size.anon.3"(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @"solana_program::program_error::ProgramError::InvalidInstructionData", i64 0, i64 0)), !dbg !1007
  %6 = call i8* @sol.ifTrue.anon.(i8* %5), !dbg !1007
  %7 = call i8* @sol.map_err.2(i8* %4, i8* %6), !dbg !1008
  ret i8* %0, !dbg !1003
}

define i8* @"token_2022::get_account_data_size.anon.5"(i8* %0) !dbg !1009 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1010
  %3 = call i8* @sol.Err.1(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @"solana_program::program_error::ProgramError::IncorrectProgramId", i64 0, i64 0)), !dbg !1012
  ret i8* %0, !dbg !1010
}

define i8* @"token_2022::get_account_data_size.anon.7"(i8* %0) !dbg !1013 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1014
  ret i8* %0, !dbg !1014
}

define i8* @"token_2022::get_account_data_size.anon.6"(i8* %0) !dbg !1016 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1017
  %3 = call i8* @sol.try_into.1(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @data, i64 0, i64 0)), !dbg !1019
  %4 = call i8* @sol.map.2(i8* %3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"u64::from_le_bytes", i64 0, i64 0)), !dbg !1020
  %5 = call i8* @"sol.token_2022::get_account_data_size.anon.7"(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @"solana_program::program_error::ProgramError::InvalidInstructionData", i64 0, i64 0)), !dbg !1021
  %6 = call i8* @sol.ifTrue.anon.(i8* %5), !dbg !1021
  %7 = call i8* @sol.map_err.2(i8* %4, i8* %6), !dbg !1022
  ret i8* %0, !dbg !1017
}

define i8* @"token_2022::get_account_data_size.anon.4"(i8* %0) !dbg !1023 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1024
  %3 = call i8* @"sol.!="(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @key, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @ctx.program.key, i64 0, i64 0)), !dbg !1026
  %4 = call i8* @sol.if(i8* %3), !dbg !1027
  %5 = call i8* @"sol.token_2022::get_account_data_size.anon.5"(i8* %4), !dbg !1028
  %6 = call i8* @sol.ifTrue.anon.(i8* %5), !dbg !1028
  %7 = call i8* @"sol.token_2022::get_account_data_size.anon.6"(i8* %6), !dbg !1029
  %8 = call i8* @sol.ifFalse.anon.(i8* %7), !dbg !1029
  ret i8* %0, !dbg !1024
}

define i8* @"token_2022::get_account_data_size.2"(i8* %0, i8* %1) !dbg !1030 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @"CpiContext<'_,'_,'_,'info,GetAccountDataSize<'info>>", i64 0, i64 0)), !dbg !1031
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @extension_types, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @"&[spl_token_2022::extension::ExtensionType]", i64 0, i64 0)), !dbg !1031
  %5 = call i8* @"sol.spl_token_2022::instruction::get_account_data_size.3"(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @ctx.program.key, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @ctx.accounts.mint.key, i64 0, i64 0), i8* %1), !dbg !1033
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %5), !dbg !1034
  %6 = call i8* @"sol.solana_program::program::invoke.2"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"[ctx.accounts.mint.clone()]", i64 0, i64 0)), !dbg !1035
  %7 = call i8* @"sol.solana_program::program::get_return_data.0"(), !dbg !1036
  %8 = call i8* @sol.ok_or.2(i8* %7, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @"solana_program::program_error::ProgramError::InvalidInstructionData", i64 0, i64 0)), !dbg !1037
  %9 = call i8* @"sol.!="(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @key, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @ctx.program.key, i64 0, i64 0)), !dbg !1038
  %10 = call i8* @sol.if(i8* %9), !dbg !1039
  %11 = call i8* @"sol.token_2022::get_account_data_size.anon.1"(i8* %10), !dbg !1040
  %12 = call i8* @sol.ifTrue.anon.(i8* %11), !dbg !1040
  %13 = call i8* @"sol.token_2022::get_account_data_size.anon.2"(i8* %12), !dbg !1041
  %14 = call i8* @sol.ifFalse.anon.(i8* %13), !dbg !1041
  %15 = call i8* @"sol.token_2022::get_account_data_size.anon.4"(i8* %14), !dbg !1042
  %16 = call i8* @sol.ifTrue.anon.(i8* %15), !dbg !1042
  %17 = call i8* @sol.and_then.2(i8* %8, i8* %16), !dbg !1043
  %18 = call i8* @sol.map_err.2(i8* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !1044
  ret i8* %0, !dbg !1031
}

define i8* @"token_2022::initialize_mint_close_authority.2"(i8* %0, i8* %1) !dbg !1045 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @"CpiContext<'_,'_,'_,'info,InitializeMintCloseAuthority<'info>>", i64 0, i64 0)), !dbg !1046
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @close_authority, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"Option<&Pubkey>", i64 0, i64 0)), !dbg !1046
  %5 = call i8* @"sol.spl_token_2022::instruction::initialize_mint_close_authority.3"(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @ctx.program.key, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @ctx.accounts.mint.key, i64 0, i64 0), i8* %1), !dbg !1048
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %5), !dbg !1049
  %6 = call i8* @"sol.solana_program::program::invoke.2"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"[ctx.accounts.mint.clone()]", i64 0, i64 0)), !dbg !1050
  %7 = call i8* @sol.map_err.2(i8* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !1051
  ret i8* %0, !dbg !1046
}

define i8* @"token_2022::initialize_immutable_owner.1"(i8* %0) !dbg !1052 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @"CpiContext<'_,'_,'_,'info,InitializeImmutableOwner<'info>>", i64 0, i64 0)), !dbg !1053
  %3 = call i8* @"sol.spl_token_2022::instruction::initialize_immutable_owner.2"(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @ctx.program.key, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @ctx.accounts.account.key, i64 0, i64 0)), !dbg !1055
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %3), !dbg !1056
  %4 = call i8* @"sol.solana_program::program::invoke.2"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"[ctx.accounts.account.clone()]", i64 0, i64 0)), !dbg !1057
  %5 = call i8* @sol.map_err.2(i8* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !1058
  ret i8* %0, !dbg !1053
}

define i8* @"token_2022::amount_to_ui_amount.anon.1"(i8* %0) !dbg !1059 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1060
  %3 = call i8* @sol.Err.1(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @"solana_program::program_error::ProgramError::IncorrectProgramId", i64 0, i64 0)), !dbg !1062
  ret i8* %0, !dbg !1060
}

define i8* @"token_2022::amount_to_ui_amount.anon.3"(i8* %0) !dbg !1063 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1064
  ret i8* %0, !dbg !1064
}

define i8* @"token_2022::amount_to_ui_amount.anon.2"(i8* %0) !dbg !1066 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1067
  %3 = call i8* @"sol.String::from_utf8.1"(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @data, i64 0, i64 0)), !dbg !1069
  %4 = call i8* @"sol.token_2022::amount_to_ui_amount.anon.3"(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @"solana_program::program_error::ProgramError::InvalidInstructionData", i64 0, i64 0)), !dbg !1070
  %5 = call i8* @sol.ifTrue.anon.(i8* %4), !dbg !1070
  %6 = call i8* @sol.map_err.2(i8* %3, i8* %5), !dbg !1071
  ret i8* %0, !dbg !1067
}

define i8* @"token_2022::amount_to_ui_amount.anon.5"(i8* %0) !dbg !1072 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1073
  %3 = call i8* @sol.Err.1(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @"solana_program::program_error::ProgramError::IncorrectProgramId", i64 0, i64 0)), !dbg !1075
  ret i8* %0, !dbg !1073
}

define i8* @"token_2022::amount_to_ui_amount.anon.7"(i8* %0) !dbg !1076 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1077
  ret i8* %0, !dbg !1077
}

define i8* @"token_2022::amount_to_ui_amount.anon.6"(i8* %0) !dbg !1079 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1080
  %3 = call i8* @"sol.String::from_utf8.1"(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @data, i64 0, i64 0)), !dbg !1082
  %4 = call i8* @"sol.token_2022::amount_to_ui_amount.anon.7"(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @"solana_program::program_error::ProgramError::InvalidInstructionData", i64 0, i64 0)), !dbg !1083
  %5 = call i8* @sol.ifTrue.anon.(i8* %4), !dbg !1083
  %6 = call i8* @sol.map_err.2(i8* %3, i8* %5), !dbg !1084
  ret i8* %0, !dbg !1080
}

define i8* @"token_2022::amount_to_ui_amount.anon.4"(i8* %0) !dbg !1085 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1086
  %3 = call i8* @"sol.!="(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @key, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @ctx.program.key, i64 0, i64 0)), !dbg !1088
  %4 = call i8* @sol.if(i8* %3), !dbg !1089
  %5 = call i8* @"sol.token_2022::amount_to_ui_amount.anon.5"(i8* %4), !dbg !1090
  %6 = call i8* @sol.ifTrue.anon.(i8* %5), !dbg !1090
  %7 = call i8* @"sol.token_2022::amount_to_ui_amount.anon.6"(i8* %6), !dbg !1091
  %8 = call i8* @sol.ifFalse.anon.(i8* %7), !dbg !1091
  ret i8* %0, !dbg !1086
}

define i8* @"token_2022::amount_to_ui_amount.2"(i8* %0, i8* %1) !dbg !1092 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @"CpiContext<'_,'_,'_,'info,AmountToUiAmount<'info>>", i64 0, i64 0)), !dbg !1093
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @amount, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u64, i64 0, i64 0)), !dbg !1093
  %5 = call i8* @"sol.spl_token_2022::instruction::amount_to_ui_amount.3"(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @ctx.program.key, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @ctx.accounts.account.key, i64 0, i64 0), i8* %1), !dbg !1095
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %5), !dbg !1096
  %6 = call i8* @"sol.solana_program::program::invoke.2"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"[ctx.accounts.account.clone()]", i64 0, i64 0)), !dbg !1097
  %7 = call i8* @"sol.solana_program::program::get_return_data.0"(), !dbg !1098
  %8 = call i8* @sol.ok_or.2(i8* %7, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @"solana_program::program_error::ProgramError::InvalidInstructionData", i64 0, i64 0)), !dbg !1099
  %9 = call i8* @"sol.!="(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @key, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @ctx.program.key, i64 0, i64 0)), !dbg !1100
  %10 = call i8* @sol.if(i8* %9), !dbg !1101
  %11 = call i8* @"sol.token_2022::amount_to_ui_amount.anon.1"(i8* %10), !dbg !1102
  %12 = call i8* @sol.ifTrue.anon.(i8* %11), !dbg !1102
  %13 = call i8* @"sol.token_2022::amount_to_ui_amount.anon.2"(i8* %12), !dbg !1103
  %14 = call i8* @sol.ifFalse.anon.(i8* %13), !dbg !1103
  %15 = call i8* @"sol.token_2022::amount_to_ui_amount.anon.4"(i8* %14), !dbg !1104
  %16 = call i8* @sol.ifTrue.anon.(i8* %15), !dbg !1104
  %17 = call i8* @sol.and_then.2(i8* %8, i8* %16), !dbg !1105
  %18 = call i8* @sol.map_err.2(i8* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !1106
  ret i8* %0, !dbg !1093
}

define i8* @"token_2022::ui_amount_to_amount.anon.1"(i8* %0) !dbg !1107 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1108
  %3 = call i8* @sol.Err.1(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @"solana_program::program_error::ProgramError::IncorrectProgramId", i64 0, i64 0)), !dbg !1110
  ret i8* %0, !dbg !1108
}

define i8* @"token_2022::ui_amount_to_amount.anon.3"(i8* %0) !dbg !1111 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1112
  ret i8* %0, !dbg !1112
}

define i8* @"token_2022::ui_amount_to_amount.anon.2"(i8* %0) !dbg !1114 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1115
  %3 = call i8* @sol.try_into.1(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @data, i64 0, i64 0)), !dbg !1117
  %4 = call i8* @sol.map.2(i8* %3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"u64::from_le_bytes", i64 0, i64 0)), !dbg !1118
  %5 = call i8* @"sol.token_2022::ui_amount_to_amount.anon.3"(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @"solana_program::program_error::ProgramError::InvalidInstructionData", i64 0, i64 0)), !dbg !1119
  %6 = call i8* @sol.ifTrue.anon.(i8* %5), !dbg !1119
  %7 = call i8* @sol.map_err.2(i8* %4, i8* %6), !dbg !1120
  ret i8* %0, !dbg !1115
}

define i8* @"token_2022::ui_amount_to_amount.anon.5"(i8* %0) !dbg !1121 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1122
  %3 = call i8* @sol.Err.1(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @"solana_program::program_error::ProgramError::IncorrectProgramId", i64 0, i64 0)), !dbg !1124
  ret i8* %0, !dbg !1122
}

define i8* @"token_2022::ui_amount_to_amount.anon.7"(i8* %0) !dbg !1125 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1126
  ret i8* %0, !dbg !1126
}

define i8* @"token_2022::ui_amount_to_amount.anon.6"(i8* %0) !dbg !1128 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1129
  %3 = call i8* @sol.try_into.1(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @data, i64 0, i64 0)), !dbg !1131
  %4 = call i8* @sol.map.2(i8* %3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"u64::from_le_bytes", i64 0, i64 0)), !dbg !1132
  %5 = call i8* @"sol.token_2022::ui_amount_to_amount.anon.7"(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @"solana_program::program_error::ProgramError::InvalidInstructionData", i64 0, i64 0)), !dbg !1133
  %6 = call i8* @sol.ifTrue.anon.(i8* %5), !dbg !1133
  %7 = call i8* @sol.map_err.2(i8* %4, i8* %6), !dbg !1134
  ret i8* %0, !dbg !1129
}

define i8* @"token_2022::ui_amount_to_amount.anon.4"(i8* %0) !dbg !1135 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1136
  %3 = call i8* @"sol.!="(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @key, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @ctx.program.key, i64 0, i64 0)), !dbg !1138
  %4 = call i8* @sol.if(i8* %3), !dbg !1139
  %5 = call i8* @"sol.token_2022::ui_amount_to_amount.anon.5"(i8* %4), !dbg !1140
  %6 = call i8* @sol.ifTrue.anon.(i8* %5), !dbg !1140
  %7 = call i8* @"sol.token_2022::ui_amount_to_amount.anon.6"(i8* %6), !dbg !1141
  %8 = call i8* @sol.ifFalse.anon.(i8* %7), !dbg !1141
  ret i8* %0, !dbg !1136
}

define i8* @"token_2022::ui_amount_to_amount.2"(i8* %0, i8* %1) !dbg !1142 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @"CpiContext<'_,'_,'_,'info,UiAmountToAmount<'info>>", i64 0, i64 0)), !dbg !1143
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @ui_amount, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"&str", i64 0, i64 0)), !dbg !1143
  %5 = call i8* @"sol.spl_token_2022::instruction::ui_amount_to_amount.3"(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @ctx.program.key, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @ctx.accounts.account.key, i64 0, i64 0), i8* %1), !dbg !1145
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %5), !dbg !1146
  %6 = call i8* @"sol.solana_program::program::invoke.2"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"[ctx.accounts.account.clone()]", i64 0, i64 0)), !dbg !1147
  %7 = call i8* @"sol.solana_program::program::get_return_data.0"(), !dbg !1148
  %8 = call i8* @sol.ok_or.2(i8* %7, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @"solana_program::program_error::ProgramError::InvalidInstructionData", i64 0, i64 0)), !dbg !1149
  %9 = call i8* @"sol.!="(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @key, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @ctx.program.key, i64 0, i64 0)), !dbg !1150
  %10 = call i8* @sol.if(i8* %9), !dbg !1151
  %11 = call i8* @"sol.token_2022::ui_amount_to_amount.anon.1"(i8* %10), !dbg !1152
  %12 = call i8* @sol.ifTrue.anon.(i8* %11), !dbg !1152
  %13 = call i8* @"sol.token_2022::ui_amount_to_amount.anon.2"(i8* %12), !dbg !1153
  %14 = call i8* @sol.ifFalse.anon.(i8* %13), !dbg !1153
  %15 = call i8* @"sol.token_2022::ui_amount_to_amount.anon.4"(i8* %14), !dbg !1154
  %16 = call i8* @sol.ifTrue.anon.(i8* %15), !dbg !1154
  %17 = call i8* @sol.and_then.2(i8* %8, i8* %16), !dbg !1155
  %18 = call i8* @sol.map_err.2(i8* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !1156
  ret i8* %0, !dbg !1143
}

define i8* @"sol.model.struct.anchor.Transfer$1"(i8* %0) !dbg !1157 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1158
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @from, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1160
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @to, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1161
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1162
  ret i8* %0, !dbg !1158
}

define i8* @"sol.model.struct.anchor.TransferChecked$1"(i8* %0) !dbg !1163 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1164
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @from, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1166
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @mint, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1167
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @to, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1168
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1169
  ret i8* %0, !dbg !1164
}

define i8* @"sol.model.struct.anchor.MintTo$1"(i8* %0) !dbg !1170 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1171
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @mint, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1173
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @to, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1174
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1175
  ret i8* %0, !dbg !1171
}

define i8* @"sol.model.struct.anchor.Burn$1"(i8* %0) !dbg !1176 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1177
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @mint, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1179
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @from, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1180
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1181
  ret i8* %0, !dbg !1177
}

define i8* @"sol.model.struct.anchor.Approve$1"(i8* %0) !dbg !1182 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1183
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @to, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1185
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @delegate, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1186
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1187
  ret i8* %0, !dbg !1183
}

define i8* @"sol.model.struct.anchor.Revoke$1"(i8* %0) !dbg !1188 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1189
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @source, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1191
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1192
  ret i8* %0, !dbg !1189
}

define i8* @"sol.model.struct.anchor.InitializeAccount$1"(i8* %0) !dbg !1193 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1194
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @account, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1196
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @mint, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1197
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1198
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @rent, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1199
  ret i8* %0, !dbg !1194
}

define i8* @"sol.model.struct.anchor.InitializeAccount3$1"(i8* %0) !dbg !1200 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1201
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @account, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1203
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @mint, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1204
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1205
  ret i8* %0, !dbg !1201
}

define i8* @"sol.model.struct.anchor.CloseAccount$1"(i8* %0) !dbg !1206 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1207
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @account, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1209
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @destination, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1210
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1211
  ret i8* %0, !dbg !1207
}

define i8* @"sol.model.struct.anchor.FreezeAccount$1"(i8* %0) !dbg !1212 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1213
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @account, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1215
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @mint, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1216
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1217
  ret i8* %0, !dbg !1213
}

define i8* @"sol.model.struct.anchor.ThawAccount$1"(i8* %0) !dbg !1218 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1219
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @account, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1221
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @mint, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1222
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1223
  ret i8* %0, !dbg !1219
}

define i8* @"sol.model.struct.anchor.InitializeMint$1"(i8* %0) !dbg !1224 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1225
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @mint, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1227
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @rent, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1228
  ret i8* %0, !dbg !1225
}

define i8* @"sol.model.struct.anchor.InitializeMint2$1"(i8* %0) !dbg !1229 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1230
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @mint, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1232
  ret i8* %0, !dbg !1230
}

define i8* @"sol.model.struct.anchor.SetAuthority$1"(i8* %0) !dbg !1233 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1234
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @current_authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1236
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @account_or_mint, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1237
  ret i8* %0, !dbg !1234
}

define i8* @"sol.model.struct.anchor.SyncNative$1"(i8* %0) !dbg !1238 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1239
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @account, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1241
  ret i8* %0, !dbg !1239
}

define i8* @sol.model.struct.anchor.GetAccountDataSize(i8* %0) !dbg !1242 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1243
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @mint, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1245
  ret i8* %0, !dbg !1243
}

define i8* @sol.model.struct.anchor.InitializeMintCloseAuthority(i8* %0) !dbg !1246 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1247
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @mint, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1249
  ret i8* %0, !dbg !1247
}

define i8* @sol.model.struct.anchor.InitializeImmutableOwner(i8* %0) !dbg !1250 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1251
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @account, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1253
  ret i8* %0, !dbg !1251
}

define i8* @sol.model.struct.anchor.AmountToUiAmount(i8* %0) !dbg !1254 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1255
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @account, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1257
  ret i8* %0, !dbg !1255
}

define i8* @sol.model.struct.anchor.UiAmountToAmount(i8* %0) !dbg !1258 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1259
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @account, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1261
  ret i8* %0, !dbg !1259
}

define i8* @sol.model.struct.Token2022(i8* %0) !dbg !1262 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1263
  ret i8* %0, !dbg !1263
}

define i8* @"token_2022::Token2022::id.0"(i8* %0) !dbg !1265 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1266
  ret i8* %0, !dbg !1266
}

define i8* @"token_interface::TokenAccount::try_deserialize_unchecked.1"(i8* %0) !dbg !1268 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @buf, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"&mut&[u8]", i64 0, i64 0)), !dbg !1270
  %3 = call i8* @"sol.spl_token_2022::extension::StateWithExtensions::unpack.1"(i8* %0), !dbg !1272
  %4 = call i8* @sol.TokenAccount.1(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @t.base, i64 0, i64 0)), !dbg !1273
  %5 = call i8* @sol.map.2(i8* %3, i8* %4), !dbg !1274
  %6 = call i8* @sol.map_err.2(i8* %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !1275
  ret i8* %0, !dbg !1270
}

define i8* @"token_interface::TokenAccount::owners.0"(i8* %0) !dbg !1276 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1277
  ret i8* %0, !dbg !1277
}

define i8* @"token_interface::TokenAccount::deref.1"(i8* %0) !dbg !1279 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0)), !dbg !1280
  ret i8* %0, !dbg !1280
}

define i8* @"token_interface::Mint::try_deserialize_unchecked.1"(i8* %0) !dbg !1282 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @buf, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"&mut&[u8]", i64 0, i64 0)), !dbg !1283
  %3 = call i8* @"sol.spl_token_2022::extension::StateWithExtensions::unpack.1"(i8* %0), !dbg !1285
  %4 = call i8* @sol.Mint.1(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @t.base, i64 0, i64 0)), !dbg !1286
  %5 = call i8* @sol.map.2(i8* %3, i8* %4), !dbg !1287
  %6 = call i8* @sol.map_err.2(i8* %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"Into::into", i64 0, i64 0)), !dbg !1288
  ret i8* %0, !dbg !1283
}

define i8* @"token_interface::Mint::owners.0"(i8* %0) !dbg !1289 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1290
  ret i8* %0, !dbg !1290
}

define i8* @"token_interface::Mint::deref.1"(i8* %0) !dbg !1292 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0)), !dbg !1293
  ret i8* %0, !dbg !1293
}

define i8* @sol.model.struct.TokenInterface(i8* %0) !dbg !1295 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1296
  ret i8* %0, !dbg !1296
}

define i8* @"token_interface::TokenInterface::ids.0"(i8* %0) !dbg !1298 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1299
  ret i8* %0, !dbg !1299
}

define i8* @"dex::new_order_v3.9"(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8) !dbg !1301 {
  %10 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @"CpiContext<'_,'_,'_,'info,NewOrderV3<'info>>", i64 0, i64 0)), !dbg !1303
  %11 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @side, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @Side, i64 0, i64 0)), !dbg !1303
  %12 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @limit_price, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @NonZeroU64, i64 0, i64 0)), !dbg !1303
  %13 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @max_coin_qty, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @NonZeroU64, i64 0, i64 0)), !dbg !1303
  %14 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @max_native_pc_qty_including_fees, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @NonZeroU64, i64 0, i64 0)), !dbg !1303
  %15 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @self_trade_behavior, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @SelfTradeBehavior, i64 0, i64 0)), !dbg !1303
  %16 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @order_type, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @OrderType, i64 0, i64 0)), !dbg !1303
  %17 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @client_order_id, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u64, i64 0, i64 0)), !dbg !1303
  %18 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @limit, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u16, i64 0, i64 0)), !dbg !1303
  %19 = call i8* @sol.get.2(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @ctx.remaining_accounts, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"0", i64 0, i64 0)), !dbg !1305
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @referral, i64 0, i64 0), i8* %19), !dbg !1306
  %20 = call i8* @sol.map.2(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @referral, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @r.key, i64 0, i64 0)), !dbg !1307
  %21 = call i8* @"sol.serum_dex::instruction::new_order.22"(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @ctx.accounts.market.key, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @ctx.accounts.open_orders.key, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @ctx.accounts.request_queue.key, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @ctx.accounts.event_queue.key, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @ctx.accounts.market_bids.key, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @ctx.accounts.market_asks.key, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @ctx.accounts.order_payer_token_account.key, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @ctx.accounts.open_orders_authority.key, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @ctx.accounts.coin_vault.key, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @ctx.accounts.pc_vault.key, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @ctx.accounts.token_program.key, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @ctx.accounts.rent.key, i64 0, i64 0), i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ID, i64 0, i64 0), i8* %1, i8* %2, i8* %3, i8* %6, i8* %7, i8* %5, i8* %8, i8* %4), !dbg !1308
  %22 = call i8* @"sol.ProgramError::from.1"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @pe, i64 0, i64 0)), !dbg !1309
  %23 = call i8* @sol.map_err.2(i8* %21, i8* %22), !dbg !1310
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %23), !dbg !1311
  %24 = call i8* @"sol.ToAccountInfos::to_account_infos.1"(i8* %0), !dbg !1312
  %25 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !1313
  %26 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"()", i64 0, i64 0)), !dbg !1314
  ret i8* %0, !dbg !1303
}

define i8* @"dex::cancel_order_v2.3"(i8* %0, i8* %1, i8* %2) !dbg !1315 {
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @"CpiContext<'_,'_,'_,'info,CancelOrderV2<'info>>", i64 0, i64 0)), !dbg !1316
  %5 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @side, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @Side, i64 0, i64 0)), !dbg !1316
  %6 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @order_id, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @u128, i64 0, i64 0)), !dbg !1316
  %7 = call i8* @"sol.serum_dex::instruction::cancel_order.9"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ID, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @ctx.accounts.market.key, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @ctx.accounts.market_bids.key, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @ctx.accounts.market_asks.key, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @ctx.accounts.open_orders.key, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @ctx.accounts.open_orders_authority.key, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @ctx.accounts.event_queue.key, i64 0, i64 0), i8* %1, i8* %2), !dbg !1318
  %8 = call i8* @"sol.ProgramError::from.1"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @pe, i64 0, i64 0)), !dbg !1319
  %9 = call i8* @sol.map_err.2(i8* %7, i8* %8), !dbg !1320
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %9), !dbg !1321
  %10 = call i8* @"sol.ToAccountInfos::to_account_infos.1"(i8* %0), !dbg !1322
  %11 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !1323
  %12 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"()", i64 0, i64 0)), !dbg !1324
  ret i8* %0, !dbg !1316
}

define i8* @"dex::settle_funds.1"(i8* %0) !dbg !1325 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @"CpiContext<'_,'_,'_,'info,SettleFunds<'info>>", i64 0, i64 0)), !dbg !1326
  %3 = call i8* @sol.get.2(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @ctx.remaining_accounts, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"0", i64 0, i64 0)), !dbg !1328
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @referral, i64 0, i64 0), i8* %3), !dbg !1329
  %4 = call i8* @sol.map.2(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @referral, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @r.key, i64 0, i64 0)), !dbg !1330
  %5 = call i8* @"sol.serum_dex::instruction::settle_funds.11"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ID, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @ctx.accounts.market.key, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @ctx.accounts.token_program.key, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @ctx.accounts.open_orders.key, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @ctx.accounts.open_orders_authority.key, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @ctx.accounts.coin_vault.key, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @ctx.accounts.coin_wallet.key, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @ctx.accounts.pc_vault.key, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @ctx.accounts.pc_wallet.key, i64 0, i64 0), i8* %4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @ctx.accounts.vault_signer.key, i64 0, i64 0)), !dbg !1331
  %6 = call i8* @"sol.ProgramError::from.1"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @pe, i64 0, i64 0)), !dbg !1332
  %7 = call i8* @sol.map_err.2(i8* %5, i8* %6), !dbg !1333
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %7), !dbg !1334
  %8 = call i8* @"sol.ToAccountInfos::to_account_infos.1"(i8* %0), !dbg !1335
  %9 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !1336
  %10 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"()", i64 0, i64 0)), !dbg !1337
  ret i8* %0, !dbg !1326
}

define i8* @"dex::init_open_orders.1"(i8* %0) !dbg !1338 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @"CpiContext<'_,'_,'_,'info,InitOpenOrders<'info>>", i64 0, i64 0)), !dbg !1339
  %3 = call i8* @sol.first.1(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @ctx.remaining_accounts, i64 0, i64 0)), !dbg !1341
  %4 = call i8* @sol.map.2(i8* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @acc.key, i64 0, i64 0)), !dbg !1342
  %5 = call i8* @"sol.serum_dex::instruction::init_open_orders.5"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ID, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @ctx.accounts.open_orders.key, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @ctx.accounts.authority.key, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @ctx.accounts.market.key, i64 0, i64 0), i8* %4), !dbg !1343
  %6 = call i8* @"sol.ProgramError::from.1"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @pe, i64 0, i64 0)), !dbg !1344
  %7 = call i8* @sol.map_err.2(i8* %5, i8* %6), !dbg !1345
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %7), !dbg !1346
  %8 = call i8* @"sol.ToAccountInfos::to_account_infos.1"(i8* %0), !dbg !1347
  %9 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !1348
  %10 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"()", i64 0, i64 0)), !dbg !1349
  ret i8* %0, !dbg !1339
}

define i8* @"dex::close_open_orders.1"(i8* %0) !dbg !1350 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @"CpiContext<'_,'_,'_,'info,CloseOpenOrders<'info>>", i64 0, i64 0)), !dbg !1351
  %3 = call i8* @"sol.serum_dex::instruction::close_open_orders.5"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ID, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @ctx.accounts.open_orders.key, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @ctx.accounts.authority.key, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @ctx.accounts.destination.key, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @ctx.accounts.market.key, i64 0, i64 0)), !dbg !1353
  %4 = call i8* @"sol.ProgramError::from.1"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @pe, i64 0, i64 0)), !dbg !1354
  %5 = call i8* @sol.map_err.2(i8* %3, i8* %4), !dbg !1355
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %5), !dbg !1356
  %6 = call i8* @"sol.ToAccountInfos::to_account_infos.1"(i8* %0), !dbg !1357
  %7 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !1358
  %8 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"()", i64 0, i64 0)), !dbg !1359
  ret i8* %0, !dbg !1351
}

define i8* @"dex::sweep_fees.1"(i8* %0) !dbg !1360 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @"CpiContext<'_,'_,'_,'info,SweepFees<'info>>", i64 0, i64 0)), !dbg !1361
  %3 = call i8* @"sol.serum_dex::instruction::sweep_fees.7"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ID, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @ctx.accounts.market.key, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @ctx.accounts.pc_vault.key, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @ctx.accounts.sweep_authority.key, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @ctx.accounts.sweep_receiver.key, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @ctx.accounts.vault_signer.key, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @ctx.accounts.token_program.key, i64 0, i64 0)), !dbg !1363
  %4 = call i8* @"sol.ProgramError::from.1"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @pe, i64 0, i64 0)), !dbg !1364
  %5 = call i8* @sol.map_err.2(i8* %3, i8* %4), !dbg !1365
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %5), !dbg !1366
  %6 = call i8* @"sol.ToAccountInfos::to_account_infos.1"(i8* %0), !dbg !1367
  %7 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !1368
  %8 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"()", i64 0, i64 0)), !dbg !1369
  ret i8* %0, !dbg !1361
}

define i8* @"dex::initialize_market.5"(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4) !dbg !1370 {
  %6 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @"CpiContext<'_,'_,'_,'info,InitializeMarket<'info>>", i64 0, i64 0)), !dbg !1371
  %7 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @coin_lot_size, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u64, i64 0, i64 0)), !dbg !1371
  %8 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @pc_lot_size, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u64, i64 0, i64 0)), !dbg !1371
  %9 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @vault_signer_nonce, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u64, i64 0, i64 0)), !dbg !1371
  %10 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @pc_dust_threshold, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u64, i64 0, i64 0)), !dbg !1371
  %11 = call i8* @sol.get.2(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @ctx.remaining_accounts, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"0", i64 0, i64 0)), !dbg !1373
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @authority, i64 0, i64 0), i8* %11), !dbg !1374
  %12 = call i8* @sol.get.2(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @ctx.remaining_accounts, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"1", i64 0, i64 0)), !dbg !1375
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @prune_authority, i64 0, i64 0), i8* %12), !dbg !1376
  %13 = call i8* @sol.map.2(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @authority, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @r.key, i64 0, i64 0)), !dbg !1377
  %14 = call i8* @sol.map.2(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @prune_authority, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @r.key, i64 0, i64 0)), !dbg !1378
  %15 = call i8* @"sol.serum_dex::instruction::initialize_market.16"(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @ctx.accounts.market.key, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ID, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @ctx.accounts.coin_mint.key, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @ctx.accounts.pc_mint.key, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @ctx.accounts.coin_vault.key, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @ctx.accounts.pc_vault.key, i64 0, i64 0), i8* %13, i8* %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @ctx.accounts.bids.key, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @ctx.accounts.asks.key, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @ctx.accounts.req_q.key, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @ctx.accounts.event_q.key, i64 0, i64 0), i8* %1, i8* %2, i8* %3, i8* %4), !dbg !1379
  %16 = call i8* @"sol.ProgramError::from.1"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @pe, i64 0, i64 0)), !dbg !1380
  %17 = call i8* @sol.map_err.2(i8* %15, i8* %16), !dbg !1381
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %17), !dbg !1382
  %18 = call i8* @"sol.ToAccountInfos::to_account_infos.1"(i8* %0), !dbg !1383
  %19 = call i8* @"sol.solana_program::program::invoke_signed.3"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ix, i64 0, i64 0), i8* %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @ctx.signer_seeds, i64 0, i64 0)), !dbg !1384
  %20 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"()", i64 0, i64 0)), !dbg !1385
  ret i8* %0, !dbg !1371
}

define i8* @sol.model.struct.anchor.NewOrderV3(i8* %0) !dbg !1386 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1387
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @market, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1389
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @open_orders, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1390
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @request_queue, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1391
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @event_queue, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1392
  %7 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @market_bids, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1393
  %8 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @market_asks, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1394
  %9 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @order_payer_token_account, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1395
  %10 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @open_orders_authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1396
  %11 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @coin_vault, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1397
  %12 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @pc_vault, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1398
  %13 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @token_program, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1399
  %14 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @rent, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1400
  ret i8* %0, !dbg !1387
}

define i8* @sol.model.struct.anchor.CancelOrderV2(i8* %0) !dbg !1401 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1402
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @market, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1404
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @market_bids, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1405
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @market_asks, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1406
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @open_orders, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1407
  %7 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @open_orders_authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1408
  %8 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @event_queue, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1409
  ret i8* %0, !dbg !1402
}

define i8* @sol.model.struct.anchor.SettleFunds(i8* %0) !dbg !1410 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1411
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @market, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1413
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @open_orders, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1414
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @open_orders_authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1415
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @coin_vault, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1416
  %7 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @pc_vault, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1417
  %8 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @coin_wallet, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1418
  %9 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @pc_wallet, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1419
  %10 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @vault_signer, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1420
  %11 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @token_program, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1421
  ret i8* %0, !dbg !1411
}

define i8* @sol.model.struct.anchor.InitOpenOrders(i8* %0) !dbg !1422 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1423
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @open_orders, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1425
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1426
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @market, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1427
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @rent, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1428
  ret i8* %0, !dbg !1423
}

define i8* @sol.model.struct.anchor.CloseOpenOrders(i8* %0) !dbg !1429 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1430
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @open_orders, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1432
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1433
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @destination, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1434
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @market, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1435
  ret i8* %0, !dbg !1430
}

define i8* @sol.model.struct.anchor.SweepFees(i8* %0) !dbg !1436 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1437
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @market, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1439
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @pc_vault, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1440
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @sweep_authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1441
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @sweep_receiver, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1442
  %7 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @vault_signer, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1443
  %8 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @token_program, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1444
  ret i8* %0, !dbg !1437
}

define i8* @sol.model.struct.anchor.InitializeMarket(i8* %0) !dbg !1445 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1446
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @market, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1448
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @coin_mint, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1449
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @pc_mint, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1450
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @coin_vault, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1451
  %7 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @pc_vault, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1452
  %8 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @bids, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1453
  %9 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @asks, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1454
  %10 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @req_q, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1455
  %11 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @event_q, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1456
  %12 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @rent, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !1457
  ret i8* %0, !dbg !1446
}

define i8* @sol.model.struct.Dex(i8* %0) !dbg !1458 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1459
  ret i8* %0, !dbg !1459
}

define i8* @"dex::Dex::id.0"(i8* %0) !dbg !1461 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1462
  ret i8* %0, !dbg !1462
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "sol.model.cargo.toml", linkageName: "sol.model.cargo.toml", scope: null, file: !4, type: !5, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!4 = !DIFile(filename: "/solana-cctp-contracts/vendor/anchor-spl/Cargo.toml", directory: "")
!5 = !DISubroutineType(types: !6)
!6 = !{}
!7 = !DILocation(line: 0, scope: !8)
!8 = !DILexicalBlockFile(scope: !3, file: !9, discriminator: 0)
!9 = !DIFile(filename: "Cargo.toml", directory: "/workspace")
!10 = !DILocation(line: 0, scope: !11)
!11 = !DILexicalBlockFile(scope: !3, file: !4, discriminator: 0)
!12 = distinct !DISubprogram(name: "sol.model.declare_id.address", linkageName: "sol.model.declare_id.address", scope: null, file: !4, type: !5, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!13 = !DILocation(line: 0, scope: !14)
!14 = !DILexicalBlockFile(scope: !12, file: !15, discriminator: 0)
!15 = !DIFile(filename: "lib.rs", directory: "/workspace")
!16 = !DILocation(line: 0, scope: !17)
!17 = !DILexicalBlockFile(scope: !12, file: !4, discriminator: 0)
!18 = distinct !DISubprogram(name: "metadata::approve_collection_authority.1", linkageName: "metadata::approve_collection_authority.1", scope: null, file: !19, line: 10, type: !5, scopeLine: 10, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!19 = !DIFile(filename: "/solana-cctp-contracts/vendor/anchor-spl/src/metadata.rs", directory: "")
!20 = !DILocation(line: 10, column: 4, scope: !21)
!21 = !DILexicalBlockFile(scope: !18, file: !19, discriminator: 0)
!22 = !DILocation(line: 13, column: 13, scope: !21)
!23 = !DILocation(line: 13, column: 4, scope: !21)
!24 = !DILocation(line: 24, column: 9, scope: !21)
!25 = !DILocation(line: 22, column: 4, scope: !21)
!26 = !DILocation(line: 27, column: 5, scope: !21)
!27 = distinct !DISubprogram(name: "metadata::bubblegum_set_collection_size.3", linkageName: "metadata::bubblegum_set_collection_size.3", scope: null, file: !19, line: 30, type: !5, scopeLine: 30, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!28 = !DILocation(line: 30, column: 4, scope: !29)
!29 = !DILexicalBlockFile(scope: !27, file: !19, discriminator: 0)
!30 = !DILocation(line: 35, column: 13, scope: !29)
!31 = !DILocation(line: 35, column: 4, scope: !29)
!32 = !DILocation(line: 46, column: 9, scope: !29)
!33 = !DILocation(line: 44, column: 4, scope: !29)
!34 = !DILocation(line: 49, column: 5, scope: !29)
!35 = distinct !DISubprogram(name: "metadata::burn_edition_nft.1", linkageName: "metadata::burn_edition_nft.1", scope: null, file: !19, line: 52, type: !5, scopeLine: 52, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!36 = !DILocation(line: 52, column: 4, scope: !37)
!37 = !DILexicalBlockFile(scope: !35, file: !19, discriminator: 0)
!38 = !DILocation(line: 55, column: 13, scope: !37)
!39 = !DILocation(line: 55, column: 4, scope: !37)
!40 = !DILocation(line: 70, column: 9, scope: !37)
!41 = !DILocation(line: 68, column: 4, scope: !37)
!42 = !DILocation(line: 73, column: 5, scope: !37)
!43 = distinct !DISubprogram(name: "metadata::burn_nft.2", linkageName: "metadata::burn_nft.2", scope: null, file: !19, line: 76, type: !5, scopeLine: 76, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!44 = !DILocation(line: 76, column: 4, scope: !45)
!45 = !DILexicalBlockFile(scope: !43, file: !19, discriminator: 0)
!46 = !DILocation(line: 80, column: 13, scope: !45)
!47 = !DILocation(line: 80, column: 4, scope: !45)
!48 = !DILocation(line: 92, column: 9, scope: !45)
!49 = !DILocation(line: 90, column: 4, scope: !45)
!50 = !DILocation(line: 95, column: 5, scope: !45)
!51 = distinct !DISubprogram(name: "metadata::create_metadata_accounts_v3.5", linkageName: "metadata::create_metadata_accounts_v3.5", scope: null, file: !19, line: 98, type: !5, scopeLine: 98, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!52 = !DILocation(line: 98, column: 4, scope: !53)
!53 = !DILexicalBlockFile(scope: !51, file: !19, discriminator: 0)
!54 = !DILocation(line: 105, column: 4, scope: !53)
!55 = !DILocation(line: 114, column: 13, scope: !53)
!56 = !DILocation(line: 114, column: 4, scope: !53)
!57 = !DILocation(line: 134, column: 9, scope: !53)
!58 = !DILocation(line: 132, column: 4, scope: !53)
!59 = !DILocation(line: 137, column: 5, scope: !53)
!60 = distinct !DISubprogram(name: "metadata::update_metadata_accounts_v2.5", linkageName: "metadata::update_metadata_accounts_v2.5", scope: null, file: !19, line: 140, type: !5, scopeLine: 140, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!61 = !DILocation(line: 140, column: 4, scope: !62)
!62 = !DILexicalBlockFile(scope: !60, file: !19, discriminator: 0)
!63 = !DILocation(line: 147, column: 13, scope: !62)
!64 = !DILocation(line: 147, column: 4, scope: !62)
!65 = !DILocation(line: 158, column: 9, scope: !62)
!66 = !DILocation(line: 156, column: 4, scope: !62)
!67 = !DILocation(line: 161, column: 5, scope: !62)
!68 = distinct !DISubprogram(name: "metadata::create_master_edition_v3.2", linkageName: "metadata::create_master_edition_v3.2", scope: null, file: !19, line: 164, type: !5, scopeLine: 164, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!69 = !DILocation(line: 164, column: 4, scope: !70)
!70 = !DILexicalBlockFile(scope: !68, file: !19, discriminator: 0)
!71 = !DILocation(line: 168, column: 13, scope: !70)
!72 = !DILocation(line: 168, column: 4, scope: !70)
!73 = !DILocation(line: 180, column: 9, scope: !70)
!74 = !DILocation(line: 178, column: 4, scope: !70)
!75 = !DILocation(line: 183, column: 5, scope: !70)
!76 = distinct !DISubprogram(name: "metadata::mint_new_edition_from_master_edition_via_token.2", linkageName: "metadata::mint_new_edition_from_master_edition_via_token.2", scope: null, file: !19, line: 186, type: !5, scopeLine: 186, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!77 = !DILocation(line: 186, column: 4, scope: !78)
!78 = !DILexicalBlockFile(scope: !76, file: !19, discriminator: 0)
!79 = !DILocation(line: 190, column: 13, scope: !78)
!80 = !DILocation(line: 190, column: 4, scope: !78)
!81 = !DILocation(line: 207, column: 9, scope: !78)
!82 = !DILocation(line: 205, column: 4, scope: !78)
!83 = !DILocation(line: 210, column: 5, scope: !78)
!84 = distinct !DISubprogram(name: "metadata::revoke_collection_authority.1", linkageName: "metadata::revoke_collection_authority.1", scope: null, file: !19, line: 213, type: !5, scopeLine: 213, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!85 = !DILocation(line: 213, column: 4, scope: !86)
!86 = !DILexicalBlockFile(scope: !84, file: !19, discriminator: 0)
!87 = !DILocation(line: 216, column: 13, scope: !86)
!88 = !DILocation(line: 216, column: 4, scope: !86)
!89 = !DILocation(line: 226, column: 9, scope: !86)
!90 = !DILocation(line: 224, column: 4, scope: !86)
!91 = !DILocation(line: 229, column: 5, scope: !86)
!92 = distinct !DISubprogram(name: "metadata::set_collection_size.3", linkageName: "metadata::set_collection_size.3", scope: null, file: !19, line: 232, type: !5, scopeLine: 232, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!93 = !DILocation(line: 232, column: 4, scope: !94)
!94 = !DILexicalBlockFile(scope: !92, file: !19, discriminator: 0)
!95 = !DILocation(line: 237, column: 13, scope: !94)
!96 = !DILocation(line: 237, column: 4, scope: !94)
!97 = !DILocation(line: 247, column: 9, scope: !94)
!98 = !DILocation(line: 245, column: 4, scope: !94)
!99 = !DILocation(line: 250, column: 5, scope: !94)
!100 = distinct !DISubprogram(name: "metadata::verify_collection.2", linkageName: "metadata::verify_collection.2", scope: null, file: !19, line: 253, type: !5, scopeLine: 253, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!101 = !DILocation(line: 253, column: 4, scope: !102)
!102 = !DILexicalBlockFile(scope: !100, file: !19, discriminator: 0)
!103 = !DILocation(line: 257, column: 13, scope: !102)
!104 = !DILocation(line: 257, column: 4, scope: !102)
!105 = !DILocation(line: 269, column: 9, scope: !102)
!106 = !DILocation(line: 267, column: 4, scope: !102)
!107 = !DILocation(line: 272, column: 5, scope: !102)
!108 = distinct !DISubprogram(name: "metadata::verify_sized_collection_item.2", linkageName: "metadata::verify_sized_collection_item.2", scope: null, file: !19, line: 275, type: !5, scopeLine: 275, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!109 = !DILocation(line: 275, column: 4, scope: !110)
!110 = !DILexicalBlockFile(scope: !108, file: !19, discriminator: 0)
!111 = !DILocation(line: 279, column: 13, scope: !110)
!112 = !DILocation(line: 279, column: 4, scope: !110)
!113 = !DILocation(line: 291, column: 9, scope: !110)
!114 = !DILocation(line: 289, column: 4, scope: !110)
!115 = !DILocation(line: 294, column: 5, scope: !110)
!116 = distinct !DISubprogram(name: "metadata::set_and_verify_collection.2", linkageName: "metadata::set_and_verify_collection.2", scope: null, file: !19, line: 297, type: !5, scopeLine: 297, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!117 = !DILocation(line: 297, column: 4, scope: !118)
!118 = !DILexicalBlockFile(scope: !116, file: !19, discriminator: 0)
!119 = !DILocation(line: 301, column: 13, scope: !118)
!120 = !DILocation(line: 301, column: 4, scope: !118)
!121 = !DILocation(line: 314, column: 9, scope: !118)
!122 = !DILocation(line: 312, column: 4, scope: !118)
!123 = !DILocation(line: 317, column: 5, scope: !118)
!124 = distinct !DISubprogram(name: "metadata::set_and_verify_sized_collection_item.2", linkageName: "metadata::set_and_verify_sized_collection_item.2", scope: null, file: !19, line: 320, type: !5, scopeLine: 320, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!125 = !DILocation(line: 320, column: 4, scope: !126)
!126 = !DILexicalBlockFile(scope: !124, file: !19, discriminator: 0)
!127 = !DILocation(line: 324, column: 13, scope: !126)
!128 = !DILocation(line: 324, column: 4, scope: !126)
!129 = !DILocation(line: 337, column: 9, scope: !126)
!130 = !DILocation(line: 335, column: 4, scope: !126)
!131 = !DILocation(line: 340, column: 5, scope: !126)
!132 = distinct !DISubprogram(name: "metadata::freeze_delegated_account.1", linkageName: "metadata::freeze_delegated_account.1", scope: null, file: !19, line: 343, type: !5, scopeLine: 343, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!133 = !DILocation(line: 343, column: 4, scope: !134)
!134 = !DILexicalBlockFile(scope: !132, file: !19, discriminator: 0)
!135 = !DILocation(line: 346, column: 13, scope: !134)
!136 = !DILocation(line: 346, column: 4, scope: !134)
!137 = !DILocation(line: 355, column: 9, scope: !134)
!138 = !DILocation(line: 353, column: 4, scope: !134)
!139 = !DILocation(line: 358, column: 5, scope: !134)
!140 = distinct !DISubprogram(name: "metadata::thaw_delegated_account.1", linkageName: "metadata::thaw_delegated_account.1", scope: null, file: !19, line: 361, type: !5, scopeLine: 361, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!141 = !DILocation(line: 361, column: 4, scope: !142)
!142 = !DILexicalBlockFile(scope: !140, file: !19, discriminator: 0)
!143 = !DILocation(line: 364, column: 13, scope: !142)
!144 = !DILocation(line: 364, column: 4, scope: !142)
!145 = !DILocation(line: 373, column: 9, scope: !142)
!146 = !DILocation(line: 371, column: 4, scope: !142)
!147 = !DILocation(line: 376, column: 5, scope: !142)
!148 = distinct !DISubprogram(name: "metadata::update_primary_sale_happened_via_token.1", linkageName: "metadata::update_primary_sale_happened_via_token.1", scope: null, file: !19, line: 379, type: !5, scopeLine: 379, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!149 = !DILocation(line: 379, column: 4, scope: !150)
!150 = !DILexicalBlockFile(scope: !148, file: !19, discriminator: 0)
!151 = !DILocation(line: 382, column: 13, scope: !150)
!152 = !DILocation(line: 382, column: 4, scope: !150)
!153 = !DILocation(line: 391, column: 9, scope: !150)
!154 = !DILocation(line: 389, column: 4, scope: !150)
!155 = !DILocation(line: 394, column: 4, scope: !150)
!156 = distinct !DISubprogram(name: "metadata::set_token_standard.2", linkageName: "metadata::set_token_standard.2", scope: null, file: !19, line: 397, type: !5, scopeLine: 397, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!157 = !DILocation(line: 397, column: 4, scope: !158)
!158 = !DILexicalBlockFile(scope: !156, file: !19, discriminator: 0)
!159 = !DILocation(line: 401, column: 13, scope: !158)
!160 = !DILocation(line: 401, column: 4, scope: !158)
!161 = !DILocation(line: 410, column: 9, scope: !158)
!162 = !DILocation(line: 408, column: 4, scope: !158)
!163 = !DILocation(line: 413, column: 5, scope: !158)
!164 = distinct !DISubprogram(name: "metadata::sign_metadata.1", linkageName: "metadata::sign_metadata.1", scope: null, file: !19, line: 416, type: !5, scopeLine: 416, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!165 = !DILocation(line: 416, column: 4, scope: !166)
!166 = !DILexicalBlockFile(scope: !164, file: !19, discriminator: 0)
!167 = !DILocation(line: 417, column: 13, scope: !166)
!168 = !DILocation(line: 417, column: 4, scope: !166)
!169 = !DILocation(line: 425, column: 9, scope: !166)
!170 = !DILocation(line: 423, column: 4, scope: !166)
!171 = !DILocation(line: 428, column: 4, scope: !166)
!172 = distinct !DISubprogram(name: "metadata::remove_creator_verification.1", linkageName: "metadata::remove_creator_verification.1", scope: null, file: !19, line: 431, type: !5, scopeLine: 431, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!173 = !DILocation(line: 431, column: 4, scope: !174)
!174 = !DILexicalBlockFile(scope: !172, file: !19, discriminator: 0)
!175 = !DILocation(line: 434, column: 13, scope: !174)
!176 = !DILocation(line: 434, column: 4, scope: !174)
!177 = !DILocation(line: 441, column: 9, scope: !174)
!178 = !DILocation(line: 439, column: 4, scope: !174)
!179 = !DILocation(line: 444, column: 4, scope: !174)
!180 = distinct !DISubprogram(name: "metadata::utilize.4", linkageName: "metadata::utilize.4", scope: null, file: !19, line: 447, type: !5, scopeLine: 447, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!181 = !DILocation(line: 447, column: 4, scope: !182)
!182 = !DILexicalBlockFile(scope: !180, file: !19, discriminator: 0)
!183 = !DILocation(line: 453, column: 13, scope: !182)
!184 = !DILocation(line: 453, column: 4, scope: !182)
!185 = !DILocation(line: 466, column: 9, scope: !182)
!186 = !DILocation(line: 464, column: 4, scope: !182)
!187 = !DILocation(line: 469, column: 5, scope: !182)
!188 = distinct !DISubprogram(name: "metadata::unverify_collection.2", linkageName: "metadata::unverify_collection.2", scope: null, file: !19, line: 472, type: !5, scopeLine: 472, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!189 = !DILocation(line: 472, column: 4, scope: !190)
!190 = !DILexicalBlockFile(scope: !188, file: !19, discriminator: 0)
!191 = !DILocation(line: 476, column: 13, scope: !190)
!192 = !DILocation(line: 476, column: 4, scope: !190)
!193 = !DILocation(line: 487, column: 9, scope: !190)
!194 = !DILocation(line: 485, column: 4, scope: !190)
!195 = !DILocation(line: 490, column: 5, scope: !190)
!196 = distinct !DISubprogram(name: "metadata::unverify_sized_collection_item.2", linkageName: "metadata::unverify_sized_collection_item.2", scope: null, file: !19, line: 493, type: !5, scopeLine: 493, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!197 = !DILocation(line: 493, column: 4, scope: !198)
!198 = !DILexicalBlockFile(scope: !196, file: !19, discriminator: 0)
!199 = !DILocation(line: 497, column: 13, scope: !198)
!200 = !DILocation(line: 497, column: 4, scope: !198)
!201 = !DILocation(line: 509, column: 9, scope: !198)
!202 = !DILocation(line: 507, column: 4, scope: !198)
!203 = !DILocation(line: 512, column: 5, scope: !198)
!204 = distinct !DISubprogram(name: "sol.model.struct.anchor.ApproveCollectionAuthority", linkageName: "sol.model.struct.anchor.ApproveCollectionAuthority", scope: null, file: !19, line: 516, type: !5, scopeLine: 516, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!205 = !DILocation(line: 516, column: 4, scope: !206)
!206 = !DILexicalBlockFile(scope: !204, file: !19, discriminator: 0)
!207 = !DILocation(line: 517, column: 8, scope: !206)
!208 = !DILocation(line: 518, column: 8, scope: !206)
!209 = !DILocation(line: 519, column: 8, scope: !206)
!210 = !DILocation(line: 520, column: 8, scope: !206)
!211 = !DILocation(line: 521, column: 8, scope: !206)
!212 = !DILocation(line: 522, column: 8, scope: !206)
!213 = distinct !DISubprogram(name: "sol.model.struct.anchor.BubblegumSetCollectionSize", linkageName: "sol.model.struct.anchor.BubblegumSetCollectionSize", scope: null, file: !19, line: 526, type: !5, scopeLine: 526, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!214 = !DILocation(line: 526, column: 4, scope: !215)
!215 = !DILexicalBlockFile(scope: !213, file: !19, discriminator: 0)
!216 = !DILocation(line: 527, column: 8, scope: !215)
!217 = !DILocation(line: 528, column: 8, scope: !215)
!218 = !DILocation(line: 529, column: 8, scope: !215)
!219 = !DILocation(line: 530, column: 8, scope: !215)
!220 = distinct !DISubprogram(name: "sol.model.struct.anchor.BurnEditionNft", linkageName: "sol.model.struct.anchor.BurnEditionNft", scope: null, file: !19, line: 534, type: !5, scopeLine: 534, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!221 = !DILocation(line: 534, column: 4, scope: !222)
!222 = !DILexicalBlockFile(scope: !220, file: !19, discriminator: 0)
!223 = !DILocation(line: 535, column: 8, scope: !222)
!224 = !DILocation(line: 536, column: 8, scope: !222)
!225 = !DILocation(line: 537, column: 8, scope: !222)
!226 = !DILocation(line: 538, column: 8, scope: !222)
!227 = !DILocation(line: 539, column: 8, scope: !222)
!228 = !DILocation(line: 540, column: 8, scope: !222)
!229 = !DILocation(line: 541, column: 8, scope: !222)
!230 = !DILocation(line: 542, column: 8, scope: !222)
!231 = !DILocation(line: 543, column: 8, scope: !222)
!232 = !DILocation(line: 544, column: 8, scope: !222)
!233 = distinct !DISubprogram(name: "sol.model.struct.anchor.BurnNft", linkageName: "sol.model.struct.anchor.BurnNft", scope: null, file: !19, line: 548, type: !5, scopeLine: 548, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!234 = !DILocation(line: 548, column: 4, scope: !235)
!235 = !DILexicalBlockFile(scope: !233, file: !19, discriminator: 0)
!236 = !DILocation(line: 549, column: 8, scope: !235)
!237 = !DILocation(line: 550, column: 8, scope: !235)
!238 = !DILocation(line: 551, column: 8, scope: !235)
!239 = !DILocation(line: 552, column: 8, scope: !235)
!240 = !DILocation(line: 553, column: 8, scope: !235)
!241 = !DILocation(line: 554, column: 8, scope: !235)
!242 = distinct !DISubprogram(name: "sol.model.struct.anchor.CreateMetadataAccountsV3", linkageName: "sol.model.struct.anchor.CreateMetadataAccountsV3", scope: null, file: !19, line: 558, type: !5, scopeLine: 558, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!243 = !DILocation(line: 558, column: 4, scope: !244)
!244 = !DILexicalBlockFile(scope: !242, file: !19, discriminator: 0)
!245 = !DILocation(line: 559, column: 8, scope: !244)
!246 = !DILocation(line: 560, column: 8, scope: !244)
!247 = !DILocation(line: 561, column: 8, scope: !244)
!248 = !DILocation(line: 562, column: 8, scope: !244)
!249 = !DILocation(line: 563, column: 8, scope: !244)
!250 = !DILocation(line: 564, column: 8, scope: !244)
!251 = !DILocation(line: 565, column: 8, scope: !244)
!252 = distinct !DISubprogram(name: "sol.model.struct.anchor.UpdateMetadataAccountsV2", linkageName: "sol.model.struct.anchor.UpdateMetadataAccountsV2", scope: null, file: !19, line: 569, type: !5, scopeLine: 569, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!253 = !DILocation(line: 569, column: 4, scope: !254)
!254 = !DILexicalBlockFile(scope: !252, file: !19, discriminator: 0)
!255 = !DILocation(line: 570, column: 8, scope: !254)
!256 = !DILocation(line: 571, column: 8, scope: !254)
!257 = distinct !DISubprogram(name: "sol.model.struct.anchor.CreateMasterEditionV3", linkageName: "sol.model.struct.anchor.CreateMasterEditionV3", scope: null, file: !19, line: 575, type: !5, scopeLine: 575, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!258 = !DILocation(line: 575, column: 4, scope: !259)
!259 = !DILexicalBlockFile(scope: !257, file: !19, discriminator: 0)
!260 = !DILocation(line: 576, column: 8, scope: !259)
!261 = !DILocation(line: 577, column: 8, scope: !259)
!262 = !DILocation(line: 578, column: 8, scope: !259)
!263 = !DILocation(line: 579, column: 8, scope: !259)
!264 = !DILocation(line: 580, column: 8, scope: !259)
!265 = !DILocation(line: 581, column: 8, scope: !259)
!266 = !DILocation(line: 582, column: 8, scope: !259)
!267 = !DILocation(line: 583, column: 8, scope: !259)
!268 = !DILocation(line: 584, column: 8, scope: !259)
!269 = distinct !DISubprogram(name: "sol.model.struct.anchor.MintNewEditionFromMasterEditionViaToken", linkageName: "sol.model.struct.anchor.MintNewEditionFromMasterEditionViaToken", scope: null, file: !19, line: 588, type: !5, scopeLine: 588, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!270 = !DILocation(line: 588, column: 4, scope: !271)
!271 = !DILexicalBlockFile(scope: !269, file: !19, discriminator: 0)
!272 = !DILocation(line: 589, column: 8, scope: !271)
!273 = !DILocation(line: 590, column: 8, scope: !271)
!274 = !DILocation(line: 591, column: 8, scope: !271)
!275 = !DILocation(line: 592, column: 8, scope: !271)
!276 = !DILocation(line: 593, column: 8, scope: !271)
!277 = !DILocation(line: 594, column: 8, scope: !271)
!278 = !DILocation(line: 595, column: 8, scope: !271)
!279 = !DILocation(line: 596, column: 8, scope: !271)
!280 = !DILocation(line: 597, column: 8, scope: !271)
!281 = !DILocation(line: 598, column: 8, scope: !271)
!282 = !DILocation(line: 599, column: 8, scope: !271)
!283 = !DILocation(line: 600, column: 8, scope: !271)
!284 = !DILocation(line: 601, column: 8, scope: !271)
!285 = !DILocation(line: 602, column: 8, scope: !271)
!286 = distinct !DISubprogram(name: "sol.model.struct.anchor.RevokeCollectionAuthority", linkageName: "sol.model.struct.anchor.RevokeCollectionAuthority", scope: null, file: !19, line: 614, type: !5, scopeLine: 614, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!287 = !DILocation(line: 614, column: 4, scope: !288)
!288 = !DILexicalBlockFile(scope: !286, file: !19, discriminator: 0)
!289 = !DILocation(line: 615, column: 8, scope: !288)
!290 = !DILocation(line: 616, column: 8, scope: !288)
!291 = !DILocation(line: 617, column: 8, scope: !288)
!292 = !DILocation(line: 618, column: 8, scope: !288)
!293 = !DILocation(line: 619, column: 8, scope: !288)
!294 = distinct !DISubprogram(name: "sol.model.struct.anchor.SetCollectionSize", linkageName: "sol.model.struct.anchor.SetCollectionSize", scope: null, file: !19, line: 623, type: !5, scopeLine: 623, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!295 = !DILocation(line: 623, column: 4, scope: !296)
!296 = !DILexicalBlockFile(scope: !294, file: !19, discriminator: 0)
!297 = !DILocation(line: 624, column: 8, scope: !296)
!298 = !DILocation(line: 625, column: 8, scope: !296)
!299 = !DILocation(line: 626, column: 8, scope: !296)
!300 = !DILocation(line: 627, column: 8, scope: !296)
!301 = distinct !DISubprogram(name: "sol.model.struct.anchor.SetTokenStandard", linkageName: "sol.model.struct.anchor.SetTokenStandard", scope: null, file: !19, line: 631, type: !5, scopeLine: 631, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!302 = !DILocation(line: 631, column: 4, scope: !303)
!303 = !DILexicalBlockFile(scope: !301, file: !19, discriminator: 0)
!304 = !DILocation(line: 632, column: 8, scope: !303)
!305 = !DILocation(line: 633, column: 8, scope: !303)
!306 = !DILocation(line: 634, column: 8, scope: !303)
!307 = distinct !DISubprogram(name: "sol.model.struct.anchor.VerifyCollection", linkageName: "sol.model.struct.anchor.VerifyCollection", scope: null, file: !19, line: 638, type: !5, scopeLine: 638, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!308 = !DILocation(line: 638, column: 4, scope: !309)
!309 = !DILexicalBlockFile(scope: !307, file: !19, discriminator: 0)
!310 = !DILocation(line: 639, column: 8, scope: !309)
!311 = !DILocation(line: 640, column: 8, scope: !309)
!312 = !DILocation(line: 641, column: 8, scope: !309)
!313 = !DILocation(line: 642, column: 8, scope: !309)
!314 = !DILocation(line: 643, column: 8, scope: !309)
!315 = !DILocation(line: 644, column: 8, scope: !309)
!316 = distinct !DISubprogram(name: "sol.model.struct.anchor.VerifySizedCollectionItem", linkageName: "sol.model.struct.anchor.VerifySizedCollectionItem", scope: null, file: !19, line: 648, type: !5, scopeLine: 648, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!317 = !DILocation(line: 648, column: 4, scope: !318)
!318 = !DILexicalBlockFile(scope: !316, file: !19, discriminator: 0)
!319 = !DILocation(line: 649, column: 8, scope: !318)
!320 = !DILocation(line: 650, column: 8, scope: !318)
!321 = !DILocation(line: 651, column: 8, scope: !318)
!322 = !DILocation(line: 652, column: 8, scope: !318)
!323 = !DILocation(line: 653, column: 8, scope: !318)
!324 = !DILocation(line: 654, column: 8, scope: !318)
!325 = distinct !DISubprogram(name: "sol.model.struct.anchor.SetAndVerifyCollection", linkageName: "sol.model.struct.anchor.SetAndVerifyCollection", scope: null, file: !19, line: 658, type: !5, scopeLine: 658, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!326 = !DILocation(line: 658, column: 4, scope: !327)
!327 = !DILexicalBlockFile(scope: !325, file: !19, discriminator: 0)
!328 = !DILocation(line: 659, column: 8, scope: !327)
!329 = !DILocation(line: 660, column: 8, scope: !327)
!330 = !DILocation(line: 661, column: 8, scope: !327)
!331 = !DILocation(line: 662, column: 8, scope: !327)
!332 = !DILocation(line: 663, column: 8, scope: !327)
!333 = !DILocation(line: 664, column: 8, scope: !327)
!334 = !DILocation(line: 665, column: 8, scope: !327)
!335 = distinct !DISubprogram(name: "sol.model.struct.anchor.SetAndVerifySizedCollectionItem", linkageName: "sol.model.struct.anchor.SetAndVerifySizedCollectionItem", scope: null, file: !19, line: 669, type: !5, scopeLine: 669, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!336 = !DILocation(line: 669, column: 4, scope: !337)
!337 = !DILexicalBlockFile(scope: !335, file: !19, discriminator: 0)
!338 = !DILocation(line: 670, column: 8, scope: !337)
!339 = !DILocation(line: 671, column: 8, scope: !337)
!340 = !DILocation(line: 672, column: 8, scope: !337)
!341 = !DILocation(line: 673, column: 8, scope: !337)
!342 = !DILocation(line: 674, column: 8, scope: !337)
!343 = !DILocation(line: 675, column: 8, scope: !337)
!344 = !DILocation(line: 676, column: 8, scope: !337)
!345 = distinct !DISubprogram(name: "sol.model.struct.anchor.FreezeDelegatedAccount", linkageName: "sol.model.struct.anchor.FreezeDelegatedAccount", scope: null, file: !19, line: 680, type: !5, scopeLine: 680, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!346 = !DILocation(line: 680, column: 4, scope: !347)
!347 = !DILexicalBlockFile(scope: !345, file: !19, discriminator: 0)
!348 = !DILocation(line: 681, column: 8, scope: !347)
!349 = !DILocation(line: 682, column: 8, scope: !347)
!350 = !DILocation(line: 683, column: 8, scope: !347)
!351 = !DILocation(line: 684, column: 8, scope: !347)
!352 = !DILocation(line: 685, column: 8, scope: !347)
!353 = !DILocation(line: 686, column: 8, scope: !347)
!354 = distinct !DISubprogram(name: "sol.model.struct.anchor.ThawDelegatedAccount", linkageName: "sol.model.struct.anchor.ThawDelegatedAccount", scope: null, file: !19, line: 690, type: !5, scopeLine: 690, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!355 = !DILocation(line: 690, column: 4, scope: !356)
!356 = !DILexicalBlockFile(scope: !354, file: !19, discriminator: 0)
!357 = !DILocation(line: 691, column: 8, scope: !356)
!358 = !DILocation(line: 692, column: 8, scope: !356)
!359 = !DILocation(line: 693, column: 8, scope: !356)
!360 = !DILocation(line: 694, column: 8, scope: !356)
!361 = !DILocation(line: 695, column: 8, scope: !356)
!362 = !DILocation(line: 696, column: 8, scope: !356)
!363 = distinct !DISubprogram(name: "sol.model.struct.anchor.UpdatePrimarySaleHappenedViaToken", linkageName: "sol.model.struct.anchor.UpdatePrimarySaleHappenedViaToken", scope: null, file: !19, line: 700, type: !5, scopeLine: 700, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!364 = !DILocation(line: 700, column: 4, scope: !365)
!365 = !DILexicalBlockFile(scope: !363, file: !19, discriminator: 0)
!366 = !DILocation(line: 701, column: 8, scope: !365)
!367 = !DILocation(line: 702, column: 8, scope: !365)
!368 = !DILocation(line: 703, column: 8, scope: !365)
!369 = distinct !DISubprogram(name: "sol.model.struct.anchor.SignMetadata", linkageName: "sol.model.struct.anchor.SignMetadata", scope: null, file: !19, line: 707, type: !5, scopeLine: 707, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!370 = !DILocation(line: 707, column: 4, scope: !371)
!371 = !DILexicalBlockFile(scope: !369, file: !19, discriminator: 0)
!372 = !DILocation(line: 708, column: 8, scope: !371)
!373 = !DILocation(line: 709, column: 8, scope: !371)
!374 = distinct !DISubprogram(name: "sol.model.struct.anchor.RemoveCreatorVerification", linkageName: "sol.model.struct.anchor.RemoveCreatorVerification", scope: null, file: !19, line: 713, type: !5, scopeLine: 713, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!375 = !DILocation(line: 713, column: 4, scope: !376)
!376 = !DILexicalBlockFile(scope: !374, file: !19, discriminator: 0)
!377 = !DILocation(line: 714, column: 8, scope: !376)
!378 = !DILocation(line: 715, column: 8, scope: !376)
!379 = distinct !DISubprogram(name: "sol.model.struct.anchor.Utilize", linkageName: "sol.model.struct.anchor.Utilize", scope: null, file: !19, line: 719, type: !5, scopeLine: 719, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!380 = !DILocation(line: 719, column: 4, scope: !381)
!381 = !DILexicalBlockFile(scope: !379, file: !19, discriminator: 0)
!382 = !DILocation(line: 720, column: 8, scope: !381)
!383 = !DILocation(line: 721, column: 8, scope: !381)
!384 = !DILocation(line: 722, column: 8, scope: !381)
!385 = !DILocation(line: 723, column: 8, scope: !381)
!386 = !DILocation(line: 724, column: 8, scope: !381)
!387 = distinct !DISubprogram(name: "sol.model.struct.anchor.UnverifyCollection", linkageName: "sol.model.struct.anchor.UnverifyCollection", scope: null, file: !19, line: 728, type: !5, scopeLine: 728, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!388 = !DILocation(line: 728, column: 4, scope: !389)
!389 = !DILexicalBlockFile(scope: !387, file: !19, discriminator: 0)
!390 = !DILocation(line: 729, column: 8, scope: !389)
!391 = !DILocation(line: 730, column: 8, scope: !389)
!392 = !DILocation(line: 731, column: 8, scope: !389)
!393 = !DILocation(line: 732, column: 8, scope: !389)
!394 = !DILocation(line: 733, column: 8, scope: !389)
!395 = distinct !DISubprogram(name: "sol.model.struct.anchor.UnverifySizedCollectionItem", linkageName: "sol.model.struct.anchor.UnverifySizedCollectionItem", scope: null, file: !19, line: 737, type: !5, scopeLine: 737, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!396 = !DILocation(line: 737, column: 4, scope: !397)
!397 = !DILexicalBlockFile(scope: !395, file: !19, discriminator: 0)
!398 = !DILocation(line: 738, column: 8, scope: !397)
!399 = !DILocation(line: 739, column: 8, scope: !397)
!400 = !DILocation(line: 740, column: 8, scope: !397)
!401 = !DILocation(line: 741, column: 8, scope: !397)
!402 = !DILocation(line: 742, column: 8, scope: !397)
!403 = !DILocation(line: 743, column: 8, scope: !397)
!404 = distinct !DISubprogram(name: "metadata::MetadataAccount::try_deserialize.anon.1", linkageName: "metadata::MetadataAccount::try_deserialize.anon.1", scope: null, file: !19, line: 756, type: !5, scopeLine: 756, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!405 = !DILocation(line: 756, column: 64, scope: !406)
!406 = !DILexicalBlockFile(scope: !404, file: !19, discriminator: 0)
!407 = !DILocation(line: 757, column: 56, scope: !406)
!408 = !DILocation(line: 757, column: 19, scope: !406)
!409 = !DILocation(line: 757, column: 12, scope: !406)
!410 = distinct !DISubprogram(name: "metadata::MetadataAccount::try_deserialize.1", linkageName: "metadata::MetadataAccount::try_deserialize.1", scope: null, file: !19, line: 754, type: !5, scopeLine: 754, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!411 = !DILocation(line: 754, column: 4, scope: !412)
!412 = !DILexicalBlockFile(scope: !410, file: !19, discriminator: 0)
!413 = !DILocation(line: 755, column: 17, scope: !412)
!414 = !DILocation(line: 755, column: 8, scope: !412)
!415 = !DILocation(line: 756, column: 21, scope: !412)
!416 = !DILocation(line: 756, column: 11, scope: !412)
!417 = !DILocation(line: 756, column: 8, scope: !412)
!418 = !DILocation(line: 756, column: 64, scope: !412)
!419 = !DILocation(line: 759, column: 8, scope: !412)
!420 = distinct !DISubprogram(name: "metadata::MetadataAccount::try_deserialize_unchecked.1", linkageName: "metadata::MetadataAccount::try_deserialize_unchecked.1", scope: null, file: !19, line: 762, type: !5, scopeLine: 762, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!421 = !DILocation(line: 762, column: 4, scope: !422)
!422 = !DILexicalBlockFile(scope: !420, file: !19, discriminator: 0)
!423 = !DILocation(line: 763, column: 17, scope: !422)
!424 = !DILocation(line: 763, column: 8, scope: !422)
!425 = !DILocation(line: 764, column: 11, scope: !422)
!426 = !DILocation(line: 764, column: 8, scope: !422)
!427 = distinct !DISubprogram(name: "metadata::MetadataAccount::owner.0", linkageName: "metadata::MetadataAccount::owner.0", scope: null, file: !19, line: 771, type: !5, scopeLine: 771, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!428 = !DILocation(line: 771, column: 4, scope: !429)
!429 = !DILexicalBlockFile(scope: !427, file: !19, discriminator: 0)
!430 = distinct !DISubprogram(name: "metadata::MetadataAccount::deref.1", linkageName: "metadata::MetadataAccount::deref.1", scope: null, file: !19, line: 778, type: !5, scopeLine: 778, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!431 = !DILocation(line: 778, column: 4, scope: !432)
!432 = !DILexicalBlockFile(scope: !430, file: !19, discriminator: 0)
!433 = distinct !DISubprogram(name: "metadata::MasterEditionAccount::try_deserialize.anon.1", linkageName: "metadata::MasterEditionAccount::try_deserialize.anon.1", scope: null, file: !19, line: 793, type: !5, scopeLine: 793, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!434 = !DILocation(line: 793, column: 71, scope: !435)
!435 = !DILexicalBlockFile(scope: !433, file: !19, discriminator: 0)
!436 = !DILocation(line: 794, column: 56, scope: !435)
!437 = !DILocation(line: 794, column: 19, scope: !435)
!438 = !DILocation(line: 794, column: 12, scope: !435)
!439 = distinct !DISubprogram(name: "metadata::MasterEditionAccount::try_deserialize.1", linkageName: "metadata::MasterEditionAccount::try_deserialize.1", scope: null, file: !19, line: 791, type: !5, scopeLine: 791, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!440 = !DILocation(line: 791, column: 4, scope: !441)
!441 = !DILexicalBlockFile(scope: !439, file: !19, discriminator: 0)
!442 = !DILocation(line: 792, column: 17, scope: !441)
!443 = !DILocation(line: 792, column: 8, scope: !441)
!444 = !DILocation(line: 793, column: 21, scope: !441)
!445 = !DILocation(line: 793, column: 11, scope: !441)
!446 = !DILocation(line: 793, column: 8, scope: !441)
!447 = !DILocation(line: 793, column: 71, scope: !441)
!448 = !DILocation(line: 796, column: 8, scope: !441)
!449 = distinct !DISubprogram(name: "metadata::MasterEditionAccount::try_deserialize_unchecked.1", linkageName: "metadata::MasterEditionAccount::try_deserialize_unchecked.1", scope: null, file: !19, line: 799, type: !5, scopeLine: 799, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!450 = !DILocation(line: 799, column: 4, scope: !451)
!451 = !DILexicalBlockFile(scope: !449, file: !19, discriminator: 0)
!452 = !DILocation(line: 800, column: 21, scope: !451)
!453 = !DILocation(line: 800, column: 8, scope: !451)
!454 = !DILocation(line: 801, column: 11, scope: !451)
!455 = !DILocation(line: 801, column: 8, scope: !451)
!456 = distinct !DISubprogram(name: "metadata::MasterEditionAccount::deref.1", linkageName: "metadata::MasterEditionAccount::deref.1", scope: null, file: !19, line: 807, type: !5, scopeLine: 807, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!457 = !DILocation(line: 807, column: 4, scope: !458)
!458 = !DILexicalBlockFile(scope: !456, file: !19, discriminator: 0)
!459 = distinct !DISubprogram(name: "metadata::MasterEditionAccount::owner.0", linkageName: "metadata::MasterEditionAccount::owner.0", scope: null, file: !19, line: 815, type: !5, scopeLine: 815, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!460 = !DILocation(line: 815, column: 4, scope: !461)
!461 = !DILexicalBlockFile(scope: !459, file: !19, discriminator: 0)
!462 = distinct !DISubprogram(name: "sol.model.struct.Metadata", linkageName: "sol.model.struct.Metadata", scope: null, file: !19, line: 821, type: !5, scopeLine: 821, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!463 = !DILocation(line: 821, column: 4, scope: !464)
!464 = !DILexicalBlockFile(scope: !462, file: !19, discriminator: 0)
!465 = distinct !DISubprogram(name: "metadata::Metadata::id.0", linkageName: "metadata::Metadata::id.0", scope: null, file: !19, line: 824, type: !5, scopeLine: 824, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!466 = !DILocation(line: 824, column: 4, scope: !467)
!467 = !DILexicalBlockFile(scope: !465, file: !19, discriminator: 0)
!468 = distinct !DISubprogram(name: "token::transfer.2", linkageName: "token::transfer.2", scope: null, file: !469, line: 12, type: !5, scopeLine: 12, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!469 = !DIFile(filename: "/solana-cctp-contracts/vendor/anchor-spl/src/token.rs", directory: "")
!470 = !DILocation(line: 12, column: 4, scope: !471)
!471 = !DILexicalBlockFile(scope: !468, file: !469, discriminator: 0)
!472 = !DILocation(line: 16, column: 13, scope: !471)
!473 = !DILocation(line: 16, column: 4, scope: !471)
!474 = !DILocation(line: 24, column: 4, scope: !471)
!475 = !DILocation(line: 33, column: 5, scope: !471)
!476 = distinct !DISubprogram(name: "token::transfer_checked.3", linkageName: "token::transfer_checked.3", scope: null, file: !469, line: 36, type: !5, scopeLine: 36, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!477 = !DILocation(line: 36, column: 4, scope: !478)
!478 = !DILexicalBlockFile(scope: !476, file: !469, discriminator: 0)
!479 = !DILocation(line: 41, column: 13, scope: !478)
!480 = !DILocation(line: 41, column: 4, scope: !478)
!481 = !DILocation(line: 51, column: 4, scope: !478)
!482 = !DILocation(line: 61, column: 5, scope: !478)
!483 = distinct !DISubprogram(name: "token::mint_to.2", linkageName: "token::mint_to.2", scope: null, file: !469, line: 64, type: !5, scopeLine: 64, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!484 = !DILocation(line: 64, column: 4, scope: !485)
!485 = !DILexicalBlockFile(scope: !483, file: !469, discriminator: 0)
!486 = !DILocation(line: 68, column: 13, scope: !485)
!487 = !DILocation(line: 68, column: 4, scope: !485)
!488 = !DILocation(line: 76, column: 4, scope: !485)
!489 = !DILocation(line: 85, column: 5, scope: !485)
!490 = distinct !DISubprogram(name: "token::burn.2", linkageName: "token::burn.2", scope: null, file: !469, line: 88, type: !5, scopeLine: 88, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!491 = !DILocation(line: 88, column: 4, scope: !492)
!492 = !DILexicalBlockFile(scope: !490, file: !469, discriminator: 0)
!493 = !DILocation(line: 89, column: 13, scope: !492)
!494 = !DILocation(line: 89, column: 4, scope: !492)
!495 = !DILocation(line: 97, column: 4, scope: !492)
!496 = !DILocation(line: 106, column: 5, scope: !492)
!497 = distinct !DISubprogram(name: "token::approve.2", linkageName: "token::approve.2", scope: null, file: !469, line: 109, type: !5, scopeLine: 109, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!498 = !DILocation(line: 109, column: 4, scope: !499)
!499 = !DILexicalBlockFile(scope: !497, file: !469, discriminator: 0)
!500 = !DILocation(line: 113, column: 13, scope: !499)
!501 = !DILocation(line: 113, column: 4, scope: !499)
!502 = !DILocation(line: 121, column: 4, scope: !499)
!503 = !DILocation(line: 130, column: 5, scope: !499)
!504 = distinct !DISubprogram(name: "token::approve_checked.3", linkageName: "token::approve_checked.3", scope: null, file: !469, line: 133, type: !5, scopeLine: 133, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!505 = !DILocation(line: 133, column: 4, scope: !506)
!506 = !DILexicalBlockFile(scope: !504, file: !469, discriminator: 0)
!507 = !DILocation(line: 138, column: 13, scope: !506)
!508 = !DILocation(line: 138, column: 4, scope: !506)
!509 = !DILocation(line: 148, column: 4, scope: !506)
!510 = !DILocation(line: 158, column: 5, scope: !506)
!511 = distinct !DISubprogram(name: "token::revoke.1", linkageName: "token::revoke.1", scope: null, file: !469, line: 161, type: !5, scopeLine: 161, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!512 = !DILocation(line: 161, column: 4, scope: !513)
!513 = !DILexicalBlockFile(scope: !511, file: !469, discriminator: 0)
!514 = !DILocation(line: 162, column: 13, scope: !513)
!515 = !DILocation(line: 162, column: 4, scope: !513)
!516 = !DILocation(line: 168, column: 4, scope: !513)
!517 = !DILocation(line: 173, column: 5, scope: !513)
!518 = distinct !DISubprogram(name: "token::initialize_account.1", linkageName: "token::initialize_account.1", scope: null, file: !469, line: 176, type: !5, scopeLine: 176, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!519 = !DILocation(line: 176, column: 4, scope: !520)
!520 = !DILexicalBlockFile(scope: !518, file: !469, discriminator: 0)
!521 = !DILocation(line: 179, column: 13, scope: !520)
!522 = !DILocation(line: 179, column: 4, scope: !520)
!523 = !DILocation(line: 185, column: 4, scope: !520)
!524 = !DILocation(line: 195, column: 5, scope: !520)
!525 = distinct !DISubprogram(name: "token::initialize_account3.1", linkageName: "token::initialize_account3.1", scope: null, file: !469, line: 198, type: !5, scopeLine: 198, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!526 = !DILocation(line: 198, column: 4, scope: !527)
!527 = !DILexicalBlockFile(scope: !525, file: !469, discriminator: 0)
!528 = !DILocation(line: 201, column: 13, scope: !527)
!529 = !DILocation(line: 201, column: 4, scope: !527)
!530 = !DILocation(line: 207, column: 4, scope: !527)
!531 = !DILocation(line: 212, column: 5, scope: !527)
!532 = distinct !DISubprogram(name: "token::close_account.1", linkageName: "token::close_account.1", scope: null, file: !469, line: 215, type: !5, scopeLine: 215, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!533 = !DILocation(line: 215, column: 4, scope: !534)
!534 = !DILexicalBlockFile(scope: !532, file: !469, discriminator: 0)
!535 = !DILocation(line: 216, column: 13, scope: !534)
!536 = !DILocation(line: 216, column: 4, scope: !534)
!537 = !DILocation(line: 223, column: 4, scope: !534)
!538 = !DILocation(line: 232, column: 5, scope: !534)
!539 = distinct !DISubprogram(name: "token::freeze_account.1", linkageName: "token::freeze_account.1", scope: null, file: !469, line: 235, type: !5, scopeLine: 235, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!540 = !DILocation(line: 235, column: 4, scope: !541)
!541 = !DILexicalBlockFile(scope: !539, file: !469, discriminator: 0)
!542 = !DILocation(line: 238, column: 13, scope: !541)
!543 = !DILocation(line: 238, column: 4, scope: !541)
!544 = !DILocation(line: 245, column: 4, scope: !541)
!545 = !DILocation(line: 254, column: 5, scope: !541)
!546 = distinct !DISubprogram(name: "token::thaw_account.1", linkageName: "token::thaw_account.1", scope: null, file: !469, line: 257, type: !5, scopeLine: 257, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!547 = !DILocation(line: 257, column: 4, scope: !548)
!548 = !DILexicalBlockFile(scope: !546, file: !469, discriminator: 0)
!549 = !DILocation(line: 258, column: 13, scope: !548)
!550 = !DILocation(line: 258, column: 4, scope: !548)
!551 = !DILocation(line: 265, column: 4, scope: !548)
!552 = !DILocation(line: 274, column: 5, scope: !548)
!553 = distinct !DISubprogram(name: "token::initialize_mint.4", linkageName: "token::initialize_mint.4", scope: null, file: !469, line: 277, type: !5, scopeLine: 277, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!554 = !DILocation(line: 277, column: 4, scope: !555)
!555 = !DILexicalBlockFile(scope: !553, file: !469, discriminator: 0)
!556 = !DILocation(line: 283, column: 13, scope: !555)
!557 = !DILocation(line: 283, column: 4, scope: !555)
!558 = !DILocation(line: 290, column: 4, scope: !555)
!559 = !DILocation(line: 295, column: 5, scope: !555)
!560 = distinct !DISubprogram(name: "token::initialize_mint2.4", linkageName: "token::initialize_mint2.4", scope: null, file: !469, line: 298, type: !5, scopeLine: 298, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!561 = !DILocation(line: 298, column: 4, scope: !562)
!562 = !DILexicalBlockFile(scope: !560, file: !469, discriminator: 0)
!563 = !DILocation(line: 304, column: 13, scope: !562)
!564 = !DILocation(line: 304, column: 4, scope: !562)
!565 = !DILocation(line: 311, column: 4, scope: !562)
!566 = !DILocation(line: 312, column: 9, scope: !562)
!567 = distinct !DISubprogram(name: "token::set_authority.anon.1", linkageName: "token::set_authority.anon.1", scope: null, file: !469, line: 321, type: !5, scopeLine: 321, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!568 = !DILocation(line: 321, column: 31, scope: !569)
!569 = !DILexicalBlockFile(scope: !567, file: !469, discriminator: 0)
!570 = !DILocation(line: 322, column: 42, scope: !569)
!571 = !DILocation(line: 322, column: 8, scope: !569)
!572 = distinct !DISubprogram(name: "token::set_authority.3", linkageName: "token::set_authority.3", scope: null, file: !469, line: 315, type: !5, scopeLine: 315, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!573 = !DILocation(line: 315, column: 4, scope: !574)
!574 = !DILexicalBlockFile(scope: !572, file: !469, discriminator: 0)
!575 = !DILocation(line: 320, column: 4, scope: !574)
!576 = !DILocation(line: 321, column: 21, scope: !574)
!577 = !DILocation(line: 321, column: 4, scope: !574)
!578 = !DILocation(line: 321, column: 31, scope: !574)
!579 = !DILocation(line: 325, column: 13, scope: !574)
!580 = !DILocation(line: 325, column: 4, scope: !574)
!581 = !DILocation(line: 333, column: 4, scope: !574)
!582 = !DILocation(line: 341, column: 5, scope: !574)
!583 = distinct !DISubprogram(name: "token::sync_native.1", linkageName: "token::sync_native.1", scope: null, file: !469, line: 344, type: !5, scopeLine: 344, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!584 = !DILocation(line: 344, column: 4, scope: !585)
!585 = !DILexicalBlockFile(scope: !583, file: !469, discriminator: 0)
!586 = !DILocation(line: 345, column: 13, scope: !585)
!587 = !DILocation(line: 345, column: 4, scope: !585)
!588 = !DILocation(line: 346, column: 4, scope: !585)
!589 = !DILocation(line: 347, column: 9, scope: !585)
!590 = distinct !DISubprogram(name: "sol.model.struct.anchor.Transfer", linkageName: "sol.model.struct.anchor.Transfer", scope: null, file: !469, line: 351, type: !5, scopeLine: 351, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!591 = !DILocation(line: 351, column: 4, scope: !592)
!592 = !DILexicalBlockFile(scope: !590, file: !469, discriminator: 0)
!593 = !DILocation(line: 352, column: 8, scope: !592)
!594 = !DILocation(line: 353, column: 8, scope: !592)
!595 = !DILocation(line: 354, column: 8, scope: !592)
!596 = distinct !DISubprogram(name: "sol.model.struct.anchor.TransferChecked", linkageName: "sol.model.struct.anchor.TransferChecked", scope: null, file: !469, line: 358, type: !5, scopeLine: 358, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!597 = !DILocation(line: 358, column: 4, scope: !598)
!598 = !DILexicalBlockFile(scope: !596, file: !469, discriminator: 0)
!599 = !DILocation(line: 359, column: 8, scope: !598)
!600 = !DILocation(line: 360, column: 8, scope: !598)
!601 = !DILocation(line: 361, column: 8, scope: !598)
!602 = !DILocation(line: 362, column: 8, scope: !598)
!603 = distinct !DISubprogram(name: "sol.model.struct.anchor.MintTo", linkageName: "sol.model.struct.anchor.MintTo", scope: null, file: !469, line: 366, type: !5, scopeLine: 366, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!604 = !DILocation(line: 366, column: 4, scope: !605)
!605 = !DILexicalBlockFile(scope: !603, file: !469, discriminator: 0)
!606 = !DILocation(line: 367, column: 8, scope: !605)
!607 = !DILocation(line: 368, column: 8, scope: !605)
!608 = !DILocation(line: 369, column: 8, scope: !605)
!609 = distinct !DISubprogram(name: "sol.model.struct.anchor.Burn", linkageName: "sol.model.struct.anchor.Burn", scope: null, file: !469, line: 373, type: !5, scopeLine: 373, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!610 = !DILocation(line: 373, column: 4, scope: !611)
!611 = !DILexicalBlockFile(scope: !609, file: !469, discriminator: 0)
!612 = !DILocation(line: 374, column: 8, scope: !611)
!613 = !DILocation(line: 375, column: 8, scope: !611)
!614 = !DILocation(line: 376, column: 8, scope: !611)
!615 = distinct !DISubprogram(name: "sol.model.struct.anchor.Approve", linkageName: "sol.model.struct.anchor.Approve", scope: null, file: !469, line: 380, type: !5, scopeLine: 380, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!616 = !DILocation(line: 380, column: 4, scope: !617)
!617 = !DILexicalBlockFile(scope: !615, file: !469, discriminator: 0)
!618 = !DILocation(line: 381, column: 8, scope: !617)
!619 = !DILocation(line: 382, column: 8, scope: !617)
!620 = !DILocation(line: 383, column: 8, scope: !617)
!621 = distinct !DISubprogram(name: "sol.model.struct.anchor.ApproveChecked", linkageName: "sol.model.struct.anchor.ApproveChecked", scope: null, file: !469, line: 387, type: !5, scopeLine: 387, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!622 = !DILocation(line: 387, column: 4, scope: !623)
!623 = !DILexicalBlockFile(scope: !621, file: !469, discriminator: 0)
!624 = !DILocation(line: 388, column: 8, scope: !623)
!625 = !DILocation(line: 389, column: 8, scope: !623)
!626 = !DILocation(line: 390, column: 8, scope: !623)
!627 = !DILocation(line: 391, column: 8, scope: !623)
!628 = distinct !DISubprogram(name: "sol.model.struct.anchor.Revoke", linkageName: "sol.model.struct.anchor.Revoke", scope: null, file: !469, line: 395, type: !5, scopeLine: 395, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!629 = !DILocation(line: 395, column: 4, scope: !630)
!630 = !DILexicalBlockFile(scope: !628, file: !469, discriminator: 0)
!631 = !DILocation(line: 396, column: 8, scope: !630)
!632 = !DILocation(line: 397, column: 8, scope: !630)
!633 = distinct !DISubprogram(name: "sol.model.struct.anchor.InitializeAccount", linkageName: "sol.model.struct.anchor.InitializeAccount", scope: null, file: !469, line: 401, type: !5, scopeLine: 401, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!634 = !DILocation(line: 401, column: 4, scope: !635)
!635 = !DILexicalBlockFile(scope: !633, file: !469, discriminator: 0)
!636 = !DILocation(line: 402, column: 8, scope: !635)
!637 = !DILocation(line: 403, column: 8, scope: !635)
!638 = !DILocation(line: 404, column: 8, scope: !635)
!639 = !DILocation(line: 405, column: 8, scope: !635)
!640 = distinct !DISubprogram(name: "sol.model.struct.anchor.InitializeAccount3", linkageName: "sol.model.struct.anchor.InitializeAccount3", scope: null, file: !469, line: 409, type: !5, scopeLine: 409, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!641 = !DILocation(line: 409, column: 4, scope: !642)
!642 = !DILexicalBlockFile(scope: !640, file: !469, discriminator: 0)
!643 = !DILocation(line: 410, column: 8, scope: !642)
!644 = !DILocation(line: 411, column: 8, scope: !642)
!645 = !DILocation(line: 412, column: 8, scope: !642)
!646 = distinct !DISubprogram(name: "sol.model.struct.anchor.CloseAccount", linkageName: "sol.model.struct.anchor.CloseAccount", scope: null, file: !469, line: 416, type: !5, scopeLine: 416, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!647 = !DILocation(line: 416, column: 4, scope: !648)
!648 = !DILexicalBlockFile(scope: !646, file: !469, discriminator: 0)
!649 = !DILocation(line: 417, column: 8, scope: !648)
!650 = !DILocation(line: 418, column: 8, scope: !648)
!651 = !DILocation(line: 419, column: 8, scope: !648)
!652 = distinct !DISubprogram(name: "sol.model.struct.anchor.FreezeAccount", linkageName: "sol.model.struct.anchor.FreezeAccount", scope: null, file: !469, line: 423, type: !5, scopeLine: 423, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!653 = !DILocation(line: 423, column: 4, scope: !654)
!654 = !DILexicalBlockFile(scope: !652, file: !469, discriminator: 0)
!655 = !DILocation(line: 424, column: 8, scope: !654)
!656 = !DILocation(line: 425, column: 8, scope: !654)
!657 = !DILocation(line: 426, column: 8, scope: !654)
!658 = distinct !DISubprogram(name: "sol.model.struct.anchor.ThawAccount", linkageName: "sol.model.struct.anchor.ThawAccount", scope: null, file: !469, line: 430, type: !5, scopeLine: 430, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!659 = !DILocation(line: 430, column: 4, scope: !660)
!660 = !DILexicalBlockFile(scope: !658, file: !469, discriminator: 0)
!661 = !DILocation(line: 431, column: 8, scope: !660)
!662 = !DILocation(line: 432, column: 8, scope: !660)
!663 = !DILocation(line: 433, column: 8, scope: !660)
!664 = distinct !DISubprogram(name: "sol.model.struct.anchor.InitializeMint", linkageName: "sol.model.struct.anchor.InitializeMint", scope: null, file: !469, line: 437, type: !5, scopeLine: 437, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!665 = !DILocation(line: 437, column: 4, scope: !666)
!666 = !DILexicalBlockFile(scope: !664, file: !469, discriminator: 0)
!667 = !DILocation(line: 438, column: 8, scope: !666)
!668 = !DILocation(line: 439, column: 8, scope: !666)
!669 = distinct !DISubprogram(name: "sol.model.struct.anchor.InitializeMint2", linkageName: "sol.model.struct.anchor.InitializeMint2", scope: null, file: !469, line: 443, type: !5, scopeLine: 443, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!670 = !DILocation(line: 443, column: 4, scope: !671)
!671 = !DILexicalBlockFile(scope: !669, file: !469, discriminator: 0)
!672 = !DILocation(line: 444, column: 8, scope: !671)
!673 = distinct !DISubprogram(name: "sol.model.struct.anchor.SetAuthority", linkageName: "sol.model.struct.anchor.SetAuthority", scope: null, file: !469, line: 448, type: !5, scopeLine: 448, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!674 = !DILocation(line: 448, column: 4, scope: !675)
!675 = !DILexicalBlockFile(scope: !673, file: !469, discriminator: 0)
!676 = !DILocation(line: 449, column: 8, scope: !675)
!677 = !DILocation(line: 450, column: 8, scope: !675)
!678 = distinct !DISubprogram(name: "sol.model.struct.anchor.SyncNative", linkageName: "sol.model.struct.anchor.SyncNative", scope: null, file: !469, line: 454, type: !5, scopeLine: 454, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!679 = !DILocation(line: 454, column: 4, scope: !680)
!680 = !DILexicalBlockFile(scope: !678, file: !469, discriminator: 0)
!681 = !DILocation(line: 455, column: 8, scope: !680)
!682 = distinct !DISubprogram(name: "token::TokenAccount::try_deserialize_unchecked.1", linkageName: "token::TokenAccount::try_deserialize_unchecked.1", scope: null, file: !469, line: 466, type: !5, scopeLine: 466, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!683 = !DILocation(line: 466, column: 4, scope: !684)
!684 = !DILexicalBlockFile(scope: !682, file: !469, discriminator: 0)
!685 = !DILocation(line: 467, column: 8, scope: !684)
!686 = !DILocation(line: 468, column: 13, scope: !684)
!687 = !DILocation(line: 469, column: 13, scope: !684)
!688 = distinct !DISubprogram(name: "token::TokenAccount::owner.0", linkageName: "token::TokenAccount::owner.0", scope: null, file: !469, line: 476, type: !5, scopeLine: 476, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!689 = !DILocation(line: 476, column: 4, scope: !690)
!690 = !DILexicalBlockFile(scope: !688, file: !469, discriminator: 0)
!691 = distinct !DISubprogram(name: "token::TokenAccount::deref.1", linkageName: "token::TokenAccount::deref.1", scope: null, file: !469, line: 484, type: !5, scopeLine: 484, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!692 = !DILocation(line: 484, column: 4, scope: !693)
!693 = !DILexicalBlockFile(scope: !691, file: !469, discriminator: 0)
!694 = distinct !DISubprogram(name: "token::Mint::try_deserialize_unchecked.1", linkageName: "token::Mint::try_deserialize_unchecked.1", scope: null, file: !469, line: 497, type: !5, scopeLine: 497, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!695 = !DILocation(line: 497, column: 4, scope: !696)
!696 = !DILexicalBlockFile(scope: !694, file: !469, discriminator: 0)
!697 = !DILocation(line: 498, column: 8, scope: !696)
!698 = !DILocation(line: 499, column: 13, scope: !696)
!699 = !DILocation(line: 500, column: 13, scope: !696)
!700 = distinct !DISubprogram(name: "token::Mint::owner.0", linkageName: "token::Mint::owner.0", scope: null, file: !469, line: 507, type: !5, scopeLine: 507, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!701 = !DILocation(line: 507, column: 4, scope: !702)
!702 = !DILexicalBlockFile(scope: !700, file: !469, discriminator: 0)
!703 = distinct !DISubprogram(name: "token::Mint::deref.1", linkageName: "token::Mint::deref.1", scope: null, file: !469, line: 515, type: !5, scopeLine: 515, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!704 = !DILocation(line: 515, column: 4, scope: !705)
!705 = !DILexicalBlockFile(scope: !703, file: !469, discriminator: 0)
!706 = distinct !DISubprogram(name: "sol.model.struct.Token", linkageName: "sol.model.struct.Token", scope: null, file: !469, line: 521, type: !5, scopeLine: 521, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!707 = !DILocation(line: 521, column: 4, scope: !708)
!708 = !DILexicalBlockFile(scope: !706, file: !469, discriminator: 0)
!709 = distinct !DISubprogram(name: "token::Token::id.0", linkageName: "token::Token::id.0", scope: null, file: !469, line: 524, type: !5, scopeLine: 524, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!710 = !DILocation(line: 524, column: 4, scope: !711)
!711 = !DILexicalBlockFile(scope: !709, file: !469, discriminator: 0)
!712 = distinct !DISubprogram(name: "accessor::amount.1", linkageName: "accessor::amount.1", scope: null, file: !469, line: 534, type: !5, scopeLine: 534, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!713 = !DILocation(line: 534, column: 8, scope: !714)
!714 = !DILexicalBlockFile(scope: !712, file: !469, discriminator: 0)
!715 = !DILocation(line: 535, column: 28, scope: !714)
!716 = !DILocation(line: 535, column: 8, scope: !714)
!717 = !DILocation(line: 536, column: 8, scope: !714)
!718 = !DILocation(line: 537, column: 21, scope: !714)
!719 = !DILocation(line: 538, column: 11, scope: !714)
!720 = !DILocation(line: 538, column: 8, scope: !714)
!721 = distinct !DISubprogram(name: "accessor::mint.1", linkageName: "accessor::mint.1", scope: null, file: !469, line: 541, type: !5, scopeLine: 541, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!722 = !DILocation(line: 541, column: 8, scope: !723)
!723 = !DILexicalBlockFile(scope: !721, file: !469, discriminator: 0)
!724 = !DILocation(line: 542, column: 28, scope: !723)
!725 = !DILocation(line: 542, column: 8, scope: !723)
!726 = !DILocation(line: 543, column: 8, scope: !723)
!727 = !DILocation(line: 544, column: 19, scope: !723)
!728 = !DILocation(line: 545, column: 11, scope: !723)
!729 = !DILocation(line: 545, column: 8, scope: !723)
!730 = distinct !DISubprogram(name: "accessor::authority.1", linkageName: "accessor::authority.1", scope: null, file: !469, line: 548, type: !5, scopeLine: 548, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!731 = !DILocation(line: 548, column: 8, scope: !732)
!732 = !DILexicalBlockFile(scope: !730, file: !469, discriminator: 0)
!733 = !DILocation(line: 549, column: 28, scope: !732)
!734 = !DILocation(line: 549, column: 8, scope: !732)
!735 = !DILocation(line: 550, column: 8, scope: !732)
!736 = !DILocation(line: 551, column: 20, scope: !732)
!737 = !DILocation(line: 552, column: 11, scope: !732)
!738 = !DILocation(line: 552, column: 8, scope: !732)
!739 = distinct !DISubprogram(name: "shmem::ret.2", linkageName: "shmem::ret.2", scope: null, file: !740, line: 22, type: !5, scopeLine: 22, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!740 = !DIFile(filename: "/solana-cctp-contracts/vendor/anchor-spl/src/shmem.rs", directory: "")
!741 = !DILocation(line: 22, column: 4, scope: !742)
!742 = !DILexicalBlockFile(scope: !739, file: !740, discriminator: 0)
!743 = !DILocation(line: 27, column: 8, scope: !742)
!744 = !DILocation(line: 28, column: 18, scope: !742)
!745 = !DILocation(line: 28, column: 8, scope: !742)
!746 = !DILocation(line: 26, column: 22, scope: !742)
!747 = !DILocation(line: 26, column: 4, scope: !742)
!748 = !DILocation(line: 31, column: 23, scope: !742)
!749 = !DILocation(line: 31, column: 4, scope: !742)
!750 = !DILocation(line: 32, column: 30, scope: !742)
!751 = !DILocation(line: 32, column: 13, scope: !742)
!752 = !DILocation(line: 33, column: 4, scope: !742)
!753 = distinct !DISubprogram(name: "sol.model.struct.anchor.Ret", linkageName: "sol.model.struct.anchor.Ret", scope: null, file: !740, line: 37, type: !5, scopeLine: 37, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!754 = !DILocation(line: 37, column: 4, scope: !755)
!755 = !DILexicalBlockFile(scope: !753, file: !740, discriminator: 0)
!756 = !DILocation(line: 38, column: 6, scope: !755)
!757 = !DILocation(line: 39, column: 8, scope: !755)
!758 = distinct !DISubprogram(name: "sol.model.struct.anchor.Shmem", linkageName: "sol.model.struct.anchor.Shmem", scope: null, file: !740, line: 44, type: !5, scopeLine: 44, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!759 = !DILocation(line: 44, column: 4, scope: !760)
!760 = !DILexicalBlockFile(scope: !758, file: !740, discriminator: 0)
!761 = !DILocation(line: 46, column: 6, scope: !760)
!762 = !DILocation(line: 47, column: 8, scope: !760)
!763 = !DILocation(line: 48, column: 6, scope: !760)
!764 = !DILocation(line: 49, column: 8, scope: !760)
!765 = distinct !DISubprogram(name: "stake::authorize.anon.1", linkageName: "stake::authorize.anon.1", scope: null, file: !766, line: 36, type: !5, scopeLine: 36, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!766 = !DIFile(filename: "/solana-cctp-contracts/vendor/anchor-spl/src/stake.rs", directory: "")
!767 = !DILocation(line: 36, column: 31, scope: !768)
!768 = !DILexicalBlockFile(scope: !765, file: !766, discriminator: 0)
!769 = !DILocation(line: 37, column: 22, scope: !768)
!770 = distinct !DISubprogram(name: "stake::authorize.3", linkageName: "stake::authorize.3", scope: null, file: !766, line: 19, type: !5, scopeLine: 19, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!771 = !DILocation(line: 19, column: 4, scope: !772)
!772 = !DILexicalBlockFile(scope: !770, file: !766, discriminator: 0)
!773 = !DILocation(line: 29, column: 18, scope: !772)
!774 = !DILocation(line: 29, column: 27, scope: !772)
!775 = !DILocation(line: 24, column: 13, scope: !772)
!776 = !DILocation(line: 24, column: 4, scope: !772)
!777 = !DILocation(line: 31, column: 28, scope: !772)
!778 = !DILocation(line: 31, column: 4, scope: !772)
!779 = !DILocation(line: 36, column: 4, scope: !772)
!780 = !DILocation(line: 36, column: 31, scope: !772)
!781 = !DILocation(line: 39, column: 4, scope: !772)
!782 = !DILocation(line: 40, column: 9, scope: !772)
!783 = distinct !DISubprogram(name: "stake::withdraw.anon.1", linkageName: "stake::withdraw.anon.1", scope: null, file: !766, line: 62, type: !5, scopeLine: 62, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!784 = !DILocation(line: 62, column: 31, scope: !785)
!785 = !DILexicalBlockFile(scope: !783, file: !766, discriminator: 0)
!786 = !DILocation(line: 63, column: 22, scope: !785)
!787 = distinct !DISubprogram(name: "stake::withdraw.3", linkageName: "stake::withdraw.3", scope: null, file: !766, line: 43, type: !5, scopeLine: 43, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!788 = !DILocation(line: 43, column: 4, scope: !789)
!789 = !DILexicalBlockFile(scope: !787, file: !766, discriminator: 0)
!790 = !DILocation(line: 53, column: 18, scope: !789)
!791 = !DILocation(line: 53, column: 27, scope: !789)
!792 = !DILocation(line: 48, column: 13, scope: !789)
!793 = !DILocation(line: 48, column: 4, scope: !789)
!794 = !DILocation(line: 55, column: 28, scope: !789)
!795 = !DILocation(line: 55, column: 4, scope: !789)
!796 = !DILocation(line: 62, column: 4, scope: !789)
!797 = !DILocation(line: 62, column: 31, scope: !789)
!798 = !DILocation(line: 65, column: 4, scope: !789)
!799 = !DILocation(line: 66, column: 9, scope: !789)
!800 = distinct !DISubprogram(name: "stake::deactivate_stake.1", linkageName: "stake::deactivate_stake.1", scope: null, file: !766, line: 69, type: !5, scopeLine: 69, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!801 = !DILocation(line: 69, column: 4, scope: !802)
!802 = !DILexicalBlockFile(scope: !800, file: !766, discriminator: 0)
!803 = !DILocation(line: 72, column: 13, scope: !802)
!804 = !DILocation(line: 72, column: 4, scope: !802)
!805 = !DILocation(line: 73, column: 4, scope: !802)
!806 = !DILocation(line: 78, column: 5, scope: !802)
!807 = distinct !DISubprogram(name: "sol.model.struct.anchor.Authorize", linkageName: "sol.model.struct.anchor.Authorize", scope: null, file: !766, line: 84, type: !5, scopeLine: 84, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!808 = !DILocation(line: 84, column: 4, scope: !809)
!809 = !DILexicalBlockFile(scope: !807, file: !766, discriminator: 0)
!810 = !DILocation(line: 86, column: 8, scope: !809)
!811 = !DILocation(line: 89, column: 8, scope: !809)
!812 = !DILocation(line: 92, column: 8, scope: !809)
!813 = !DILocation(line: 95, column: 8, scope: !809)
!814 = distinct !DISubprogram(name: "sol.model.struct.anchor.Withdraw", linkageName: "sol.model.struct.anchor.Withdraw", scope: null, file: !766, line: 99, type: !5, scopeLine: 99, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!815 = !DILocation(line: 99, column: 4, scope: !816)
!816 = !DILexicalBlockFile(scope: !814, file: !766, discriminator: 0)
!817 = !DILocation(line: 101, column: 8, scope: !816)
!818 = !DILocation(line: 104, column: 8, scope: !816)
!819 = !DILocation(line: 107, column: 8, scope: !816)
!820 = !DILocation(line: 110, column: 8, scope: !816)
!821 = !DILocation(line: 113, column: 8, scope: !816)
!822 = distinct !DISubprogram(name: "sol.model.struct.anchor.DeactivateStake", linkageName: "sol.model.struct.anchor.DeactivateStake", scope: null, file: !766, line: 117, type: !5, scopeLine: 117, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!823 = !DILocation(line: 117, column: 4, scope: !824)
!824 = !DILexicalBlockFile(scope: !822, file: !766, discriminator: 0)
!825 = !DILocation(line: 119, column: 8, scope: !824)
!826 = !DILocation(line: 122, column: 8, scope: !824)
!827 = !DILocation(line: 125, column: 8, scope: !824)
!828 = distinct !DISubprogram(name: "stake::StakeAccount::try_deserialize.1", linkageName: "stake::StakeAccount::try_deserialize.1", scope: null, file: !766, line: 134, type: !5, scopeLine: 134, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!829 = !DILocation(line: 134, column: 4, scope: !830)
!830 = !DILexicalBlockFile(scope: !828, file: !766, discriminator: 0)
!831 = !DILocation(line: 135, column: 8, scope: !830)
!832 = distinct !DISubprogram(name: "stake::StakeAccount::try_deserialize_unchecked.1", linkageName: "stake::StakeAccount::try_deserialize_unchecked.1", scope: null, file: !766, line: 138, type: !5, scopeLine: 138, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!833 = !DILocation(line: 138, column: 4, scope: !834)
!834 = !DILexicalBlockFile(scope: !832, file: !766, discriminator: 0)
!835 = !DILocation(line: 139, column: 8, scope: !834)
!836 = !DILocation(line: 139, column: 37, scope: !834)
!837 = !DILocation(line: 139, column: 47, scope: !834)
!838 = distinct !DISubprogram(name: "stake::StakeAccount::owner.0", linkageName: "stake::StakeAccount::owner.0", scope: null, file: !766, line: 146, type: !5, scopeLine: 146, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!839 = !DILocation(line: 146, column: 4, scope: !840)
!840 = !DILexicalBlockFile(scope: !838, file: !766, discriminator: 0)
!841 = distinct !DISubprogram(name: "stake::StakeAccount::deref.1", linkageName: "stake::StakeAccount::deref.1", scope: null, file: !766, line: 154, type: !5, scopeLine: 154, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!842 = !DILocation(line: 154, column: 4, scope: !843)
!843 = !DILexicalBlockFile(scope: !841, file: !766, discriminator: 0)
!844 = distinct !DISubprogram(name: "sol.model.struct.Stake", linkageName: "sol.model.struct.Stake", scope: null, file: !766, line: 160, type: !5, scopeLine: 160, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!845 = !DILocation(line: 160, column: 4, scope: !846)
!846 = !DILexicalBlockFile(scope: !844, file: !766, discriminator: 0)
!847 = distinct !DISubprogram(name: "stake::Stake::id.0", linkageName: "stake::Stake::id.0", scope: null, file: !766, line: 163, type: !5, scopeLine: 163, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!848 = !DILocation(line: 163, column: 4, scope: !849)
!849 = !DILexicalBlockFile(scope: !847, file: !766, discriminator: 0)
!850 = distinct !DISubprogram(name: "associated_token::create.1", linkageName: "associated_token::create.1", scope: null, file: !851, line: 10, type: !5, scopeLine: 10, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!851 = !DIFile(filename: "/solana-cctp-contracts/vendor/anchor-spl/src/associated_token.rs", directory: "")
!852 = !DILocation(line: 10, column: 4, scope: !853)
!853 = !DILexicalBlockFile(scope: !850, file: !851, discriminator: 0)
!854 = !DILocation(line: 11, column: 13, scope: !853)
!855 = !DILocation(line: 11, column: 4, scope: !853)
!856 = !DILocation(line: 17, column: 4, scope: !853)
!857 = !DILocation(line: 29, column: 5, scope: !853)
!858 = distinct !DISubprogram(name: "associated_token::create_idempotent.1", linkageName: "associated_token::create_idempotent.1", scope: null, file: !851, line: 32, type: !5, scopeLine: 32, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!859 = !DILocation(line: 32, column: 4, scope: !860)
!860 = !DILexicalBlockFile(scope: !858, file: !851, discriminator: 0)
!861 = !DILocation(line: 35, column: 13, scope: !860)
!862 = !DILocation(line: 35, column: 4, scope: !860)
!863 = !DILocation(line: 41, column: 4, scope: !860)
!864 = !DILocation(line: 53, column: 5, scope: !860)
!865 = distinct !DISubprogram(name: "sol.model.struct.anchor.Create", linkageName: "sol.model.struct.anchor.Create", scope: null, file: !851, line: 57, type: !5, scopeLine: 57, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!866 = !DILocation(line: 57, column: 4, scope: !867)
!867 = !DILexicalBlockFile(scope: !865, file: !851, discriminator: 0)
!868 = !DILocation(line: 58, column: 8, scope: !867)
!869 = !DILocation(line: 59, column: 8, scope: !867)
!870 = !DILocation(line: 60, column: 8, scope: !867)
!871 = !DILocation(line: 61, column: 8, scope: !867)
!872 = !DILocation(line: 62, column: 8, scope: !867)
!873 = !DILocation(line: 63, column: 8, scope: !867)
!874 = distinct !DISubprogram(name: "sol.model.struct.AssociatedToken", linkageName: "sol.model.struct.AssociatedToken", scope: null, file: !851, line: 69, type: !5, scopeLine: 69, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!875 = !DILocation(line: 69, column: 4, scope: !876)
!876 = !DILexicalBlockFile(scope: !874, file: !851, discriminator: 0)
!877 = distinct !DISubprogram(name: "associated_token::AssociatedToken::id.0", linkageName: "associated_token::AssociatedToken::id.0", scope: null, file: !851, line: 72, type: !5, scopeLine: 72, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!878 = !DILocation(line: 72, column: 4, scope: !879)
!879 = !DILexicalBlockFile(scope: !877, file: !851, discriminator: 0)
!880 = distinct !DISubprogram(name: "token_2022::transfer.2", linkageName: "token_2022::transfer.2", scope: null, file: !881, line: 14, type: !5, scopeLine: 14, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!881 = !DIFile(filename: "/solana-cctp-contracts/vendor/anchor-spl/src/token_2022.rs", directory: "")
!882 = !DILocation(line: 14, column: 4, scope: !883)
!883 = !DILexicalBlockFile(scope: !880, file: !881, discriminator: 0)
!884 = !DILocation(line: 19, column: 13, scope: !883)
!885 = !DILocation(line: 18, column: 4, scope: !883)
!886 = !DILocation(line: 27, column: 4, scope: !883)
!887 = !DILocation(line: 36, column: 5, scope: !883)
!888 = distinct !DISubprogram(name: "token_2022::transfer_checked.3", linkageName: "token_2022::transfer_checked.3", scope: null, file: !881, line: 39, type: !5, scopeLine: 39, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!889 = !DILocation(line: 39, column: 4, scope: !890)
!890 = !DILexicalBlockFile(scope: !888, file: !881, discriminator: 0)
!891 = !DILocation(line: 44, column: 13, scope: !890)
!892 = !DILocation(line: 44, column: 4, scope: !890)
!893 = !DILocation(line: 54, column: 4, scope: !890)
!894 = !DILocation(line: 64, column: 5, scope: !890)
!895 = distinct !DISubprogram(name: "token_2022::mint_to.2", linkageName: "token_2022::mint_to.2", scope: null, file: !881, line: 67, type: !5, scopeLine: 67, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!896 = !DILocation(line: 67, column: 4, scope: !897)
!897 = !DILexicalBlockFile(scope: !895, file: !881, discriminator: 0)
!898 = !DILocation(line: 71, column: 13, scope: !897)
!899 = !DILocation(line: 71, column: 4, scope: !897)
!900 = !DILocation(line: 79, column: 4, scope: !897)
!901 = !DILocation(line: 88, column: 5, scope: !897)
!902 = distinct !DISubprogram(name: "token_2022::burn.2", linkageName: "token_2022::burn.2", scope: null, file: !881, line: 91, type: !5, scopeLine: 91, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!903 = !DILocation(line: 91, column: 4, scope: !904)
!904 = !DILexicalBlockFile(scope: !902, file: !881, discriminator: 0)
!905 = !DILocation(line: 92, column: 13, scope: !904)
!906 = !DILocation(line: 92, column: 4, scope: !904)
!907 = !DILocation(line: 100, column: 4, scope: !904)
!908 = !DILocation(line: 109, column: 5, scope: !904)
!909 = distinct !DISubprogram(name: "token_2022::approve.2", linkageName: "token_2022::approve.2", scope: null, file: !881, line: 112, type: !5, scopeLine: 112, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!910 = !DILocation(line: 112, column: 4, scope: !911)
!911 = !DILexicalBlockFile(scope: !909, file: !881, discriminator: 0)
!912 = !DILocation(line: 116, column: 13, scope: !911)
!913 = !DILocation(line: 116, column: 4, scope: !911)
!914 = !DILocation(line: 124, column: 4, scope: !911)
!915 = !DILocation(line: 133, column: 5, scope: !911)
!916 = distinct !DISubprogram(name: "token_2022::revoke.1", linkageName: "token_2022::revoke.1", scope: null, file: !881, line: 136, type: !5, scopeLine: 136, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!917 = !DILocation(line: 136, column: 4, scope: !918)
!918 = !DILexicalBlockFile(scope: !916, file: !881, discriminator: 0)
!919 = !DILocation(line: 137, column: 13, scope: !918)
!920 = !DILocation(line: 137, column: 4, scope: !918)
!921 = !DILocation(line: 143, column: 4, scope: !918)
!922 = !DILocation(line: 148, column: 5, scope: !918)
!923 = distinct !DISubprogram(name: "token_2022::initialize_account.1", linkageName: "token_2022::initialize_account.1", scope: null, file: !881, line: 151, type: !5, scopeLine: 151, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!924 = !DILocation(line: 151, column: 4, scope: !925)
!925 = !DILexicalBlockFile(scope: !923, file: !881, discriminator: 0)
!926 = !DILocation(line: 154, column: 13, scope: !925)
!927 = !DILocation(line: 154, column: 4, scope: !925)
!928 = !DILocation(line: 160, column: 4, scope: !925)
!929 = !DILocation(line: 169, column: 5, scope: !925)
!930 = distinct !DISubprogram(name: "token_2022::initialize_account3.1", linkageName: "token_2022::initialize_account3.1", scope: null, file: !881, line: 172, type: !5, scopeLine: 172, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!931 = !DILocation(line: 172, column: 4, scope: !932)
!932 = !DILexicalBlockFile(scope: !930, file: !881, discriminator: 0)
!933 = !DILocation(line: 175, column: 13, scope: !932)
!934 = !DILocation(line: 175, column: 4, scope: !932)
!935 = !DILocation(line: 181, column: 4, scope: !932)
!936 = !DILocation(line: 185, column: 5, scope: !932)
!937 = distinct !DISubprogram(name: "token_2022::close_account.1", linkageName: "token_2022::close_account.1", scope: null, file: !881, line: 188, type: !5, scopeLine: 188, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!938 = !DILocation(line: 188, column: 4, scope: !939)
!939 = !DILexicalBlockFile(scope: !937, file: !881, discriminator: 0)
!940 = !DILocation(line: 189, column: 13, scope: !939)
!941 = !DILocation(line: 189, column: 4, scope: !939)
!942 = !DILocation(line: 196, column: 4, scope: !939)
!943 = !DILocation(line: 205, column: 5, scope: !939)
!944 = distinct !DISubprogram(name: "token_2022::freeze_account.1", linkageName: "token_2022::freeze_account.1", scope: null, file: !881, line: 208, type: !5, scopeLine: 208, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!945 = !DILocation(line: 208, column: 4, scope: !946)
!946 = !DILexicalBlockFile(scope: !944, file: !881, discriminator: 0)
!947 = !DILocation(line: 211, column: 13, scope: !946)
!948 = !DILocation(line: 211, column: 4, scope: !946)
!949 = !DILocation(line: 218, column: 4, scope: !946)
!950 = !DILocation(line: 227, column: 5, scope: !946)
!951 = distinct !DISubprogram(name: "token_2022::thaw_account.1", linkageName: "token_2022::thaw_account.1", scope: null, file: !881, line: 230, type: !5, scopeLine: 230, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!952 = !DILocation(line: 230, column: 4, scope: !953)
!953 = !DILexicalBlockFile(scope: !951, file: !881, discriminator: 0)
!954 = !DILocation(line: 231, column: 13, scope: !953)
!955 = !DILocation(line: 231, column: 4, scope: !953)
!956 = !DILocation(line: 238, column: 4, scope: !953)
!957 = !DILocation(line: 247, column: 5, scope: !953)
!958 = distinct !DISubprogram(name: "token_2022::initialize_mint.4", linkageName: "token_2022::initialize_mint.4", scope: null, file: !881, line: 250, type: !5, scopeLine: 250, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!959 = !DILocation(line: 250, column: 4, scope: !960)
!960 = !DILexicalBlockFile(scope: !958, file: !881, discriminator: 0)
!961 = !DILocation(line: 256, column: 13, scope: !960)
!962 = !DILocation(line: 256, column: 4, scope: !960)
!963 = !DILocation(line: 263, column: 4, scope: !960)
!964 = !DILocation(line: 264, column: 9, scope: !960)
!965 = distinct !DISubprogram(name: "token_2022::initialize_mint2.4", linkageName: "token_2022::initialize_mint2.4", scope: null, file: !881, line: 267, type: !5, scopeLine: 267, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!966 = !DILocation(line: 267, column: 4, scope: !967)
!967 = !DILexicalBlockFile(scope: !965, file: !881, discriminator: 0)
!968 = !DILocation(line: 273, column: 13, scope: !967)
!969 = !DILocation(line: 273, column: 4, scope: !967)
!970 = !DILocation(line: 280, column: 4, scope: !967)
!971 = !DILocation(line: 280, column: 71, scope: !967)
!972 = distinct !DISubprogram(name: "token_2022::set_authority.anon.1", linkageName: "token_2022::set_authority.anon.1", scope: null, file: !881, line: 289, type: !5, scopeLine: 289, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!973 = !DILocation(line: 289, column: 31, scope: !974)
!974 = !DILexicalBlockFile(scope: !972, file: !881, discriminator: 0)
!975 = !DILocation(line: 290, column: 42, scope: !974)
!976 = !DILocation(line: 290, column: 8, scope: !974)
!977 = distinct !DISubprogram(name: "token_2022::set_authority.3", linkageName: "token_2022::set_authority.3", scope: null, file: !881, line: 283, type: !5, scopeLine: 283, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!978 = !DILocation(line: 283, column: 4, scope: !979)
!979 = !DILexicalBlockFile(scope: !977, file: !881, discriminator: 0)
!980 = !DILocation(line: 288, column: 4, scope: !979)
!981 = !DILocation(line: 289, column: 21, scope: !979)
!982 = !DILocation(line: 289, column: 4, scope: !979)
!983 = !DILocation(line: 289, column: 31, scope: !979)
!984 = !DILocation(line: 293, column: 13, scope: !979)
!985 = !DILocation(line: 293, column: 4, scope: !979)
!986 = !DILocation(line: 301, column: 4, scope: !979)
!987 = !DILocation(line: 309, column: 5, scope: !979)
!988 = distinct !DISubprogram(name: "token_2022::sync_native.1", linkageName: "token_2022::sync_native.1", scope: null, file: !881, line: 312, type: !5, scopeLine: 312, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!989 = !DILocation(line: 312, column: 4, scope: !990)
!990 = !DILexicalBlockFile(scope: !988, file: !881, discriminator: 0)
!991 = !DILocation(line: 313, column: 13, scope: !990)
!992 = !DILocation(line: 313, column: 4, scope: !990)
!993 = !DILocation(line: 314, column: 4, scope: !990)
!994 = !DILocation(line: 314, column: 74, scope: !990)
!995 = distinct !DISubprogram(name: "token_2022::get_account_data_size.anon.1", linkageName: "token_2022::get_account_data_size.anon.1", scope: null, file: !881, line: 330, type: !5, scopeLine: 330, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!996 = !DILocation(line: 330, column: 39, scope: !997)
!997 = !DILexicalBlockFile(scope: !995, file: !881, discriminator: 0)
!998 = !DILocation(line: 331, column: 16, scope: !997)
!999 = distinct !DISubprogram(name: "token_2022::get_account_data_size.anon.3", linkageName: "token_2022::get_account_data_size.anon.3", scope: null, file: !881, line: 333, type: !5, scopeLine: 333, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1000 = !DILocation(line: 333, column: 68, scope: !1001)
!1001 = !DILexicalBlockFile(scope: !999, file: !881, discriminator: 0)
!1002 = distinct !DISubprogram(name: "token_2022::get_account_data_size.anon.2", linkageName: "token_2022::get_account_data_size.anon.2", scope: null, file: !881, line: 332, type: !5, scopeLine: 332, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1003 = !DILocation(line: 332, column: 19, scope: !1004)
!1004 = !DILexicalBlockFile(scope: !1002, file: !881, discriminator: 0)
!1005 = !DILocation(line: 333, column: 21, scope: !1004)
!1006 = !DILocation(line: 333, column: 32, scope: !1004)
!1007 = !DILocation(line: 333, column: 68, scope: !1004)
!1008 = !DILocation(line: 333, column: 56, scope: !1004)
!1009 = distinct !DISubprogram(name: "token_2022::get_account_data_size.anon.5", linkageName: "token_2022::get_account_data_size.anon.5", scope: null, file: !881, line: 330, type: !5, scopeLine: 330, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1010 = !DILocation(line: 330, column: 39, scope: !1011)
!1011 = !DILexicalBlockFile(scope: !1009, file: !881, discriminator: 0)
!1012 = !DILocation(line: 331, column: 16, scope: !1011)
!1013 = distinct !DISubprogram(name: "token_2022::get_account_data_size.anon.7", linkageName: "token_2022::get_account_data_size.anon.7", scope: null, file: !881, line: 333, type: !5, scopeLine: 333, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1014 = !DILocation(line: 333, column: 68, scope: !1015)
!1015 = !DILexicalBlockFile(scope: !1013, file: !881, discriminator: 0)
!1016 = distinct !DISubprogram(name: "token_2022::get_account_data_size.anon.6", linkageName: "token_2022::get_account_data_size.anon.6", scope: null, file: !881, line: 332, type: !5, scopeLine: 332, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1017 = !DILocation(line: 332, column: 19, scope: !1018)
!1018 = !DILexicalBlockFile(scope: !1016, file: !881, discriminator: 0)
!1019 = !DILocation(line: 333, column: 21, scope: !1018)
!1020 = !DILocation(line: 333, column: 32, scope: !1018)
!1021 = !DILocation(line: 333, column: 68, scope: !1018)
!1022 = !DILocation(line: 333, column: 56, scope: !1018)
!1023 = distinct !DISubprogram(name: "token_2022::get_account_data_size.anon.4", linkageName: "token_2022::get_account_data_size.anon.4", scope: null, file: !881, line: 329, type: !5, scopeLine: 329, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1024 = !DILocation(line: 329, column: 32, scope: !1025)
!1025 = !DILexicalBlockFile(scope: !1023, file: !881, discriminator: 0)
!1026 = !DILocation(line: 330, column: 15, scope: !1025)
!1027 = !DILocation(line: 330, column: 12, scope: !1025)
!1028 = !DILocation(line: 330, column: 39, scope: !1025)
!1029 = !DILocation(line: 332, column: 19, scope: !1025)
!1030 = distinct !DISubprogram(name: "token_2022::get_account_data_size.2", linkageName: "token_2022::get_account_data_size.2", scope: null, file: !881, line: 317, type: !5, scopeLine: 317, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1031 = !DILocation(line: 317, column: 4, scope: !1032)
!1032 = !DILexicalBlockFile(scope: !1030, file: !881, discriminator: 0)
!1033 = !DILocation(line: 321, column: 13, scope: !1032)
!1034 = !DILocation(line: 321, column: 4, scope: !1032)
!1035 = !DILocation(line: 326, column: 4, scope: !1032)
!1036 = !DILocation(line: 327, column: 4, scope: !1032)
!1037 = !DILocation(line: 328, column: 9, scope: !1032)
!1038 = !DILocation(line: 330, column: 15, scope: !1032)
!1039 = !DILocation(line: 330, column: 12, scope: !1032)
!1040 = !DILocation(line: 330, column: 39, scope: !1032)
!1041 = !DILocation(line: 332, column: 19, scope: !1032)
!1042 = !DILocation(line: 329, column: 32, scope: !1032)
!1043 = !DILocation(line: 329, column: 9, scope: !1032)
!1044 = !DILocation(line: 338, column: 9, scope: !1032)
!1045 = distinct !DISubprogram(name: "token_2022::initialize_mint_close_authority.2", linkageName: "token_2022::initialize_mint_close_authority.2", scope: null, file: !881, line: 341, type: !5, scopeLine: 341, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1046 = !DILocation(line: 341, column: 4, scope: !1047)
!1047 = !DILexicalBlockFile(scope: !1045, file: !881, discriminator: 0)
!1048 = !DILocation(line: 345, column: 13, scope: !1047)
!1049 = !DILocation(line: 345, column: 4, scope: !1047)
!1050 = !DILocation(line: 350, column: 4, scope: !1047)
!1051 = !DILocation(line: 350, column: 71, scope: !1047)
!1052 = distinct !DISubprogram(name: "token_2022::initialize_immutable_owner.1", linkageName: "token_2022::initialize_immutable_owner.1", scope: null, file: !881, line: 353, type: !5, scopeLine: 353, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1053 = !DILocation(line: 353, column: 4, scope: !1054)
!1054 = !DILexicalBlockFile(scope: !1052, file: !881, discriminator: 0)
!1055 = !DILocation(line: 356, column: 13, scope: !1054)
!1056 = !DILocation(line: 356, column: 4, scope: !1054)
!1057 = !DILocation(line: 360, column: 4, scope: !1054)
!1058 = !DILocation(line: 360, column: 74, scope: !1054)
!1059 = distinct !DISubprogram(name: "token_2022::amount_to_ui_amount.anon.1", linkageName: "token_2022::amount_to_ui_amount.anon.1", scope: null, file: !881, line: 376, type: !5, scopeLine: 376, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1060 = !DILocation(line: 376, column: 39, scope: !1061)
!1061 = !DILexicalBlockFile(scope: !1059, file: !881, discriminator: 0)
!1062 = !DILocation(line: 377, column: 16, scope: !1061)
!1063 = distinct !DISubprogram(name: "token_2022::amount_to_ui_amount.anon.3", linkageName: "token_2022::amount_to_ui_amount.anon.3", scope: null, file: !881, line: 379, type: !5, scopeLine: 379, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1064 = !DILocation(line: 379, column: 52, scope: !1065)
!1065 = !DILexicalBlockFile(scope: !1063, file: !881, discriminator: 0)
!1066 = distinct !DISubprogram(name: "token_2022::amount_to_ui_amount.anon.2", linkageName: "token_2022::amount_to_ui_amount.anon.2", scope: null, file: !881, line: 378, type: !5, scopeLine: 378, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1067 = !DILocation(line: 378, column: 19, scope: !1068)
!1068 = !DILexicalBlockFile(scope: !1066, file: !881, discriminator: 0)
!1069 = !DILocation(line: 379, column: 16, scope: !1068)
!1070 = !DILocation(line: 379, column: 52, scope: !1068)
!1071 = !DILocation(line: 379, column: 40, scope: !1068)
!1072 = distinct !DISubprogram(name: "token_2022::amount_to_ui_amount.anon.5", linkageName: "token_2022::amount_to_ui_amount.anon.5", scope: null, file: !881, line: 376, type: !5, scopeLine: 376, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1073 = !DILocation(line: 376, column: 39, scope: !1074)
!1074 = !DILexicalBlockFile(scope: !1072, file: !881, discriminator: 0)
!1075 = !DILocation(line: 377, column: 16, scope: !1074)
!1076 = distinct !DISubprogram(name: "token_2022::amount_to_ui_amount.anon.7", linkageName: "token_2022::amount_to_ui_amount.anon.7", scope: null, file: !881, line: 379, type: !5, scopeLine: 379, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1077 = !DILocation(line: 379, column: 52, scope: !1078)
!1078 = !DILexicalBlockFile(scope: !1076, file: !881, discriminator: 0)
!1079 = distinct !DISubprogram(name: "token_2022::amount_to_ui_amount.anon.6", linkageName: "token_2022::amount_to_ui_amount.anon.6", scope: null, file: !881, line: 378, type: !5, scopeLine: 378, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1080 = !DILocation(line: 378, column: 19, scope: !1081)
!1081 = !DILexicalBlockFile(scope: !1079, file: !881, discriminator: 0)
!1082 = !DILocation(line: 379, column: 16, scope: !1081)
!1083 = !DILocation(line: 379, column: 52, scope: !1081)
!1084 = !DILocation(line: 379, column: 40, scope: !1081)
!1085 = distinct !DISubprogram(name: "token_2022::amount_to_ui_amount.anon.4", linkageName: "token_2022::amount_to_ui_amount.anon.4", scope: null, file: !881, line: 375, type: !5, scopeLine: 375, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1086 = !DILocation(line: 375, column: 32, scope: !1087)
!1087 = !DILexicalBlockFile(scope: !1085, file: !881, discriminator: 0)
!1088 = !DILocation(line: 376, column: 15, scope: !1087)
!1089 = !DILocation(line: 376, column: 12, scope: !1087)
!1090 = !DILocation(line: 376, column: 39, scope: !1087)
!1091 = !DILocation(line: 378, column: 19, scope: !1087)
!1092 = distinct !DISubprogram(name: "token_2022::amount_to_ui_amount.2", linkageName: "token_2022::amount_to_ui_amount.2", scope: null, file: !881, line: 363, type: !5, scopeLine: 363, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1093 = !DILocation(line: 363, column: 4, scope: !1094)
!1094 = !DILexicalBlockFile(scope: !1092, file: !881, discriminator: 0)
!1095 = !DILocation(line: 367, column: 13, scope: !1094)
!1096 = !DILocation(line: 367, column: 4, scope: !1094)
!1097 = !DILocation(line: 372, column: 4, scope: !1094)
!1098 = !DILocation(line: 373, column: 4, scope: !1094)
!1099 = !DILocation(line: 374, column: 9, scope: !1094)
!1100 = !DILocation(line: 376, column: 15, scope: !1094)
!1101 = !DILocation(line: 376, column: 12, scope: !1094)
!1102 = !DILocation(line: 376, column: 39, scope: !1094)
!1103 = !DILocation(line: 378, column: 19, scope: !1094)
!1104 = !DILocation(line: 375, column: 32, scope: !1094)
!1105 = !DILocation(line: 375, column: 9, scope: !1094)
!1106 = !DILocation(line: 384, column: 9, scope: !1094)
!1107 = distinct !DISubprogram(name: "token_2022::ui_amount_to_amount.anon.1", linkageName: "token_2022::ui_amount_to_amount.anon.1", scope: null, file: !881, line: 400, type: !5, scopeLine: 400, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1108 = !DILocation(line: 400, column: 39, scope: !1109)
!1109 = !DILexicalBlockFile(scope: !1107, file: !881, discriminator: 0)
!1110 = !DILocation(line: 401, column: 16, scope: !1109)
!1111 = distinct !DISubprogram(name: "token_2022::ui_amount_to_amount.anon.3", linkageName: "token_2022::ui_amount_to_amount.anon.3", scope: null, file: !881, line: 403, type: !5, scopeLine: 403, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1112 = !DILocation(line: 403, column: 68, scope: !1113)
!1113 = !DILexicalBlockFile(scope: !1111, file: !881, discriminator: 0)
!1114 = distinct !DISubprogram(name: "token_2022::ui_amount_to_amount.anon.2", linkageName: "token_2022::ui_amount_to_amount.anon.2", scope: null, file: !881, line: 402, type: !5, scopeLine: 402, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1115 = !DILocation(line: 402, column: 19, scope: !1116)
!1116 = !DILexicalBlockFile(scope: !1114, file: !881, discriminator: 0)
!1117 = !DILocation(line: 403, column: 21, scope: !1116)
!1118 = !DILocation(line: 403, column: 32, scope: !1116)
!1119 = !DILocation(line: 403, column: 68, scope: !1116)
!1120 = !DILocation(line: 403, column: 56, scope: !1116)
!1121 = distinct !DISubprogram(name: "token_2022::ui_amount_to_amount.anon.5", linkageName: "token_2022::ui_amount_to_amount.anon.5", scope: null, file: !881, line: 400, type: !5, scopeLine: 400, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1122 = !DILocation(line: 400, column: 39, scope: !1123)
!1123 = !DILexicalBlockFile(scope: !1121, file: !881, discriminator: 0)
!1124 = !DILocation(line: 401, column: 16, scope: !1123)
!1125 = distinct !DISubprogram(name: "token_2022::ui_amount_to_amount.anon.7", linkageName: "token_2022::ui_amount_to_amount.anon.7", scope: null, file: !881, line: 403, type: !5, scopeLine: 403, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1126 = !DILocation(line: 403, column: 68, scope: !1127)
!1127 = !DILexicalBlockFile(scope: !1125, file: !881, discriminator: 0)
!1128 = distinct !DISubprogram(name: "token_2022::ui_amount_to_amount.anon.6", linkageName: "token_2022::ui_amount_to_amount.anon.6", scope: null, file: !881, line: 402, type: !5, scopeLine: 402, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1129 = !DILocation(line: 402, column: 19, scope: !1130)
!1130 = !DILexicalBlockFile(scope: !1128, file: !881, discriminator: 0)
!1131 = !DILocation(line: 403, column: 21, scope: !1130)
!1132 = !DILocation(line: 403, column: 32, scope: !1130)
!1133 = !DILocation(line: 403, column: 68, scope: !1130)
!1134 = !DILocation(line: 403, column: 56, scope: !1130)
!1135 = distinct !DISubprogram(name: "token_2022::ui_amount_to_amount.anon.4", linkageName: "token_2022::ui_amount_to_amount.anon.4", scope: null, file: !881, line: 399, type: !5, scopeLine: 399, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1136 = !DILocation(line: 399, column: 32, scope: !1137)
!1137 = !DILexicalBlockFile(scope: !1135, file: !881, discriminator: 0)
!1138 = !DILocation(line: 400, column: 15, scope: !1137)
!1139 = !DILocation(line: 400, column: 12, scope: !1137)
!1140 = !DILocation(line: 400, column: 39, scope: !1137)
!1141 = !DILocation(line: 402, column: 19, scope: !1137)
!1142 = distinct !DISubprogram(name: "token_2022::ui_amount_to_amount.2", linkageName: "token_2022::ui_amount_to_amount.2", scope: null, file: !881, line: 387, type: !5, scopeLine: 387, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1143 = !DILocation(line: 387, column: 4, scope: !1144)
!1144 = !DILexicalBlockFile(scope: !1142, file: !881, discriminator: 0)
!1145 = !DILocation(line: 391, column: 13, scope: !1144)
!1146 = !DILocation(line: 391, column: 4, scope: !1144)
!1147 = !DILocation(line: 396, column: 4, scope: !1144)
!1148 = !DILocation(line: 397, column: 4, scope: !1144)
!1149 = !DILocation(line: 398, column: 9, scope: !1144)
!1150 = !DILocation(line: 400, column: 15, scope: !1144)
!1151 = !DILocation(line: 400, column: 12, scope: !1144)
!1152 = !DILocation(line: 400, column: 39, scope: !1144)
!1153 = !DILocation(line: 402, column: 19, scope: !1144)
!1154 = !DILocation(line: 399, column: 32, scope: !1144)
!1155 = !DILocation(line: 399, column: 9, scope: !1144)
!1156 = !DILocation(line: 408, column: 9, scope: !1144)
!1157 = distinct !DISubprogram(name: "sol.model.struct.anchor.Transfer$1", linkageName: "sol.model.struct.anchor.Transfer$1", scope: null, file: !881, line: 412, type: !5, scopeLine: 412, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1158 = !DILocation(line: 412, column: 4, scope: !1159)
!1159 = !DILexicalBlockFile(scope: !1157, file: !881, discriminator: 0)
!1160 = !DILocation(line: 413, column: 8, scope: !1159)
!1161 = !DILocation(line: 414, column: 8, scope: !1159)
!1162 = !DILocation(line: 415, column: 8, scope: !1159)
!1163 = distinct !DISubprogram(name: "sol.model.struct.anchor.TransferChecked$1", linkageName: "sol.model.struct.anchor.TransferChecked$1", scope: null, file: !881, line: 419, type: !5, scopeLine: 419, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1164 = !DILocation(line: 419, column: 4, scope: !1165)
!1165 = !DILexicalBlockFile(scope: !1163, file: !881, discriminator: 0)
!1166 = !DILocation(line: 420, column: 8, scope: !1165)
!1167 = !DILocation(line: 421, column: 8, scope: !1165)
!1168 = !DILocation(line: 422, column: 8, scope: !1165)
!1169 = !DILocation(line: 423, column: 8, scope: !1165)
!1170 = distinct !DISubprogram(name: "sol.model.struct.anchor.MintTo$1", linkageName: "sol.model.struct.anchor.MintTo$1", scope: null, file: !881, line: 427, type: !5, scopeLine: 427, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1171 = !DILocation(line: 427, column: 4, scope: !1172)
!1172 = !DILexicalBlockFile(scope: !1170, file: !881, discriminator: 0)
!1173 = !DILocation(line: 428, column: 8, scope: !1172)
!1174 = !DILocation(line: 429, column: 8, scope: !1172)
!1175 = !DILocation(line: 430, column: 8, scope: !1172)
!1176 = distinct !DISubprogram(name: "sol.model.struct.anchor.Burn$1", linkageName: "sol.model.struct.anchor.Burn$1", scope: null, file: !881, line: 434, type: !5, scopeLine: 434, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1177 = !DILocation(line: 434, column: 4, scope: !1178)
!1178 = !DILexicalBlockFile(scope: !1176, file: !881, discriminator: 0)
!1179 = !DILocation(line: 435, column: 8, scope: !1178)
!1180 = !DILocation(line: 436, column: 8, scope: !1178)
!1181 = !DILocation(line: 437, column: 8, scope: !1178)
!1182 = distinct !DISubprogram(name: "sol.model.struct.anchor.Approve$1", linkageName: "sol.model.struct.anchor.Approve$1", scope: null, file: !881, line: 441, type: !5, scopeLine: 441, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1183 = !DILocation(line: 441, column: 4, scope: !1184)
!1184 = !DILexicalBlockFile(scope: !1182, file: !881, discriminator: 0)
!1185 = !DILocation(line: 442, column: 8, scope: !1184)
!1186 = !DILocation(line: 443, column: 8, scope: !1184)
!1187 = !DILocation(line: 444, column: 8, scope: !1184)
!1188 = distinct !DISubprogram(name: "sol.model.struct.anchor.Revoke$1", linkageName: "sol.model.struct.anchor.Revoke$1", scope: null, file: !881, line: 448, type: !5, scopeLine: 448, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1189 = !DILocation(line: 448, column: 4, scope: !1190)
!1190 = !DILexicalBlockFile(scope: !1188, file: !881, discriminator: 0)
!1191 = !DILocation(line: 449, column: 8, scope: !1190)
!1192 = !DILocation(line: 450, column: 8, scope: !1190)
!1193 = distinct !DISubprogram(name: "sol.model.struct.anchor.InitializeAccount$1", linkageName: "sol.model.struct.anchor.InitializeAccount$1", scope: null, file: !881, line: 454, type: !5, scopeLine: 454, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1194 = !DILocation(line: 454, column: 4, scope: !1195)
!1195 = !DILexicalBlockFile(scope: !1193, file: !881, discriminator: 0)
!1196 = !DILocation(line: 455, column: 8, scope: !1195)
!1197 = !DILocation(line: 456, column: 8, scope: !1195)
!1198 = !DILocation(line: 457, column: 8, scope: !1195)
!1199 = !DILocation(line: 458, column: 8, scope: !1195)
!1200 = distinct !DISubprogram(name: "sol.model.struct.anchor.InitializeAccount3$1", linkageName: "sol.model.struct.anchor.InitializeAccount3$1", scope: null, file: !881, line: 462, type: !5, scopeLine: 462, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1201 = !DILocation(line: 462, column: 4, scope: !1202)
!1202 = !DILexicalBlockFile(scope: !1200, file: !881, discriminator: 0)
!1203 = !DILocation(line: 463, column: 8, scope: !1202)
!1204 = !DILocation(line: 464, column: 8, scope: !1202)
!1205 = !DILocation(line: 465, column: 8, scope: !1202)
!1206 = distinct !DISubprogram(name: "sol.model.struct.anchor.CloseAccount$1", linkageName: "sol.model.struct.anchor.CloseAccount$1", scope: null, file: !881, line: 469, type: !5, scopeLine: 469, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1207 = !DILocation(line: 469, column: 4, scope: !1208)
!1208 = !DILexicalBlockFile(scope: !1206, file: !881, discriminator: 0)
!1209 = !DILocation(line: 470, column: 8, scope: !1208)
!1210 = !DILocation(line: 471, column: 8, scope: !1208)
!1211 = !DILocation(line: 472, column: 8, scope: !1208)
!1212 = distinct !DISubprogram(name: "sol.model.struct.anchor.FreezeAccount$1", linkageName: "sol.model.struct.anchor.FreezeAccount$1", scope: null, file: !881, line: 476, type: !5, scopeLine: 476, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1213 = !DILocation(line: 476, column: 4, scope: !1214)
!1214 = !DILexicalBlockFile(scope: !1212, file: !881, discriminator: 0)
!1215 = !DILocation(line: 477, column: 8, scope: !1214)
!1216 = !DILocation(line: 478, column: 8, scope: !1214)
!1217 = !DILocation(line: 479, column: 8, scope: !1214)
!1218 = distinct !DISubprogram(name: "sol.model.struct.anchor.ThawAccount$1", linkageName: "sol.model.struct.anchor.ThawAccount$1", scope: null, file: !881, line: 483, type: !5, scopeLine: 483, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1219 = !DILocation(line: 483, column: 4, scope: !1220)
!1220 = !DILexicalBlockFile(scope: !1218, file: !881, discriminator: 0)
!1221 = !DILocation(line: 484, column: 8, scope: !1220)
!1222 = !DILocation(line: 485, column: 8, scope: !1220)
!1223 = !DILocation(line: 486, column: 8, scope: !1220)
!1224 = distinct !DISubprogram(name: "sol.model.struct.anchor.InitializeMint$1", linkageName: "sol.model.struct.anchor.InitializeMint$1", scope: null, file: !881, line: 490, type: !5, scopeLine: 490, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1225 = !DILocation(line: 490, column: 4, scope: !1226)
!1226 = !DILexicalBlockFile(scope: !1224, file: !881, discriminator: 0)
!1227 = !DILocation(line: 491, column: 8, scope: !1226)
!1228 = !DILocation(line: 492, column: 8, scope: !1226)
!1229 = distinct !DISubprogram(name: "sol.model.struct.anchor.InitializeMint2$1", linkageName: "sol.model.struct.anchor.InitializeMint2$1", scope: null, file: !881, line: 496, type: !5, scopeLine: 496, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1230 = !DILocation(line: 496, column: 4, scope: !1231)
!1231 = !DILexicalBlockFile(scope: !1229, file: !881, discriminator: 0)
!1232 = !DILocation(line: 497, column: 8, scope: !1231)
!1233 = distinct !DISubprogram(name: "sol.model.struct.anchor.SetAuthority$1", linkageName: "sol.model.struct.anchor.SetAuthority$1", scope: null, file: !881, line: 501, type: !5, scopeLine: 501, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1234 = !DILocation(line: 501, column: 4, scope: !1235)
!1235 = !DILexicalBlockFile(scope: !1233, file: !881, discriminator: 0)
!1236 = !DILocation(line: 502, column: 8, scope: !1235)
!1237 = !DILocation(line: 503, column: 8, scope: !1235)
!1238 = distinct !DISubprogram(name: "sol.model.struct.anchor.SyncNative$1", linkageName: "sol.model.struct.anchor.SyncNative$1", scope: null, file: !881, line: 507, type: !5, scopeLine: 507, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1239 = !DILocation(line: 507, column: 4, scope: !1240)
!1240 = !DILexicalBlockFile(scope: !1238, file: !881, discriminator: 0)
!1241 = !DILocation(line: 508, column: 8, scope: !1240)
!1242 = distinct !DISubprogram(name: "sol.model.struct.anchor.GetAccountDataSize", linkageName: "sol.model.struct.anchor.GetAccountDataSize", scope: null, file: !881, line: 512, type: !5, scopeLine: 512, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1243 = !DILocation(line: 512, column: 4, scope: !1244)
!1244 = !DILexicalBlockFile(scope: !1242, file: !881, discriminator: 0)
!1245 = !DILocation(line: 513, column: 8, scope: !1244)
!1246 = distinct !DISubprogram(name: "sol.model.struct.anchor.InitializeMintCloseAuthority", linkageName: "sol.model.struct.anchor.InitializeMintCloseAuthority", scope: null, file: !881, line: 517, type: !5, scopeLine: 517, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1247 = !DILocation(line: 517, column: 4, scope: !1248)
!1248 = !DILexicalBlockFile(scope: !1246, file: !881, discriminator: 0)
!1249 = !DILocation(line: 518, column: 8, scope: !1248)
!1250 = distinct !DISubprogram(name: "sol.model.struct.anchor.InitializeImmutableOwner", linkageName: "sol.model.struct.anchor.InitializeImmutableOwner", scope: null, file: !881, line: 522, type: !5, scopeLine: 522, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1251 = !DILocation(line: 522, column: 4, scope: !1252)
!1252 = !DILexicalBlockFile(scope: !1250, file: !881, discriminator: 0)
!1253 = !DILocation(line: 523, column: 8, scope: !1252)
!1254 = distinct !DISubprogram(name: "sol.model.struct.anchor.AmountToUiAmount", linkageName: "sol.model.struct.anchor.AmountToUiAmount", scope: null, file: !881, line: 527, type: !5, scopeLine: 527, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1255 = !DILocation(line: 527, column: 4, scope: !1256)
!1256 = !DILexicalBlockFile(scope: !1254, file: !881, discriminator: 0)
!1257 = !DILocation(line: 528, column: 8, scope: !1256)
!1258 = distinct !DISubprogram(name: "sol.model.struct.anchor.UiAmountToAmount", linkageName: "sol.model.struct.anchor.UiAmountToAmount", scope: null, file: !881, line: 532, type: !5, scopeLine: 532, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1259 = !DILocation(line: 532, column: 4, scope: !1260)
!1260 = !DILexicalBlockFile(scope: !1258, file: !881, discriminator: 0)
!1261 = !DILocation(line: 533, column: 8, scope: !1260)
!1262 = distinct !DISubprogram(name: "sol.model.struct.Token2022", linkageName: "sol.model.struct.Token2022", scope: null, file: !881, line: 537, type: !5, scopeLine: 537, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1263 = !DILocation(line: 537, column: 4, scope: !1264)
!1264 = !DILexicalBlockFile(scope: !1262, file: !881, discriminator: 0)
!1265 = distinct !DISubprogram(name: "token_2022::Token2022::id.0", linkageName: "token_2022::Token2022::id.0", scope: null, file: !881, line: 540, type: !5, scopeLine: 540, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1266 = !DILocation(line: 540, column: 4, scope: !1267)
!1267 = !DILexicalBlockFile(scope: !1265, file: !881, discriminator: 0)
!1268 = distinct !DISubprogram(name: "token_interface::TokenAccount::try_deserialize_unchecked.1", linkageName: "token_interface::TokenAccount::try_deserialize_unchecked.1", scope: null, file: !1269, line: 10, type: !5, scopeLine: 10, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1269 = !DIFile(filename: "/solana-cctp-contracts/vendor/anchor-spl/src/token_interface.rs", directory: "")
!1270 = !DILocation(line: 10, column: 4, scope: !1271)
!1271 = !DILexicalBlockFile(scope: !1268, file: !1269, discriminator: 0)
!1272 = !DILocation(line: 11, column: 8, scope: !1271)
!1273 = !DILocation(line: 14, column: 17, scope: !1271)
!1274 = !DILocation(line: 14, column: 9, scope: !1271)
!1275 = !DILocation(line: 15, column: 9, scope: !1271)
!1276 = distinct !DISubprogram(name: "token_interface::TokenAccount::owners.0", linkageName: "token_interface::TokenAccount::owners.0", scope: null, file: !1269, line: 22, type: !5, scopeLine: 22, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1277 = !DILocation(line: 22, column: 4, scope: !1278)
!1278 = !DILexicalBlockFile(scope: !1276, file: !1269, discriminator: 0)
!1279 = distinct !DISubprogram(name: "token_interface::TokenAccount::deref.1", linkageName: "token_interface::TokenAccount::deref.1", scope: null, file: !1269, line: 30, type: !5, scopeLine: 30, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1280 = !DILocation(line: 30, column: 4, scope: !1281)
!1281 = !DILexicalBlockFile(scope: !1279, file: !1269, discriminator: 0)
!1282 = distinct !DISubprogram(name: "token_interface::Mint::try_deserialize_unchecked.1", linkageName: "token_interface::Mint::try_deserialize_unchecked.1", scope: null, file: !1269, line: 39, type: !5, scopeLine: 39, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1283 = !DILocation(line: 39, column: 4, scope: !1284)
!1284 = !DILexicalBlockFile(scope: !1282, file: !1269, discriminator: 0)
!1285 = !DILocation(line: 40, column: 8, scope: !1284)
!1286 = !DILocation(line: 41, column: 21, scope: !1284)
!1287 = !DILocation(line: 41, column: 13, scope: !1284)
!1288 = !DILocation(line: 42, column: 13, scope: !1284)
!1289 = distinct !DISubprogram(name: "token_interface::Mint::owners.0", linkageName: "token_interface::Mint::owners.0", scope: null, file: !1269, line: 49, type: !5, scopeLine: 49, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1290 = !DILocation(line: 49, column: 4, scope: !1291)
!1291 = !DILexicalBlockFile(scope: !1289, file: !1269, discriminator: 0)
!1292 = distinct !DISubprogram(name: "token_interface::Mint::deref.1", linkageName: "token_interface::Mint::deref.1", scope: null, file: !1269, line: 57, type: !5, scopeLine: 57, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1293 = !DILocation(line: 57, column: 4, scope: !1294)
!1294 = !DILexicalBlockFile(scope: !1292, file: !1269, discriminator: 0)
!1295 = distinct !DISubprogram(name: "sol.model.struct.TokenInterface", linkageName: "sol.model.struct.TokenInterface", scope: null, file: !1269, line: 63, type: !5, scopeLine: 63, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1296 = !DILocation(line: 63, column: 4, scope: !1297)
!1297 = !DILexicalBlockFile(scope: !1295, file: !1269, discriminator: 0)
!1298 = distinct !DISubprogram(name: "token_interface::TokenInterface::ids.0", linkageName: "token_interface::TokenInterface::ids.0", scope: null, file: !1269, line: 66, type: !5, scopeLine: 66, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1299 = !DILocation(line: 66, column: 4, scope: !1300)
!1300 = !DILexicalBlockFile(scope: !1298, file: !1269, discriminator: 0)
!1301 = distinct !DISubprogram(name: "dex::new_order_v3.9", linkageName: "dex::new_order_v3.9", scope: null, file: !1302, line: 18, type: !5, scopeLine: 18, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1302 = !DIFile(filename: "/solana-cctp-contracts/vendor/anchor-spl/src/dex.rs", directory: "")
!1303 = !DILocation(line: 18, column: 4, scope: !1304)
!1304 = !DILexicalBlockFile(scope: !1301, file: !1302, discriminator: 0)
!1305 = !DILocation(line: 29, column: 42, scope: !1304)
!1306 = !DILocation(line: 29, column: 4, scope: !1304)
!1307 = !DILocation(line: 43, column: 17, scope: !1304)
!1308 = !DILocation(line: 30, column: 13, scope: !1304)
!1309 = !DILocation(line: 54, column: 18, scope: !1304)
!1310 = !DILocation(line: 54, column: 5, scope: !1304)
!1311 = !DILocation(line: 30, column: 4, scope: !1304)
!1312 = !DILocation(line: 57, column: 9, scope: !1304)
!1313 = !DILocation(line: 55, column: 4, scope: !1304)
!1314 = !DILocation(line: 60, column: 4, scope: !1304)
!1315 = distinct !DISubprogram(name: "dex::cancel_order_v2.3", linkageName: "dex::cancel_order_v2.3", scope: null, file: !1302, line: 63, type: !5, scopeLine: 63, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1316 = !DILocation(line: 63, column: 4, scope: !1317)
!1317 = !DILexicalBlockFile(scope: !1315, file: !1302, discriminator: 0)
!1318 = !DILocation(line: 68, column: 13, scope: !1317)
!1319 = !DILocation(line: 79, column: 18, scope: !1317)
!1320 = !DILocation(line: 79, column: 5, scope: !1317)
!1321 = !DILocation(line: 68, column: 4, scope: !1317)
!1322 = !DILocation(line: 82, column: 9, scope: !1317)
!1323 = !DILocation(line: 80, column: 4, scope: !1317)
!1324 = !DILocation(line: 85, column: 4, scope: !1317)
!1325 = distinct !DISubprogram(name: "dex::settle_funds.1", linkageName: "dex::settle_funds.1", scope: null, file: !1302, line: 88, type: !5, scopeLine: 88, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1326 = !DILocation(line: 88, column: 4, scope: !1327)
!1327 = !DILexicalBlockFile(scope: !1325, file: !1302, discriminator: 0)
!1328 = !DILocation(line: 89, column: 42, scope: !1327)
!1329 = !DILocation(line: 89, column: 4, scope: !1327)
!1330 = !DILocation(line: 100, column: 17, scope: !1327)
!1331 = !DILocation(line: 90, column: 13, scope: !1327)
!1332 = !DILocation(line: 103, column: 18, scope: !1327)
!1333 = !DILocation(line: 103, column: 5, scope: !1327)
!1334 = !DILocation(line: 90, column: 4, scope: !1327)
!1335 = !DILocation(line: 106, column: 9, scope: !1327)
!1336 = !DILocation(line: 104, column: 4, scope: !1327)
!1337 = !DILocation(line: 109, column: 4, scope: !1327)
!1338 = distinct !DISubprogram(name: "dex::init_open_orders.1", linkageName: "dex::init_open_orders.1", scope: null, file: !1302, line: 112, type: !5, scopeLine: 112, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1339 = !DILocation(line: 112, column: 4, scope: !1340)
!1340 = !DILexicalBlockFile(scope: !1338, file: !1302, discriminator: 0)
!1341 = !DILocation(line: 120, column: 31, scope: !1340)
!1342 = !DILocation(line: 120, column: 39, scope: !1340)
!1343 = !DILocation(line: 115, column: 13, scope: !1340)
!1344 = !DILocation(line: 122, column: 18, scope: !1340)
!1345 = !DILocation(line: 122, column: 5, scope: !1340)
!1346 = !DILocation(line: 115, column: 4, scope: !1340)
!1347 = !DILocation(line: 125, column: 9, scope: !1340)
!1348 = !DILocation(line: 123, column: 4, scope: !1340)
!1349 = !DILocation(line: 128, column: 4, scope: !1340)
!1350 = distinct !DISubprogram(name: "dex::close_open_orders.1", linkageName: "dex::close_open_orders.1", scope: null, file: !1302, line: 131, type: !5, scopeLine: 131, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1351 = !DILocation(line: 131, column: 4, scope: !1352)
!1352 = !DILexicalBlockFile(scope: !1350, file: !1302, discriminator: 0)
!1353 = !DILocation(line: 134, column: 13, scope: !1352)
!1354 = !DILocation(line: 141, column: 18, scope: !1352)
!1355 = !DILocation(line: 141, column: 5, scope: !1352)
!1356 = !DILocation(line: 134, column: 4, scope: !1352)
!1357 = !DILocation(line: 144, column: 9, scope: !1352)
!1358 = !DILocation(line: 142, column: 4, scope: !1352)
!1359 = !DILocation(line: 147, column: 4, scope: !1352)
!1360 = distinct !DISubprogram(name: "dex::sweep_fees.1", linkageName: "dex::sweep_fees.1", scope: null, file: !1302, line: 150, type: !5, scopeLine: 150, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1361 = !DILocation(line: 150, column: 4, scope: !1362)
!1362 = !DILexicalBlockFile(scope: !1360, file: !1302, discriminator: 0)
!1363 = !DILocation(line: 151, column: 13, scope: !1362)
!1364 = !DILocation(line: 160, column: 18, scope: !1362)
!1365 = !DILocation(line: 160, column: 5, scope: !1362)
!1366 = !DILocation(line: 151, column: 4, scope: !1362)
!1367 = !DILocation(line: 163, column: 9, scope: !1362)
!1368 = !DILocation(line: 161, column: 4, scope: !1362)
!1369 = !DILocation(line: 166, column: 4, scope: !1362)
!1370 = distinct !DISubprogram(name: "dex::initialize_market.5", linkageName: "dex::initialize_market.5", scope: null, file: !1302, line: 169, type: !5, scopeLine: 169, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1371 = !DILocation(line: 169, column: 4, scope: !1372)
!1372 = !DILexicalBlockFile(scope: !1370, file: !1302, discriminator: 0)
!1373 = !DILocation(line: 176, column: 43, scope: !1372)
!1374 = !DILocation(line: 176, column: 4, scope: !1372)
!1375 = !DILocation(line: 177, column: 49, scope: !1372)
!1376 = !DILocation(line: 177, column: 4, scope: !1372)
!1377 = !DILocation(line: 185, column: 18, scope: !1372)
!1378 = !DILocation(line: 186, column: 24, scope: !1372)
!1379 = !DILocation(line: 178, column: 13, scope: !1372)
!1380 = !DILocation(line: 196, column: 18, scope: !1372)
!1381 = !DILocation(line: 196, column: 5, scope: !1372)
!1382 = !DILocation(line: 178, column: 4, scope: !1372)
!1383 = !DILocation(line: 199, column: 9, scope: !1372)
!1384 = !DILocation(line: 197, column: 4, scope: !1372)
!1385 = !DILocation(line: 202, column: 4, scope: !1372)
!1386 = distinct !DISubprogram(name: "sol.model.struct.anchor.NewOrderV3", linkageName: "sol.model.struct.anchor.NewOrderV3", scope: null, file: !1302, line: 206, type: !5, scopeLine: 206, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1387 = !DILocation(line: 206, column: 4, scope: !1388)
!1388 = !DILexicalBlockFile(scope: !1386, file: !1302, discriminator: 0)
!1389 = !DILocation(line: 207, column: 8, scope: !1388)
!1390 = !DILocation(line: 208, column: 8, scope: !1388)
!1391 = !DILocation(line: 209, column: 8, scope: !1388)
!1392 = !DILocation(line: 210, column: 8, scope: !1388)
!1393 = !DILocation(line: 211, column: 8, scope: !1388)
!1394 = !DILocation(line: 212, column: 8, scope: !1388)
!1395 = !DILocation(line: 215, column: 8, scope: !1388)
!1396 = !DILocation(line: 216, column: 8, scope: !1388)
!1397 = !DILocation(line: 219, column: 8, scope: !1388)
!1398 = !DILocation(line: 222, column: 8, scope: !1388)
!1399 = !DILocation(line: 223, column: 8, scope: !1388)
!1400 = !DILocation(line: 224, column: 8, scope: !1388)
!1401 = distinct !DISubprogram(name: "sol.model.struct.anchor.CancelOrderV2", linkageName: "sol.model.struct.anchor.CancelOrderV2", scope: null, file: !1302, line: 228, type: !5, scopeLine: 228, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1402 = !DILocation(line: 228, column: 4, scope: !1403)
!1403 = !DILexicalBlockFile(scope: !1401, file: !1302, discriminator: 0)
!1404 = !DILocation(line: 229, column: 8, scope: !1403)
!1405 = !DILocation(line: 230, column: 8, scope: !1403)
!1406 = !DILocation(line: 231, column: 8, scope: !1403)
!1407 = !DILocation(line: 232, column: 8, scope: !1403)
!1408 = !DILocation(line: 233, column: 8, scope: !1403)
!1409 = !DILocation(line: 234, column: 8, scope: !1403)
!1410 = distinct !DISubprogram(name: "sol.model.struct.anchor.SettleFunds", linkageName: "sol.model.struct.anchor.SettleFunds", scope: null, file: !1302, line: 238, type: !5, scopeLine: 238, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1411 = !DILocation(line: 238, column: 4, scope: !1412)
!1412 = !DILexicalBlockFile(scope: !1410, file: !1302, discriminator: 0)
!1413 = !DILocation(line: 239, column: 8, scope: !1412)
!1414 = !DILocation(line: 240, column: 8, scope: !1412)
!1415 = !DILocation(line: 241, column: 8, scope: !1412)
!1416 = !DILocation(line: 242, column: 8, scope: !1412)
!1417 = !DILocation(line: 243, column: 8, scope: !1412)
!1418 = !DILocation(line: 244, column: 8, scope: !1412)
!1419 = !DILocation(line: 245, column: 8, scope: !1412)
!1420 = !DILocation(line: 246, column: 8, scope: !1412)
!1421 = !DILocation(line: 247, column: 8, scope: !1412)
!1422 = distinct !DISubprogram(name: "sol.model.struct.anchor.InitOpenOrders", linkageName: "sol.model.struct.anchor.InitOpenOrders", scope: null, file: !1302, line: 253, type: !5, scopeLine: 253, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1423 = !DILocation(line: 253, column: 4, scope: !1424)
!1424 = !DILexicalBlockFile(scope: !1422, file: !1302, discriminator: 0)
!1425 = !DILocation(line: 254, column: 8, scope: !1424)
!1426 = !DILocation(line: 255, column: 8, scope: !1424)
!1427 = !DILocation(line: 256, column: 8, scope: !1424)
!1428 = !DILocation(line: 257, column: 8, scope: !1424)
!1429 = distinct !DISubprogram(name: "sol.model.struct.anchor.CloseOpenOrders", linkageName: "sol.model.struct.anchor.CloseOpenOrders", scope: null, file: !1302, line: 261, type: !5, scopeLine: 261, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1430 = !DILocation(line: 261, column: 4, scope: !1431)
!1431 = !DILexicalBlockFile(scope: !1429, file: !1302, discriminator: 0)
!1432 = !DILocation(line: 262, column: 8, scope: !1431)
!1433 = !DILocation(line: 263, column: 8, scope: !1431)
!1434 = !DILocation(line: 264, column: 8, scope: !1431)
!1435 = !DILocation(line: 265, column: 8, scope: !1431)
!1436 = distinct !DISubprogram(name: "sol.model.struct.anchor.SweepFees", linkageName: "sol.model.struct.anchor.SweepFees", scope: null, file: !1302, line: 269, type: !5, scopeLine: 269, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1437 = !DILocation(line: 269, column: 4, scope: !1438)
!1438 = !DILexicalBlockFile(scope: !1436, file: !1302, discriminator: 0)
!1439 = !DILocation(line: 270, column: 8, scope: !1438)
!1440 = !DILocation(line: 271, column: 8, scope: !1438)
!1441 = !DILocation(line: 272, column: 8, scope: !1438)
!1442 = !DILocation(line: 273, column: 8, scope: !1438)
!1443 = !DILocation(line: 274, column: 8, scope: !1438)
!1444 = !DILocation(line: 275, column: 8, scope: !1438)
!1445 = distinct !DISubprogram(name: "sol.model.struct.anchor.InitializeMarket", linkageName: "sol.model.struct.anchor.InitializeMarket", scope: null, file: !1302, line: 279, type: !5, scopeLine: 279, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1446 = !DILocation(line: 279, column: 4, scope: !1447)
!1447 = !DILexicalBlockFile(scope: !1445, file: !1302, discriminator: 0)
!1448 = !DILocation(line: 280, column: 8, scope: !1447)
!1449 = !DILocation(line: 281, column: 8, scope: !1447)
!1450 = !DILocation(line: 282, column: 8, scope: !1447)
!1451 = !DILocation(line: 283, column: 8, scope: !1447)
!1452 = !DILocation(line: 284, column: 8, scope: !1447)
!1453 = !DILocation(line: 285, column: 8, scope: !1447)
!1454 = !DILocation(line: 286, column: 8, scope: !1447)
!1455 = !DILocation(line: 287, column: 8, scope: !1447)
!1456 = !DILocation(line: 288, column: 8, scope: !1447)
!1457 = !DILocation(line: 289, column: 8, scope: !1447)
!1458 = distinct !DISubprogram(name: "sol.model.struct.Dex", linkageName: "sol.model.struct.Dex", scope: null, file: !1302, line: 293, type: !5, scopeLine: 293, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1459 = !DILocation(line: 293, column: 4, scope: !1460)
!1460 = !DILexicalBlockFile(scope: !1458, file: !1302, discriminator: 0)
!1461 = distinct !DISubprogram(name: "dex::Dex::id.0", linkageName: "dex::Dex::id.0", scope: null, file: !1302, line: 296, type: !5, scopeLine: 296, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1462 = !DILocation(line: 296, column: 4, scope: !1463)
!1463 = !DILexicalBlockFile(scope: !1461, file: !1302, discriminator: 0)
