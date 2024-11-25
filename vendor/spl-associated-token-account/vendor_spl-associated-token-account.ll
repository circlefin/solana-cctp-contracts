; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

@"[AccountMeta::new(nested_associated_account_address,false),AccountMeta::new_readonly(*nested_token_mint_address,false),AccountMeta::new(destination_associated_account_address,false),AccountMeta::new_readonly(owner_associated_account_address,false),AccountMeta::new_readonly(*owner_token_mint_address,false),AccountMeta::new(*wallet_address,true),AccountMeta::new_readonly(*token_program_id,false),]" = internal constant [398 x i8] c"[AccountMeta::new(nested_associated_account_address,false),AccountMeta::new_readonly(*nested_token_mint_address,false),AccountMeta::new(destination_associated_account_address,false),AccountMeta::new_readonly(owner_associated_account_address,false),AccountMeta::new_readonly(*owner_token_mint_address,false),AccountMeta::new(*wallet_address,true),AccountMeta::new_readonly(*token_program_id,false),]"
@"AssociatedTokenAccountInstruction::RecoverNested" = internal constant [48 x i8] c"AssociatedTokenAccountInstruction::RecoverNested"
@nested_associated_account_address = internal constant [33 x i8] c"nested_associated_account_address"
@destination_associated_account_address = internal constant [38 x i8] c"destination_associated_account_address"
@owner_associated_account_address = internal constant [32 x i8] c"owner_associated_account_address"
@nested_token_mint_address = internal constant [25 x i8] c"nested_token_mint_address"
@owner_token_mint_address = internal constant [24 x i8] c"owner_token_mint_address"
@"AssociatedTokenAccountInstruction::CreateIdempotent" = internal constant [51 x i8] c"AssociatedTokenAccountInstruction::CreateIdempotent"
@"[AccountMeta::new(*funding_address,true),AccountMeta::new(associated_account_address,false),AccountMeta::new_readonly(*wallet_address,false),AccountMeta::new_readonly(*token_mint_address,false),AccountMeta::new_readonly(solana_program::system_program::id(),false),AccountMeta::new_readonly(*token_program_id,false),]" = internal constant [316 x i8] c"[AccountMeta::new(*funding_address,true),AccountMeta::new(associated_account_address,false),AccountMeta::new_readonly(*wallet_address,false),AccountMeta::new_readonly(*token_mint_address,false),AccountMeta::new_readonly(solana_program::system_program::id(),false),AccountMeta::new_readonly(*token_program_id,false),]"
@"AssociatedTokenAccountInstruction::Create|AssociatedTokenAccountInstruction::CreateIdempotent" = internal constant [93 x i8] c"AssociatedTokenAccountInstruction::Create|AssociatedTokenAccountInstruction::CreateIdempotent"
@AssociatedTokenAccountInstruction = internal constant [33 x i8] c"AssociatedTokenAccountInstruction"
@"[AccountMeta::new(*funding_address,true),AccountMeta::new(associated_account_address,false),AccountMeta::new_readonly(*wallet_address,false),AccountMeta::new_readonly(*token_mint_address,false),AccountMeta::new_readonly(solana_program::system_program::id(),false),AccountMeta::new_readonly(spl_token::id(),false),AccountMeta::new_readonly(sysvar::rent::id(),false),]" = internal constant [366 x i8] c"[AccountMeta::new(*funding_address,true),AccountMeta::new(associated_account_address,false),AccountMeta::new_readonly(*wallet_address,false),AccountMeta::new_readonly(*token_mint_address,false),AccountMeta::new_readonly(solana_program::system_program::id(),false),AccountMeta::new_readonly(spl_token::id(),false),AccountMeta::new_readonly(sysvar::rent::id(),false),]"
@associated_account_address = internal constant [26 x i8] c"associated_account_address"
@funding_address = internal constant [15 x i8] c"funding_address"
@"[&wallet_address.to_bytes(),&token_program_id.to_bytes(),&token_mint_address.to_bytes(),]" = internal constant [89 x i8] c"[&wallet_address.to_bytes(),&token_program_id.to_bytes(),&token_mint_address.to_bytes(),]"
@token_program_id = internal constant [16 x i8] c"token_program_id"
@token_mint_address = internal constant [18 x i8] c"token_mint_address"
@wallet_address = internal constant [14 x i8] c"wallet_address"
@"\22AssociatedTokenAccountError\22" = internal constant [29 x i8] c"\22AssociatedTokenAccountError\22"
@u32 = internal constant [3 x i8] c"u32"
@AssociatedTokenAccountError = internal constant [27 x i8] c"AssociatedTokenAccountError"
@e = internal constant [1 x i8] c"e"
@"[mint.clone(),spl_token_program.clone()]" = internal constant [40 x i8] c"[mint.clone(),spl_token_program.clone()]"
@mint.key = internal constant [8 x i8] c"mint.key"
@"&[ExtensionType]" = internal constant [16 x i8] c"&[ExtensionType]"
@extension_types = internal constant [15 x i8] c"extension_types"
@spl_token_program = internal constant [17 x i8] c"spl_token_program"
@mint = internal constant [4 x i8] c"mint"
@"usize::from_le_bytes" = internal constant [20 x i8] c"usize::from_le_bytes"
@data = internal constant [4 x i8] c"data"
@spl_token_program.key = internal constant [21 x i8] c"spl_token_program.key"
@key = internal constant [3 x i8] c"key"
@"ProgramError::IncorrectProgramId" = internal constant [32 x i8] c"ProgramError::IncorrectProgramId"
@"&[&[u8]]" = internal constant [8 x i8] c"&[&[u8]]"
@new_pda_signer_seeds = internal constant [20 x i8] c"new_pda_signer_seeds"
@system_program = internal constant [14 x i8] c"system_program"
@usize = internal constant [5 x i8] c"usize"
@"&Rent" = internal constant [5 x i8] c"&Rent"
@"&AccountInfo<'a>" = internal constant [16 x i8] c"&AccountInfo<'a>"
@payer = internal constant [5 x i8] c"payer"
@owner = internal constant [5 x i8] c"owner"
@"[new_pda_signer_seeds]" = internal constant [22 x i8] c"[new_pda_signer_seeds]"
@"[new_pda_account.clone(),system_program.clone()]" = internal constant [48 x i8] c"[new_pda_account.clone(),system_program.clone()]"
@u64 = internal constant [3 x i8] c"u64"
@"0" = internal constant [1 x i8] c"0"
@new_pda_account = internal constant [15 x i8] c"new_pda_account"
@"1" = internal constant [1 x i8] c"1"
@space = internal constant [5 x i8] c"space"
@"[payer.clone(),new_pda_account.clone(),system_program.clone(),]" = internal constant [63 x i8] c"[payer.clone(),new_pda_account.clone(),system_program.clone(),]"
@required_lamports = internal constant [17 x i8] c"required_lamports"
@new_pda_account.key = internal constant [19 x i8] c"new_pda_account.key"
@payer.key = internal constant [9 x i8] c"payer.key"
@instruction_data = internal constant [16 x i8] c"instruction_data"
@"[nested_associated_token_account_info.clone(),wallet_account_info.clone(),owner_associated_token_account_info.clone(),spl_token_program_info.clone(),]" = internal constant [150 x i8] c"[nested_associated_token_account_info.clone(),wallet_account_info.clone(),owner_associated_token_account_info.clone(),spl_token_program_info.clone(),]"
@"[owner_associated_token_account_signer_seeds]" = internal constant [45 x i8] c"[owner_associated_token_account_signer_seeds]"
@"[nested_associated_token_account_info.clone(),nested_token_mint_info.clone(),destination_associated_token_account_info.clone(),owner_associated_token_account_info.clone(),spl_token_program_info.clone(),]" = internal constant [203 x i8] c"[nested_associated_token_account_info.clone(),nested_token_mint_info.clone(),destination_associated_token_account_info.clone(),owner_associated_token_account_info.clone(),spl_token_program_info.clone(),]"
@"[]" = internal constant [2 x i8] c"[]"
@owner_associated_token_account_signer_seeds = internal constant [43 x i8] c"owner_associated_token_account_signer_seeds"
@"[&wallet_account_info.key.to_bytes(),&spl_token_program_id.to_bytes(),&owner_token_mint_info.key.to_bytes(),&[bump_seed],]" = internal constant [122 x i8] c"[&wallet_account_info.key.to_bytes(),&spl_token_program_id.to_bytes(),&owner_token_mint_info.key.to_bytes(),&[bump_seed],]"
@"(amount,decimals)" = internal constant [17 x i8] c"(amount,decimals)"
@owner_token_mint_info.owner = internal constant [27 x i8] c"owner_token_mint_info.owner"
@wallet_account_info.is_signer = internal constant [29 x i8] c"wallet_account_info.is_signer"
@destination_associated_token_account_info.key = internal constant [45 x i8] c"destination_associated_token_account_info.key"
@destination_associated_token_address = internal constant [36 x i8] c"destination_associated_token_address"
@"(destination_associated_token_address,_)" = internal constant [40 x i8] c"(destination_associated_token_address,_)"
@nested_associated_token_account_info.key = internal constant [40 x i8] c"nested_associated_token_account_info.key"
@nested_associated_token_address = internal constant [31 x i8] c"nested_associated_token_address"
@"(nested_associated_token_address,_)" = internal constant [35 x i8] c"(nested_associated_token_address,_)"
@nested_token_mint_info.key = internal constant [26 x i8] c"nested_token_mint_info.key"
@owner_associated_token_address = internal constant [30 x i8] c"owner_associated_token_address"
@"(owner_associated_token_address,bump_seed)" = internal constant [42 x i8] c"(owner_associated_token_address,bump_seed)"
@owner_token_mint_info.key = internal constant [25 x i8] c"owner_token_mint_info.key"
@owner_token_mint_info = internal constant [21 x i8] c"owner_token_mint_info"
@owner_associated_token_account_info = internal constant [35 x i8] c"owner_associated_token_account_info"
@destination_associated_token_account_info = internal constant [41 x i8] c"destination_associated_token_account_info"
@nested_token_mint_info = internal constant [22 x i8] c"nested_token_mint_info"
@nested_associated_token_account_info = internal constant [36 x i8] c"nested_associated_token_account_info"
@"amount,decimals" = internal constant [15 x i8] c"amount,decimals"
@decimals = internal constant [8 x i8] c"decimals"
@nested_mint.base.decimals = internal constant [25 x i8] c"nested_mint.base.decimals"
@nested_mint = internal constant [11 x i8] c"nested_mint"
@nested_mint_data = internal constant [16 x i8] c"nested_mint_data"
@nested_token_mint_info.data = internal constant [27 x i8] c"nested_token_mint_info.data"
@nested_token_mint_info.owner = internal constant [28 x i8] c"nested_token_mint_info.owner"
@amount = internal constant [6 x i8] c"amount"
@nested_account.base.amount = internal constant [26 x i8] c"nested_account.base.amount"
@owner_associated_token_account_info.key = internal constant [39 x i8] c"owner_associated_token_account_info.key"
@nested_account.base.owner = internal constant [25 x i8] c"nested_account.base.owner"
@nested_account = internal constant [14 x i8] c"nested_account"
@nested_account_data = internal constant [19 x i8] c"nested_account_data"
@nested_associated_token_account_info.data = internal constant [41 x i8] c"nested_associated_token_account_info.data"
@nested_associated_token_account_info.owner = internal constant [42 x i8] c"nested_associated_token_account_info.owner"
@owner_account.base.owner = internal constant [24 x i8] c"owner_account.base.owner"
@owner_account = internal constant [13 x i8] c"owner_account"
@owner_account_data = internal constant [18 x i8] c"owner_account_data"
@owner_associated_token_account_info.data = internal constant [40 x i8] c"owner_associated_token_account_info.data"
@owner_associated_token_account_info.owner = internal constant [41 x i8] c"owner_associated_token_account_info.owner"
@"Nested mint account not owned by provided token program" = internal constant [55 x i8] c"Nested mint account not owned by provided token program"
@"Nested associated token account not owned by provided associated token account" = internal constant [78 x i8] c"Nested associated token account not owned by provided associated token account"
@"Nested associated token account not owned by provided token program" = internal constant [67 x i8] c"Nested associated token account not owned by provided token program"
@"Owner associated token account not owned by provided wallet" = internal constant [59 x i8] c"Owner associated token account not owned by provided wallet"
@"Owner associated token account not owned by provided token program, recreate the owner associated token account first" = internal constant [117 x i8] c"Owner associated token account not owned by provided token program, recreate the owner associated token account first"
@"Owner mint not owned by provided token program" = internal constant [46 x i8] c"Owner mint not owned by provided token program"
@"ProgramError::MissingRequiredSignature" = internal constant [38 x i8] c"ProgramError::MissingRequiredSignature"
@"Wallet of the owner associated token account must sign" = internal constant [54 x i8] c"Wallet of the owner associated token account must sign"
@"Error: Destination associated address does not match seed derivation" = internal constant [68 x i8] c"Error: Destination associated address does not match seed derivation"
@"Error: Nested associated address does not match seed derivation" = internal constant [63 x i8] c"Error: Nested associated address does not match seed derivation"
@"Error: Owner associated address does not match seed derivation" = internal constant [62 x i8] c"Error: Owner associated address does not match seed derivation"
@"[associated_token_account_info.clone(),spl_token_mint_info.clone(),wallet_account_info.clone(),spl_token_program_info.clone(),]" = internal constant [127 x i8] c"[associated_token_account_info.clone(),spl_token_mint_info.clone(),wallet_account_info.clone(),spl_token_program_info.clone(),]"
@"[associated_token_account_info.clone(),spl_token_program_info.clone(),]" = internal constant [71 x i8] c"[associated_token_account_info.clone(),spl_token_program_info.clone(),]"
@"Initialize the associated token account" = internal constant [39 x i8] c"Initialize the associated token account"
@account_len = internal constant [11 x i8] c"account_len"
@"[ExtensionType::ImmutableOwner]" = internal constant [31 x i8] c"[ExtensionType::ImmutableOwner]"
@associated_token_account_signer_seeds = internal constant [37 x i8] c"associated_token_account_signer_seeds"
@"[&wallet_account_info.key.to_bytes(),&spl_token_program_id.to_bytes(),&spl_token_mint_info.key.to_bytes(),&[bump_seed],]" = internal constant [120 x i8] c"[&wallet_account_info.key.to_bytes(),&spl_token_program_id.to_bytes(),&spl_token_mint_info.key.to_bytes(),&[bump_seed],]"
@rent = internal constant [4 x i8] c"rent"
@associated_token_account_info.owner = internal constant [35 x i8] c"associated_token_account_info.owner"
@associated_token_account_info.key = internal constant [33 x i8] c"associated_token_account_info.key"
@associated_token_address = internal constant [24 x i8] c"associated_token_address"
@"(associated_token_address,bump_seed)" = internal constant [36 x i8] c"(associated_token_address,bump_seed)"
@spl_token_program_id = internal constant [20 x i8] c"spl_token_program_id"
@spl_token_program_info.key = internal constant [26 x i8] c"spl_token_program_info.key"
@spl_token_program_info = internal constant [22 x i8] c"spl_token_program_info"
@system_program_info = internal constant [19 x i8] c"system_program_info"
@spl_token_mint_info = internal constant [19 x i8] c"spl_token_mint_info"
@wallet_account_info = internal constant [19 x i8] c"wallet_account_info"
@associated_token_account_info = internal constant [29 x i8] c"associated_token_account_info"
@funder_info = internal constant [11 x i8] c"funder_info"
@account_info_iter = internal constant [17 x i8] c"account_info_iter"
@CreateMode = internal constant [10 x i8] c"CreateMode"
@create_mode = internal constant [11 x i8] c"create_mode"
@"ProgramError::IllegalOwner" = internal constant [26 x i8] c"ProgramError::IllegalOwner"
@"StateWithExtensions::<Account>::unpack(&ata_data)" = internal constant [49 x i8] c"StateWithExtensions::<Account>::unpack(&ata_data)"
@ata_data = internal constant [8 x i8] c"ata_data"
@associated_token_account_info.data = internal constant [34 x i8] c"associated_token_account_info.data"
@"()" = internal constant [2 x i8] c"()"
@spl_token_mint_info.key = internal constant [23 x i8] c"spl_token_mint_info.key"
@associated_token_account.base.mint = internal constant [34 x i8] c"associated_token_account.base.mint"
@wallet_account_info.key = internal constant [23 x i8] c"wallet_account_info.key"
@associated_token_account.base.owner = internal constant [35 x i8] c"associated_token_account.base.owner"
@"ProgramError::InvalidAccountData" = internal constant [32 x i8] c"ProgramError::InvalidAccountData"
@"\22{}\22" = internal constant [4 x i8] c"\22{}\22"
@error = internal constant [5 x i8] c"error"
@"AssociatedTokenAccountError::InvalidOwner" = internal constant [41 x i8] c"AssociatedTokenAccountError::InvalidOwner"
@"ProgramError::InvalidSeeds" = internal constant [26 x i8] c"ProgramError::InvalidSeeds"
@"Error: Associated address does not match seed derivation" = internal constant [56 x i8] c"Error: Associated address does not match seed derivation"
@"CreateMode::Idempotent" = internal constant [22 x i8] c"CreateMode::Idempotent"
@"CreateMode::Always" = internal constant [18 x i8] c"CreateMode::Always"
@"\22{:?}\22" = internal constant [6 x i8] c"\22{:?}\22"
@instruction = internal constant [11 x i8] c"instruction"
@"&[u8]" = internal constant [5 x i8] c"&[u8]"
@"&[AccountInfo]" = internal constant [14 x i8] c"&[AccountInfo]"
@"&Pubkey" = internal constant [7 x i8] c"&Pubkey"
@accounts = internal constant [8 x i8] c"accounts"
@program_id = internal constant [10 x i8] c"program_id"
@"ProgramError::InvalidInstructionData" = internal constant [36 x i8] c"ProgramError::InvalidInstructionData"
@input = internal constant [5 x i8] c"input"
@"AssociatedTokenAccountInstruction::Create" = internal constant [41 x i8] c"AssociatedTokenAccountInstruction::Create"
@"*i8" = internal constant [3 x i8] c"*i8"
@parser.error = internal constant [12 x i8] c"parser.error"
@ATokenGPvbdGVxr1b2hvZbsiqW5xWH25efTNsLJA8knL = internal constant [44 x i8] c"ATokenGPvbdGVxr1b2hvZbsiqW5xWH25efTNsLJA8knL"
@"3.5" = internal constant [3 x i8] c"3.5"
@dependencies.spl-token.version = internal constant [30 x i8] c"dependencies.spl-token.version"
@"1.14.12" = internal constant [7 x i8] c"1.14.12"
@dependencies.solana_program.version = internal constant [35 x i8] c"dependencies.solana_program.version"

declare i8* @malloc(i64)

declare void @free(i8*)

declare i8* @sol.build_associated_token_account_instruction.5(i8*, i8*, i8*, i8*, i8*)

declare i8* @sol.unwrap.1(i8*)

declare i8* @sol.try_to_vec.1(i8*)

declare i8* @"sol.assert_matches.!2"(i8*, i8*)

declare i8* @sol.model.struct.new.Instruction.3(i8*, i8*, i8*)

declare i8* @"sol.model.macro.vec.!1"(i8*)

declare i8* @sol.get_associated_token_address.2(i8*, i8*)

declare i8* @"sol.Pubkey::find_program_address.2"(i8*, i8*)

declare i8* @sol.get_associated_token_address_and_bump_seed.4(i8*, i8*, i8*, i8*)

declare i8* @sol.id.0()

declare i8* @sol.get_associated_token_address_with_program_id.3(i8*, i8*, i8*)

declare i8* @"sol.spl_token::id.0"()

declare i8* @"sol.ProgramError::Custom.1"(i8*)

declare i8* @sol.and_then.2(i8*, i8*)

declare i8* @"sol.account::get_account_len.anon.1"(i8*)

declare i8* @sol.ok_or.2(i8*, i8*)

declare i8* @sol.get_return_data.0()

declare i8* @"sol.spl_token_2022::instruction::get_account_data_size.3"(i8*, i8*, i8*)

declare i8* @sol.map.2(i8*, i8*)

declare i8* @sol.try_into.1(i8*)

declare i8* @"sol.account::get_account_len.anon.2"(i8*)

declare i8* @"sol.account::create_pda_account.anon.3"(i8*)

declare i8* @"sol.account::create_pda_account.anon.1"(i8*)

declare i8* @"sol.system_instruction::create_account.5"(i8*, i8*, i8*, i8*, i8*)

declare i8* @"sol.system_instruction::assign.2"(i8*, i8*)

declare i8* @"sol.system_instruction::allocate.2"(i8*, i8*)

declare i8* @sol.typecast(i8*, i8*)

declare i8* @"sol.account::create_pda_account.anon.2"(i8*)

declare i8* @"sol.>"(i8*, i8*)

declare i8* @sol.saturating_sub.2(i8*, i8*)

declare i8* @sol.lamports.1(i8*)

declare i8* @sol.max.2(i8*, i8*)

declare i8* @sol.minimum_balance.2(i8*, i8*)

declare i8* @"sol.system_instruction::transfer.3"(i8*, i8*, i8*)

declare i8* @"sol.crate::processor::process_instruction.3"(i8*, i8*, i8*)

declare i8* @sol.process_instruction.3(i8*, i8*, i8*)

declare i8* @"sol.spl_token_2022::instruction::close_account.5"(i8*, i8*, i8*, i8*, i8*)

declare i8* @sol.invoke_signed.3(i8*, i8*, i8*)

declare i8* @"sol.spl_token_2022::instruction::transfer_checked.8"(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)

declare i8* @"sol.processor::process_recover_nested.anon.6"(i8*)

declare i8* @"sol.processor::process_recover_nested.anon.5"(i8*)

declare i8* @"sol.processor::process_recover_nested.anon.4"(i8*)

declare i8* @"sol.!"(i8*)

declare i8* @"sol.processor::process_recover_nested.anon.3"(i8*)

declare i8* @"sol.processor::process_recover_nested.anon.2"(i8*)

declare i8* @"sol.processor::process_recover_nested.anon.1"(i8*)

declare i8* @"sol.processor::process_recover_nested.anon.11"(i8*)

declare i8* @"sol.processor::process_recover_nested.anon.10"(i8*)

declare i8* @"sol.processor::process_recover_nested.anon.9"(i8*)

declare i8* @"sol.processor::process_recover_nested.anon.8"(i8*)

declare i8* @"sol.processor::process_recover_nested.anon.7"(i8*)

declare i8* @"sol.spl_token_2022::instruction::initialize_account3.4"(i8*, i8*, i8*, i8*)

declare i8* @sol.invoke.2(i8*, i8*)

declare i8* @"sol.spl_token_2022::instruction::initialize_immutable_owner.2"(i8*, i8*)

declare i8* @sol.create_pda_account.7(i8*, i8*, i8*, i8*, i8*, i8*, i8*)

declare i8* @sol.get_account_len.3(i8*, i8*, i8*)

declare i8* @"sol.Rent::get.0"()

declare i8* @"sol.processor::process_create_associated_token_account.anon.6"(i8*)

declare i8* @"sol.system_program::id.0"()

declare i8* @"sol.processor::process_create_associated_token_account.anon.2"(i8*)

declare i8* @"sol.&&"(i8*, i8*)

declare i8* @"sol.=="(i8*, i8*)

declare i8* @"sol.processor::process_create_associated_token_account.anon.1"(i8*)

declare i8* @sol.get_associated_token_address_and_bump_seed_internal.4(i8*, i8*, i8*, i8*)

declare i8* @sol.next_account_info.1(i8*)

declare i8* @sol.iter.1(i8*)

declare i8* @"sol.processor::process_create_associated_token_account.anon.3"(i8*)

declare i8* @"sol.StateWithExtensions::unpack.1"(i8*)

declare i8* @sol.borrow.1(i8*)

declare i8* @sol.Ok.1(i8*)

declare i8* @"sol.processor::process_create_associated_token_account.anon.5"(i8*)

declare i8* @"sol.processor::process_create_associated_token_account.anon.4"(i8*)

declare i8* @"sol.!="(i8*, i8*)

declare i8* @sol.into.1(i8*)

declare i8* @sol.return.1(i8*)

declare i8* @sol.Err.1(i8*)

declare i8* @"sol.msg.!1"(i8*)

declare i8* @sol.match.3(i8*, i8*, i8*)

declare i8* @"sol.processor::process_instruction.anon.3"(i8*)

declare i8* @sol.process_create_associated_token_account.3(i8*, i8*, i8*)

declare i8* @"sol.msg.!2"(i8*, i8*)

declare void @sol.model.opaqueAssign(i8*, i8*)

declare i8* @sol.ifFalse.anon.(i8*)

declare i8* @"sol.processor::process_instruction.anon.2"(i8*)

declare i8* @sol.ifTrue.anon.(i8*)

declare i8* @"sol.processor::process_instruction.anon.1"(i8*)

declare i8* @sol.if(i8*)

declare i8* @sol.is_empty.1(i8*)

declare i8* @sol.process_recover_nested.2(i8*, i8*)

declare i8* @sol.map_err.2(i8*, i8*)

declare i8* @"sol.AssociatedTokenAccountInstruction::try_from_slice.1"(i8*)

declare i8* @sol.model.funcArg(i8*, i8*)

declare i8* @sol.model.declare_id(i8*)

declare i8* @sol.model.toml(i8*, i8*)

define i64 @sol.model.cargo.toml(i8* %0) !dbg !3 {
  %2 = call i8* @sol.model.toml(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @dependencies.solana_program.version, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"1.14.12", i64 0, i64 0)), !dbg !7
  %3 = call i8* @sol.model.toml(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @dependencies.spl-token.version, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"3.5", i64 0, i64 0)), !dbg !7
  ret i64 0, !dbg !10
}

define i64 @sol.model.declare_id.address(i8* %0) !dbg !12 {
  %2 = call i8* @sol.model.declare_id(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @ATokenGPvbdGVxr1b2hvZbsiqW5xWH25efTNsLJA8knL, i64 0, i64 0)), !dbg !13
  ret i64 0, !dbg !16
}

define i8* @"processor::process_instruction.anon.1"(i8* %0) !dbg !18 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !20
  ret i8* %0, !dbg !20
}

define i8* @"processor::process_instruction.anon.2"(i8* %0) !dbg !22 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !23
  %3 = call i8* @"sol.AssociatedTokenAccountInstruction::try_from_slice.1"(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @input, i64 0, i64 0)), !dbg !25
  %4 = call i8* @sol.map_err.2(i8* %3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @"ProgramError::InvalidInstructionData", i64 0, i64 0)), !dbg !26
  ret i8* %0, !dbg !23
}

define i8* @"processor::process_instruction.anon.3"(i8* %0) !dbg !27 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !28
  %3 = call i8* @sol.process_recover_nested.2(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @program_id, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @accounts, i64 0, i64 0)), !dbg !30
  ret i8* %0, !dbg !28
}

define i8* @"processor::process_instruction.3"(i8* %0, i8* %1, i8* %2) !dbg !31 {
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @program_id, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&Pubkey", i64 0, i64 0)), !dbg !32
  %5 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @accounts, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"&[AccountInfo]", i64 0, i64 0)), !dbg !32
  %6 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @input, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&[u8]", i64 0, i64 0)), !dbg !32
  %7 = call i8* @sol.is_empty.1(i8* %2), !dbg !34
  %8 = call i8* @sol.if(i8* %7), !dbg !35
  %9 = call i8* @"sol.processor::process_instruction.anon.1"(i8* %8), !dbg !36
  %10 = call i8* @sol.ifTrue.anon.(i8* %9), !dbg !36
  %11 = call i8* @"sol.processor::process_instruction.anon.2"(i8* %10), !dbg !37
  %12 = call i8* @sol.ifFalse.anon.(i8* %11), !dbg !37
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @instruction, i64 0, i64 0), i8* %12), !dbg !38
  %13 = call i8* @"sol.msg.!2"(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"\22{:?}\22", i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @instruction, i64 0, i64 0)), !dbg !39
  %14 = call i8* @sol.process_create_associated_token_account.3(i8* %0, i8* %1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"CreateMode::Always", i64 0, i64 0)), !dbg !40
  %15 = call i8* @sol.process_create_associated_token_account.3(i8* %0, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @"CreateMode::Idempotent", i64 0, i64 0)), !dbg !41
  %16 = call i8* @sol.process_recover_nested.2(i8* %0, i8* %1), !dbg !42
  %17 = call i8* @"sol.processor::process_instruction.anon.3"(i8* %16), !dbg !43
  %18 = call i8* @sol.ifTrue.anon.(i8* %17), !dbg !43
  %19 = call i8* @sol.match.3(i8* %14, i8* %15, i8* %18), !dbg !44
  ret i8* %0, !dbg !32
}

define i8* @"processor::process_create_associated_token_account.anon.1"(i8* %0) !dbg !45 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !46
  %3 = call i8* @"sol.msg.!1"(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @"Error: Associated address does not match seed derivation", i64 0, i64 0)), !dbg !48
  %4 = call i8* @sol.Err.1(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"ProgramError::InvalidSeeds", i64 0, i64 0)), !dbg !49
  %5 = call i8* @sol.return.1(i8* %4), !dbg !50
  ret i8* %0, !dbg !46
}

define i8* @"processor::process_create_associated_token_account.anon.4"(i8* %0) !dbg !51 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !52
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @error, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @"AssociatedTokenAccountError::InvalidOwner", i64 0, i64 0)), !dbg !54
  %3 = call i8* @"sol.msg.!2"(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"\22{}\22", i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @error, i64 0, i64 0)), !dbg !55
  %4 = call i8* @sol.into.1(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @error, i64 0, i64 0)), !dbg !56
  %5 = call i8* @sol.Err.1(i8* %4), !dbg !57
  %6 = call i8* @sol.return.1(i8* %5), !dbg !58
  ret i8* %0, !dbg !52
}

define i8* @"processor::process_create_associated_token_account.anon.5"(i8* %0) !dbg !59 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !60
  %3 = call i8* @sol.Err.1(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @"ProgramError::InvalidAccountData", i64 0, i64 0)), !dbg !62
  %4 = call i8* @sol.return.1(i8* %3), !dbg !63
  ret i8* %0, !dbg !60
}

define i8* @"processor::process_create_associated_token_account.anon.3"(i8* %0) !dbg !64 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !65
  %3 = call i8* @"sol.!="(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @associated_token_account.base.owner, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @wallet_account_info.key, i64 0, i64 0)), !dbg !67
  %4 = call i8* @sol.if(i8* %3), !dbg !68
  %5 = call i8* @"sol.processor::process_create_associated_token_account.anon.4"(i8* %4), !dbg !69
  %6 = call i8* @sol.ifTrue.anon.(i8* %5), !dbg !69
  %7 = call i8* @"sol.!="(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @associated_token_account.base.mint, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @spl_token_mint_info.key, i64 0, i64 0)), !dbg !70
  %8 = call i8* @sol.if(i8* %7), !dbg !71
  %9 = call i8* @"sol.processor::process_create_associated_token_account.anon.5"(i8* %8), !dbg !72
  %10 = call i8* @sol.ifTrue.anon.(i8* %9), !dbg !72
  %11 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"()", i64 0, i64 0)), !dbg !73
  %12 = call i8* @sol.return.1(i8* %11), !dbg !74
  ret i8* %0, !dbg !65
}

define i8* @"processor::process_create_associated_token_account.anon.2"(i8* %0) !dbg !75 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !76
  %3 = call i8* @sol.borrow.1(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @associated_token_account_info.data, i64 0, i64 0)), !dbg !78
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @ata_data, i64 0, i64 0), i8* %3), !dbg !79
  %4 = call i8* @"sol.StateWithExtensions::unpack.1"(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @ata_data, i64 0, i64 0)), !dbg !80
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @"StateWithExtensions::<Account>::unpack(&ata_data)", i64 0, i64 0), i8* %4), !dbg !81
  %5 = call i8* @"sol.processor::process_create_associated_token_account.anon.3"(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @"StateWithExtensions::<Account>::unpack(&ata_data)", i64 0, i64 0)), !dbg !82
  %6 = call i8* @sol.ifTrue.anon.(i8* %5), !dbg !82
  ret i8* %0, !dbg !76
}

define i8* @"processor::process_create_associated_token_account.anon.6"(i8* %0) !dbg !83 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !84
  %3 = call i8* @sol.Err.1(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"ProgramError::IllegalOwner", i64 0, i64 0)), !dbg !86
  %4 = call i8* @sol.return.1(i8* %3), !dbg !87
  ret i8* %0, !dbg !84
}

define i8* @"processor::process_create_associated_token_account.3"(i8* %0, i8* %1, i8* %2) !dbg !88 {
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @program_id, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&Pubkey", i64 0, i64 0)), !dbg !89
  %5 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @accounts, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"&[AccountInfo]", i64 0, i64 0)), !dbg !89
  %6 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @create_mode, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @CreateMode, i64 0, i64 0)), !dbg !89
  %7 = call i8* @sol.iter.1(i8* %1), !dbg !91
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @account_info_iter, i64 0, i64 0), i8* %7), !dbg !92
  %8 = call i8* @sol.next_account_info.1(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @account_info_iter, i64 0, i64 0)), !dbg !93
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @funder_info, i64 0, i64 0), i8* %8), !dbg !94
  %9 = call i8* @sol.next_account_info.1(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @account_info_iter, i64 0, i64 0)), !dbg !95
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @associated_token_account_info, i64 0, i64 0), i8* %9), !dbg !96
  %10 = call i8* @sol.next_account_info.1(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @account_info_iter, i64 0, i64 0)), !dbg !97
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @wallet_account_info, i64 0, i64 0), i8* %10), !dbg !98
  %11 = call i8* @sol.next_account_info.1(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @account_info_iter, i64 0, i64 0)), !dbg !99
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @spl_token_mint_info, i64 0, i64 0), i8* %11), !dbg !100
  %12 = call i8* @sol.next_account_info.1(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @account_info_iter, i64 0, i64 0)), !dbg !101
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @system_program_info, i64 0, i64 0), i8* %12), !dbg !102
  %13 = call i8* @sol.next_account_info.1(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @account_info_iter, i64 0, i64 0)), !dbg !103
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @spl_token_program_info, i64 0, i64 0), i8* %13), !dbg !104
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @spl_token_program_id, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @spl_token_program_info.key, i64 0, i64 0)), !dbg !105
  %14 = call i8* @sol.get_associated_token_address_and_bump_seed_internal.4(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @wallet_account_info.key, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @spl_token_mint_info.key, i64 0, i64 0), i8* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @spl_token_program_id, i64 0, i64 0)), !dbg !106
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @"(associated_token_address,bump_seed)", i64 0, i64 0), i8* %14), !dbg !107
  %15 = call i8* @"sol.!="(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @associated_token_address, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @associated_token_account_info.key, i64 0, i64 0)), !dbg !108
  %16 = call i8* @sol.if(i8* %15), !dbg !109
  %17 = call i8* @"sol.processor::process_create_associated_token_account.anon.1"(i8* %16), !dbg !110
  %18 = call i8* @sol.ifTrue.anon.(i8* %17), !dbg !110
  %19 = call i8* @"sol.=="(i8* %2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @"CreateMode::Idempotent", i64 0, i64 0)), !dbg !111
  %20 = call i8* @"sol.=="(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @associated_token_account_info.owner, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @spl_token_program_id, i64 0, i64 0)), !dbg !112
  %21 = call i8* @"sol.&&"(i8* %19, i8* %20), !dbg !111
  %22 = call i8* @sol.if(i8* %21), !dbg !113
  %23 = call i8* @"sol.processor::process_create_associated_token_account.anon.2"(i8* %22), !dbg !114
  %24 = call i8* @sol.ifTrue.anon.(i8* %23), !dbg !114
  %25 = call i8* @"sol.system_program::id.0"(), !dbg !115
  %26 = call i8* @"sol.!="(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @associated_token_account_info.owner, i64 0, i64 0), i8* %25), !dbg !116
  %27 = call i8* @sol.if(i8* %26), !dbg !117
  %28 = call i8* @"sol.processor::process_create_associated_token_account.anon.6"(i8* %27), !dbg !118
  %29 = call i8* @sol.ifTrue.anon.(i8* %28), !dbg !118
  %30 = call i8* @"sol.Rent::get.0"(), !dbg !119
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @rent, i64 0, i64 0), i8* %30), !dbg !120
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @associated_token_account_signer_seeds, i64 0, i64 0), i8* getelementptr inbounds ([120 x i8], [120 x i8]* @"[&wallet_account_info.key.to_bytes(),&spl_token_program_id.to_bytes(),&spl_token_mint_info.key.to_bytes(),&[bump_seed],]", i64 0, i64 0)), !dbg !121
  %31 = call i8* @sol.get_account_len.3(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @spl_token_mint_info, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @spl_token_program_info, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"[ExtensionType::ImmutableOwner]", i64 0, i64 0)), !dbg !122
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @account_len, i64 0, i64 0), i8* %31), !dbg !123
  %32 = call i8* @sol.create_pda_account.7(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @funder_info, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @rent, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @account_len, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @spl_token_program_id, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @system_program_info, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @associated_token_account_info, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @associated_token_account_signer_seeds, i64 0, i64 0)), !dbg !124
  %33 = call i8* @"sol.msg.!1"(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @"Initialize the associated token account", i64 0, i64 0)), !dbg !125
  %34 = call i8* @"sol.spl_token_2022::instruction::initialize_immutable_owner.2"(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @spl_token_program_id, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @associated_token_account_info.key, i64 0, i64 0)), !dbg !126
  %35 = call i8* @sol.invoke.2(i8* %34, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @"[associated_token_account_info.clone(),spl_token_program_info.clone(),]", i64 0, i64 0)), !dbg !127
  %36 = call i8* @"sol.spl_token_2022::instruction::initialize_account3.4"(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @spl_token_program_id, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @associated_token_account_info.key, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @spl_token_mint_info.key, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @wallet_account_info.key, i64 0, i64 0)), !dbg !128
  %37 = call i8* @sol.invoke.2(i8* %36, i8* getelementptr inbounds ([127 x i8], [127 x i8]* @"[associated_token_account_info.clone(),spl_token_mint_info.clone(),wallet_account_info.clone(),spl_token_program_info.clone(),]", i64 0, i64 0)), !dbg !129
  ret i8* %0, !dbg !89
}

define i8* @"processor::process_recover_nested.anon.1"(i8* %0) !dbg !130 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !131
  %3 = call i8* @"sol.msg.!1"(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @"Error: Owner associated address does not match seed derivation", i64 0, i64 0)), !dbg !133
  %4 = call i8* @sol.Err.1(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"ProgramError::InvalidSeeds", i64 0, i64 0)), !dbg !134
  %5 = call i8* @sol.return.1(i8* %4), !dbg !135
  ret i8* %0, !dbg !131
}

define i8* @"processor::process_recover_nested.anon.2"(i8* %0) !dbg !136 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !137
  %3 = call i8* @"sol.msg.!1"(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @"Error: Nested associated address does not match seed derivation", i64 0, i64 0)), !dbg !139
  %4 = call i8* @sol.Err.1(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"ProgramError::InvalidSeeds", i64 0, i64 0)), !dbg !140
  %5 = call i8* @sol.return.1(i8* %4), !dbg !141
  ret i8* %0, !dbg !137
}

define i8* @"processor::process_recover_nested.anon.3"(i8* %0) !dbg !142 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !143
  %3 = call i8* @"sol.msg.!1"(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @"Error: Destination associated address does not match seed derivation", i64 0, i64 0)), !dbg !145
  %4 = call i8* @sol.Err.1(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"ProgramError::InvalidSeeds", i64 0, i64 0)), !dbg !146
  %5 = call i8* @sol.return.1(i8* %4), !dbg !147
  ret i8* %0, !dbg !143
}

define i8* @"processor::process_recover_nested.anon.4"(i8* %0) !dbg !148 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !149
  %3 = call i8* @"sol.msg.!1"(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @"Wallet of the owner associated token account must sign", i64 0, i64 0)), !dbg !151
  %4 = call i8* @sol.Err.1(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @"ProgramError::MissingRequiredSignature", i64 0, i64 0)), !dbg !152
  %5 = call i8* @sol.return.1(i8* %4), !dbg !153
  ret i8* %0, !dbg !149
}

define i8* @"processor::process_recover_nested.anon.5"(i8* %0) !dbg !154 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !155
  %3 = call i8* @"sol.msg.!1"(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @"Owner mint not owned by provided token program", i64 0, i64 0)), !dbg !157
  %4 = call i8* @sol.Err.1(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"ProgramError::IllegalOwner", i64 0, i64 0)), !dbg !158
  %5 = call i8* @sol.return.1(i8* %4), !dbg !159
  ret i8* %0, !dbg !155
}

define i8* @"processor::process_recover_nested.anon.7"(i8* %0) !dbg !160 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !161
  %3 = call i8* @"sol.msg.!1"(i8* getelementptr inbounds ([117 x i8], [117 x i8]* @"Owner associated token account not owned by provided token program, recreate the owner associated token account first", i64 0, i64 0)), !dbg !163
  %4 = call i8* @sol.Err.1(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"ProgramError::IllegalOwner", i64 0, i64 0)), !dbg !164
  %5 = call i8* @sol.return.1(i8* %4), !dbg !165
  ret i8* %0, !dbg !161
}

define i8* @"processor::process_recover_nested.anon.8"(i8* %0) !dbg !166 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !167
  %3 = call i8* @"sol.msg.!1"(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @"Owner associated token account not owned by provided wallet", i64 0, i64 0)), !dbg !169
  %4 = call i8* @sol.into.1(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @"AssociatedTokenAccountError::InvalidOwner", i64 0, i64 0)), !dbg !170
  %5 = call i8* @sol.Err.1(i8* %4), !dbg !171
  %6 = call i8* @sol.return.1(i8* %5), !dbg !172
  ret i8* %0, !dbg !167
}

define i8* @"processor::process_recover_nested.anon.9"(i8* %0) !dbg !173 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !174
  %3 = call i8* @"sol.msg.!1"(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @"Nested associated token account not owned by provided token program", i64 0, i64 0)), !dbg !176
  %4 = call i8* @sol.Err.1(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"ProgramError::IllegalOwner", i64 0, i64 0)), !dbg !177
  %5 = call i8* @sol.return.1(i8* %4), !dbg !178
  ret i8* %0, !dbg !174
}

define i8* @"processor::process_recover_nested.anon.10"(i8* %0) !dbg !179 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !180
  %3 = call i8* @"sol.msg.!1"(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @"Nested associated token account not owned by provided associated token account", i64 0, i64 0)), !dbg !182
  %4 = call i8* @sol.into.1(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @"AssociatedTokenAccountError::InvalidOwner", i64 0, i64 0)), !dbg !183
  %5 = call i8* @sol.Err.1(i8* %4), !dbg !184
  %6 = call i8* @sol.return.1(i8* %5), !dbg !185
  ret i8* %0, !dbg !180
}

define i8* @"processor::process_recover_nested.anon.11"(i8* %0) !dbg !186 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !187
  %3 = call i8* @"sol.msg.!1"(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @"Nested mint account not owned by provided token program", i64 0, i64 0)), !dbg !189
  %4 = call i8* @sol.Err.1(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"ProgramError::IllegalOwner", i64 0, i64 0)), !dbg !190
  %5 = call i8* @sol.return.1(i8* %4), !dbg !191
  ret i8* %0, !dbg !187
}

define i8* @"processor::process_recover_nested.anon.6"(i8* %0) !dbg !192 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !193
  %3 = call i8* @"sol.!="(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @owner_associated_token_account_info.owner, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @spl_token_program_id, i64 0, i64 0)), !dbg !195
  %4 = call i8* @sol.if(i8* %3), !dbg !196
  %5 = call i8* @"sol.processor::process_recover_nested.anon.7"(i8* %4), !dbg !197
  %6 = call i8* @sol.ifTrue.anon.(i8* %5), !dbg !197
  %7 = call i8* @sol.borrow.1(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @owner_associated_token_account_info.data, i64 0, i64 0)), !dbg !198
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @owner_account_data, i64 0, i64 0), i8* %7), !dbg !199
  %8 = call i8* @"sol.StateWithExtensions::unpack.1"(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @owner_account_data, i64 0, i64 0)), !dbg !200
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @owner_account, i64 0, i64 0), i8* %8), !dbg !201
  %9 = call i8* @"sol.!="(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @owner_account.base.owner, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @wallet_account_info.key, i64 0, i64 0)), !dbg !202
  %10 = call i8* @sol.if(i8* %9), !dbg !203
  %11 = call i8* @"sol.processor::process_recover_nested.anon.8"(i8* %10), !dbg !204
  %12 = call i8* @sol.ifTrue.anon.(i8* %11), !dbg !204
  %13 = call i8* @"sol.!="(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @nested_associated_token_account_info.owner, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @spl_token_program_id, i64 0, i64 0)), !dbg !205
  %14 = call i8* @sol.if(i8* %13), !dbg !206
  %15 = call i8* @"sol.processor::process_recover_nested.anon.9"(i8* %14), !dbg !207
  %16 = call i8* @sol.ifTrue.anon.(i8* %15), !dbg !207
  %17 = call i8* @sol.borrow.1(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @nested_associated_token_account_info.data, i64 0, i64 0)), !dbg !208
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @nested_account_data, i64 0, i64 0), i8* %17), !dbg !209
  %18 = call i8* @"sol.StateWithExtensions::unpack.1"(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @nested_account_data, i64 0, i64 0)), !dbg !210
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @nested_account, i64 0, i64 0), i8* %18), !dbg !211
  %19 = call i8* @"sol.!="(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @nested_account.base.owner, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @owner_associated_token_account_info.key, i64 0, i64 0)), !dbg !212
  %20 = call i8* @sol.if(i8* %19), !dbg !213
  %21 = call i8* @"sol.processor::process_recover_nested.anon.10"(i8* %20), !dbg !214
  %22 = call i8* @sol.ifTrue.anon.(i8* %21), !dbg !214
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @amount, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @nested_account.base.amount, i64 0, i64 0)), !dbg !215
  %23 = call i8* @"sol.!="(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @nested_token_mint_info.owner, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @spl_token_program_id, i64 0, i64 0)), !dbg !216
  %24 = call i8* @sol.if(i8* %23), !dbg !217
  %25 = call i8* @"sol.processor::process_recover_nested.anon.11"(i8* %24), !dbg !218
  %26 = call i8* @sol.ifTrue.anon.(i8* %25), !dbg !218
  %27 = call i8* @sol.borrow.1(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @nested_token_mint_info.data, i64 0, i64 0)), !dbg !219
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @nested_mint_data, i64 0, i64 0), i8* %27), !dbg !220
  %28 = call i8* @"sol.StateWithExtensions::unpack.1"(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @nested_mint_data, i64 0, i64 0)), !dbg !221
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @nested_mint, i64 0, i64 0), i8* %28), !dbg !222
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @decimals, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @nested_mint.base.decimals, i64 0, i64 0)), !dbg !223
  ret i8* %0, !dbg !193
}

define i8* @"processor::process_recover_nested.2"(i8* %0, i8* %1) !dbg !224 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @program_id, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&Pubkey", i64 0, i64 0)), !dbg !225
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @accounts, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"&[AccountInfo]", i64 0, i64 0)), !dbg !225
  %5 = call i8* @sol.iter.1(i8* %1), !dbg !227
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @account_info_iter, i64 0, i64 0), i8* %5), !dbg !228
  %6 = call i8* @sol.next_account_info.1(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @account_info_iter, i64 0, i64 0)), !dbg !229
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @nested_associated_token_account_info, i64 0, i64 0), i8* %6), !dbg !230
  %7 = call i8* @sol.next_account_info.1(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @account_info_iter, i64 0, i64 0)), !dbg !231
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @nested_token_mint_info, i64 0, i64 0), i8* %7), !dbg !232
  %8 = call i8* @sol.next_account_info.1(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @account_info_iter, i64 0, i64 0)), !dbg !233
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @destination_associated_token_account_info, i64 0, i64 0), i8* %8), !dbg !234
  %9 = call i8* @sol.next_account_info.1(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @account_info_iter, i64 0, i64 0)), !dbg !235
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @owner_associated_token_account_info, i64 0, i64 0), i8* %9), !dbg !236
  %10 = call i8* @sol.next_account_info.1(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @account_info_iter, i64 0, i64 0)), !dbg !237
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @owner_token_mint_info, i64 0, i64 0), i8* %10), !dbg !238
  %11 = call i8* @sol.next_account_info.1(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @account_info_iter, i64 0, i64 0)), !dbg !239
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @wallet_account_info, i64 0, i64 0), i8* %11), !dbg !240
  %12 = call i8* @sol.next_account_info.1(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @account_info_iter, i64 0, i64 0)), !dbg !241
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @spl_token_program_info, i64 0, i64 0), i8* %12), !dbg !242
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @spl_token_program_id, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @spl_token_program_info.key, i64 0, i64 0)), !dbg !243
  %13 = call i8* @sol.get_associated_token_address_and_bump_seed_internal.4(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @wallet_account_info.key, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @owner_token_mint_info.key, i64 0, i64 0), i8* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @spl_token_program_id, i64 0, i64 0)), !dbg !244
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @"(owner_associated_token_address,bump_seed)", i64 0, i64 0), i8* %13), !dbg !245
  %14 = call i8* @"sol.!="(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @owner_associated_token_address, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @owner_associated_token_account_info.key, i64 0, i64 0)), !dbg !246
  %15 = call i8* @sol.if(i8* %14), !dbg !247
  %16 = call i8* @"sol.processor::process_recover_nested.anon.1"(i8* %15), !dbg !248
  %17 = call i8* @sol.ifTrue.anon.(i8* %16), !dbg !248
  %18 = call i8* @sol.get_associated_token_address_and_bump_seed_internal.4(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @owner_associated_token_account_info.key, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @nested_token_mint_info.key, i64 0, i64 0), i8* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @spl_token_program_id, i64 0, i64 0)), !dbg !249
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"(nested_associated_token_address,_)", i64 0, i64 0), i8* %18), !dbg !250
  %19 = call i8* @"sol.!="(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @nested_associated_token_address, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @nested_associated_token_account_info.key, i64 0, i64 0)), !dbg !251
  %20 = call i8* @sol.if(i8* %19), !dbg !252
  %21 = call i8* @"sol.processor::process_recover_nested.anon.2"(i8* %20), !dbg !253
  %22 = call i8* @sol.ifTrue.anon.(i8* %21), !dbg !253
  %23 = call i8* @sol.get_associated_token_address_and_bump_seed_internal.4(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @wallet_account_info.key, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @nested_token_mint_info.key, i64 0, i64 0), i8* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @spl_token_program_id, i64 0, i64 0)), !dbg !254
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @"(destination_associated_token_address,_)", i64 0, i64 0), i8* %23), !dbg !255
  %24 = call i8* @"sol.!="(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @destination_associated_token_address, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @destination_associated_token_account_info.key, i64 0, i64 0)), !dbg !256
  %25 = call i8* @sol.if(i8* %24), !dbg !257
  %26 = call i8* @"sol.processor::process_recover_nested.anon.3"(i8* %25), !dbg !258
  %27 = call i8* @sol.ifTrue.anon.(i8* %26), !dbg !258
  %28 = call i8* @"sol.!"(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @wallet_account_info.is_signer, i64 0, i64 0)), !dbg !259
  %29 = call i8* @sol.if(i8* %28), !dbg !260
  %30 = call i8* @"sol.processor::process_recover_nested.anon.4"(i8* %29), !dbg !261
  %31 = call i8* @sol.ifTrue.anon.(i8* %30), !dbg !261
  %32 = call i8* @"sol.!="(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @owner_token_mint_info.owner, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @spl_token_program_id, i64 0, i64 0)), !dbg !262
  %33 = call i8* @sol.if(i8* %32), !dbg !263
  %34 = call i8* @"sol.processor::process_recover_nested.anon.5"(i8* %33), !dbg !264
  %35 = call i8* @sol.ifTrue.anon.(i8* %34), !dbg !264
  %36 = call i8* @"sol.processor::process_recover_nested.anon.6"(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"amount,decimals", i64 0, i64 0)), !dbg !265
  %37 = call i8* @sol.ifTrue.anon.(i8* %36), !dbg !265
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"(amount,decimals)", i64 0, i64 0), i8* %37), !dbg !266
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @owner_associated_token_account_signer_seeds, i64 0, i64 0), i8* getelementptr inbounds ([122 x i8], [122 x i8]* @"[&wallet_account_info.key.to_bytes(),&spl_token_program_id.to_bytes(),&owner_token_mint_info.key.to_bytes(),&[bump_seed],]", i64 0, i64 0)), !dbg !267
  %38 = call i8* @"sol.spl_token_2022::instruction::transfer_checked.8"(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @spl_token_program_id, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @nested_associated_token_account_info.key, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @nested_token_mint_info.key, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @destination_associated_token_account_info.key, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @owner_associated_token_account_info.key, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"[]", i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @amount, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @decimals, i64 0, i64 0)), !dbg !268
  %39 = call i8* @sol.invoke_signed.3(i8* %38, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @"[nested_associated_token_account_info.clone(),nested_token_mint_info.clone(),destination_associated_token_account_info.clone(),owner_associated_token_account_info.clone(),spl_token_program_info.clone(),]", i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @"[owner_associated_token_account_signer_seeds]", i64 0, i64 0)), !dbg !269
  %40 = call i8* @"sol.spl_token_2022::instruction::close_account.5"(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @spl_token_program_id, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @nested_associated_token_account_info.key, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @wallet_account_info.key, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @owner_associated_token_account_info.key, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"[]", i64 0, i64 0)), !dbg !270
  %41 = call i8* @sol.invoke_signed.3(i8* %40, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @"[nested_associated_token_account_info.clone(),wallet_account_info.clone(),owner_associated_token_account_info.clone(),spl_token_program_info.clone(),]", i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @"[owner_associated_token_account_signer_seeds]", i64 0, i64 0)), !dbg !271
  ret i8* %0, !dbg !225
}

define i8* @main(i8* %0) !dbg !272 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !274
  %3 = call i8* @sol.process_instruction.3(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @program_id, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @accounts, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @instruction_data, i64 0, i64 0)), !dbg !274
  ret i8* %0, !dbg !274
}

define i8* @"entrypoint::process_instruction.3"(i8* %0, i8* %1, i8* %2) !dbg !276 {
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @program_id, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&Pubkey", i64 0, i64 0)), !dbg !277
  %5 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @accounts, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"&[AccountInfo]", i64 0, i64 0)), !dbg !277
  %6 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @instruction_data, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&[u8]", i64 0, i64 0)), !dbg !277
  %7 = call i8* @"sol.crate::processor::process_instruction.3"(i8* %0, i8* %1, i8* %2), !dbg !279
  ret i8* %0, !dbg !277
}

define i8* @"account::create_pda_account.anon.2"(i8* %0) !dbg !280 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !282
  %3 = call i8* @"sol.system_instruction::transfer.3"(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @payer.key, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @new_pda_account.key, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @required_lamports, i64 0, i64 0)), !dbg !284
  %4 = call i8* @sol.invoke.2(i8* %3, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @"[payer.clone(),new_pda_account.clone(),system_program.clone(),]", i64 0, i64 0)), !dbg !285
  ret i8* %0, !dbg !282
}

define i8* @"account::create_pda_account.anon.1"(i8* %0) !dbg !286 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !287
  %3 = call i8* @sol.minimum_balance.2(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @rent, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @space, i64 0, i64 0)), !dbg !289
  %4 = call i8* @sol.max.2(i8* %3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"1", i64 0, i64 0)), !dbg !290
  %5 = call i8* @sol.lamports.1(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @new_pda_account, i64 0, i64 0)), !dbg !291
  %6 = call i8* @sol.saturating_sub.2(i8* %4, i8* %5), !dbg !292
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @required_lamports, i64 0, i64 0), i8* %6), !dbg !293
  %7 = call i8* @"sol.>"(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @required_lamports, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"0", i64 0, i64 0)), !dbg !294
  %8 = call i8* @sol.if(i8* %7), !dbg !295
  %9 = call i8* @"sol.account::create_pda_account.anon.2"(i8* %8), !dbg !296
  %10 = call i8* @sol.ifTrue.anon.(i8* %9), !dbg !296
  %11 = call i8* @sol.typecast(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @space, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u64, i64 0, i64 0)), !dbg !297
  %12 = call i8* @"sol.system_instruction::allocate.2"(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @new_pda_account.key, i64 0, i64 0), i8* %11), !dbg !298
  %13 = call i8* @sol.invoke_signed.3(i8* %12, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @"[new_pda_account.clone(),system_program.clone()]", i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @"[new_pda_signer_seeds]", i64 0, i64 0)), !dbg !299
  %14 = call i8* @"sol.system_instruction::assign.2"(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @new_pda_account.key, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @owner, i64 0, i64 0)), !dbg !300
  %15 = call i8* @sol.invoke_signed.3(i8* %14, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @"[new_pda_account.clone(),system_program.clone()]", i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @"[new_pda_signer_seeds]", i64 0, i64 0)), !dbg !301
  ret i8* %0, !dbg !287
}

define i8* @"account::create_pda_account.anon.3"(i8* %0) !dbg !302 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !303
  %3 = call i8* @sol.minimum_balance.2(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @rent, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @space, i64 0, i64 0)), !dbg !305
  %4 = call i8* @sol.max.2(i8* %3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"1", i64 0, i64 0)), !dbg !306
  %5 = call i8* @sol.typecast(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @space, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u64, i64 0, i64 0)), !dbg !307
  %6 = call i8* @"sol.system_instruction::create_account.5"(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @payer.key, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @new_pda_account.key, i64 0, i64 0), i8* %4, i8* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @owner, i64 0, i64 0)), !dbg !308
  %7 = call i8* @sol.invoke_signed.3(i8* %6, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @"[payer.clone(),new_pda_account.clone(),system_program.clone(),]", i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @"[new_pda_signer_seeds]", i64 0, i64 0)), !dbg !309
  ret i8* %0, !dbg !303
}

define i8* @"account::create_pda_account.7"(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6) !dbg !310 {
  %8 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @payer, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"&AccountInfo<'a>", i64 0, i64 0)), !dbg !311
  %9 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @rent, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&Rent", i64 0, i64 0)), !dbg !311
  %10 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @space, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @usize, i64 0, i64 0)), !dbg !311
  %11 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @owner, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&Pubkey", i64 0, i64 0)), !dbg !311
  %12 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @system_program, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"&AccountInfo<'a>", i64 0, i64 0)), !dbg !311
  %13 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @new_pda_account, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"&AccountInfo<'a>", i64 0, i64 0)), !dbg !311
  %14 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @new_pda_signer_seeds, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"&[&[u8]]", i64 0, i64 0)), !dbg !311
  %15 = call i8* @sol.lamports.1(i8* %5), !dbg !313
  %16 = call i8* @"sol.>"(i8* %15, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"0", i64 0, i64 0)), !dbg !314
  %17 = call i8* @sol.if(i8* %16), !dbg !315
  %18 = call i8* @"sol.account::create_pda_account.anon.1"(i8* %17), !dbg !316
  %19 = call i8* @sol.ifTrue.anon.(i8* %18), !dbg !316
  %20 = call i8* @"sol.account::create_pda_account.anon.3"(i8* %19), !dbg !317
  %21 = call i8* @sol.ifFalse.anon.(i8* %20), !dbg !317
  ret i8* %0, !dbg !311
}

define i8* @"account::get_account_len.anon.2"(i8* %0) !dbg !318 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !319
  %3 = call i8* @sol.Err.1(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @"ProgramError::IncorrectProgramId", i64 0, i64 0)), !dbg !321
  %4 = call i8* @sol.return.1(i8* %3), !dbg !322
  ret i8* %0, !dbg !319
}

define i8* @"account::get_account_len.anon.1"(i8* %0) !dbg !323 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !324
  %3 = call i8* @"sol.!="(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @key, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @spl_token_program.key, i64 0, i64 0)), !dbg !326
  %4 = call i8* @sol.if(i8* %3), !dbg !327
  %5 = call i8* @"sol.account::get_account_len.anon.2"(i8* %4), !dbg !328
  %6 = call i8* @sol.ifTrue.anon.(i8* %5), !dbg !328
  %7 = call i8* @sol.try_into.1(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @data, i64 0, i64 0)), !dbg !329
  %8 = call i8* @sol.map.2(i8* %7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"usize::from_le_bytes", i64 0, i64 0)), !dbg !330
  %9 = call i8* @sol.map_err.2(i8* %8, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @"ProgramError::InvalidInstructionData", i64 0, i64 0)), !dbg !331
  ret i8* %0, !dbg !324
}

define i8* @"account::get_account_len.3"(i8* %0, i8* %1, i8* %2) !dbg !332 {
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @mint, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"&AccountInfo<'a>", i64 0, i64 0)), !dbg !333
  %5 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @spl_token_program, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"&AccountInfo<'a>", i64 0, i64 0)), !dbg !333
  %6 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @extension_types, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"&[ExtensionType]", i64 0, i64 0)), !dbg !333
  %7 = call i8* @"sol.spl_token_2022::instruction::get_account_data_size.3"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @spl_token_program.key, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @mint.key, i64 0, i64 0), i8* %2), !dbg !335
  %8 = call i8* @sol.invoke.2(i8* %7, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @"[mint.clone(),spl_token_program.clone()]", i64 0, i64 0)), !dbg !336
  %9 = call i8* @sol.get_return_data.0(), !dbg !337
  %10 = call i8* @sol.ok_or.2(i8* %9, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @"ProgramError::InvalidInstructionData", i64 0, i64 0)), !dbg !338
  %11 = call i8* @sol.try_into.1(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @data, i64 0, i64 0)), !dbg !339
  %12 = call i8* @sol.map.2(i8* %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"usize::from_le_bytes", i64 0, i64 0)), !dbg !340
  %13 = call i8* @sol.map_err.2(i8* %12, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @"ProgramError::InvalidInstructionData", i64 0, i64 0)), !dbg !341
  %14 = call i8* @"sol.account::get_account_len.anon.1"(i8* %13), !dbg !342
  %15 = call i8* @sol.ifTrue.anon.(i8* %14), !dbg !342
  %16 = call i8* @sol.and_then.2(i8* %10, i8* %15), !dbg !343
  ret i8* %0, !dbg !333
}

define i8* @"error::ProgramError::from.1"(i8* %0) !dbg !344 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @e, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @AssociatedTokenAccountError, i64 0, i64 0)), !dbg !346
  %3 = call i8* @sol.typecast(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u32, i64 0, i64 0)), !dbg !348
  %4 = call i8* @"sol.ProgramError::Custom.1"(i8* %3), !dbg !349
  ret i8* %0, !dbg !346
}

define i8* @"error::AssociatedTokenAccountError::type_of.0"(i8* %0) !dbg !350 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !351
  ret i8* %0, !dbg !351
}

define i8* @"lib::get_associated_token_address_and_bump_seed.4"(i8* %0, i8* %1, i8* %2, i8* %3) !dbg !353 {
  %5 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @wallet_address, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&Pubkey", i64 0, i64 0)), !dbg !355
  %6 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @token_mint_address, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&Pubkey", i64 0, i64 0)), !dbg !355
  %7 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @program_id, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&Pubkey", i64 0, i64 0)), !dbg !355
  %8 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @token_program_id, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&Pubkey", i64 0, i64 0)), !dbg !355
  %9 = call i8* @sol.get_associated_token_address_and_bump_seed_internal.4(i8* %0, i8* %1, i8* %2, i8* %3), !dbg !357
  ret i8* %0, !dbg !355
}

define i8* @"lib::get_associated_token_address.2"(i8* %0, i8* %1) !dbg !358 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @wallet_address, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&Pubkey", i64 0, i64 0)), !dbg !359
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @token_mint_address, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&Pubkey", i64 0, i64 0)), !dbg !359
  %5 = call i8* @"sol.spl_token::id.0"(), !dbg !361
  %6 = call i8* @sol.get_associated_token_address_with_program_id.3(i8* %0, i8* %1, i8* %5), !dbg !362
  ret i8* %0, !dbg !359
}

define i8* @"lib::get_associated_token_address_with_program_id.3"(i8* %0, i8* %1, i8* %2) !dbg !363 {
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @wallet_address, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&Pubkey", i64 0, i64 0)), !dbg !364
  %5 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @token_mint_address, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&Pubkey", i64 0, i64 0)), !dbg !364
  %6 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @token_program_id, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&Pubkey", i64 0, i64 0)), !dbg !364
  %7 = call i8* @sol.id.0(), !dbg !366
  %8 = call i8* @sol.get_associated_token_address_and_bump_seed.4(i8* %0, i8* %1, i8* %7, i8* %2), !dbg !367
  ret i8* %0, !dbg !364
}

define i8* @"lib::get_associated_token_address_and_bump_seed_internal.4"(i8* %0, i8* %1, i8* %2, i8* %3) !dbg !368 {
  %5 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @wallet_address, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&Pubkey", i64 0, i64 0)), !dbg !369
  %6 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @token_mint_address, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&Pubkey", i64 0, i64 0)), !dbg !369
  %7 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @program_id, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&Pubkey", i64 0, i64 0)), !dbg !369
  %8 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @token_program_id, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&Pubkey", i64 0, i64 0)), !dbg !369
  %9 = call i8* @"sol.Pubkey::find_program_address.2"(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @"[&wallet_address.to_bytes(),&token_program_id.to_bytes(),&token_mint_address.to_bytes(),]", i64 0, i64 0), i8* %2), !dbg !371
  ret i8* %0, !dbg !369
}

define i8* @"lib::create_associated_token_account.3"(i8* %0, i8* %1, i8* %2) !dbg !372 {
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @funding_address, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&Pubkey", i64 0, i64 0)), !dbg !373
  %5 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @wallet_address, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&Pubkey", i64 0, i64 0)), !dbg !373
  %6 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @token_mint_address, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&Pubkey", i64 0, i64 0)), !dbg !373
  %7 = call i8* @sol.get_associated_token_address.2(i8* %1, i8* %2), !dbg !375
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @associated_account_address, i64 0, i64 0), i8* %7), !dbg !376
  %8 = call i8* @sol.id.0(), !dbg !377
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @program_id, i64 0, i64 0), i8* %8), !dbg !378
  %9 = call i8* @"sol.model.macro.vec.!1"(i8* getelementptr inbounds ([366 x i8], [366 x i8]* @"[AccountMeta::new(*funding_address,true),AccountMeta::new(associated_account_address,false),AccountMeta::new_readonly(*wallet_address,false),AccountMeta::new_readonly(*token_mint_address,false),AccountMeta::new_readonly(solana_program::system_program::id(),false),AccountMeta::new_readonly(spl_token::id(),false),AccountMeta::new_readonly(sysvar::rent::id(),false),]", i64 0, i64 0)), !dbg !379
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @accounts, i64 0, i64 0), i8* %9), !dbg !380
  %10 = call i8* @"sol.model.macro.vec.!1"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"[]", i64 0, i64 0)), !dbg !381
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @data, i64 0, i64 0), i8* %10), !dbg !382
  %11 = call i8* @sol.model.struct.new.Instruction.3(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @program_id, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @accounts, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @data, i64 0, i64 0)), !dbg !383
  ret i8* %0, !dbg !373
}

define i8* @"instruction::build_associated_token_account_instruction.5"(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4) !dbg !384 {
  %6 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @funding_address, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&Pubkey", i64 0, i64 0)), !dbg !386
  %7 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @wallet_address, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&Pubkey", i64 0, i64 0)), !dbg !386
  %8 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @token_mint_address, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&Pubkey", i64 0, i64 0)), !dbg !386
  %9 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @token_program_id, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&Pubkey", i64 0, i64 0)), !dbg !386
  %10 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @instruction, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @AssociatedTokenAccountInstruction, i64 0, i64 0)), !dbg !386
  %11 = call i8* @sol.get_associated_token_address_with_program_id.3(i8* %1, i8* %2, i8* %3), !dbg !388
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @associated_account_address, i64 0, i64 0), i8* %11), !dbg !389
  %12 = call i8* @"sol.assert_matches.!2"(i8* %4, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @"AssociatedTokenAccountInstruction::Create|AssociatedTokenAccountInstruction::CreateIdempotent", i64 0, i64 0)), !dbg !390
  %13 = call i8* @sol.id.0(), !dbg !391
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @program_id, i64 0, i64 0), i8* %13), !dbg !392
  %14 = call i8* @"sol.model.macro.vec.!1"(i8* getelementptr inbounds ([316 x i8], [316 x i8]* @"[AccountMeta::new(*funding_address,true),AccountMeta::new(associated_account_address,false),AccountMeta::new_readonly(*wallet_address,false),AccountMeta::new_readonly(*token_mint_address,false),AccountMeta::new_readonly(solana_program::system_program::id(),false),AccountMeta::new_readonly(*token_program_id,false),]", i64 0, i64 0)), !dbg !393
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @accounts, i64 0, i64 0), i8* %14), !dbg !394
  %15 = call i8* @sol.try_to_vec.1(i8* %4), !dbg !395
  %16 = call i8* @sol.unwrap.1(i8* %15), !dbg !396
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @data, i64 0, i64 0), i8* %16), !dbg !397
  %17 = call i8* @sol.model.struct.new.Instruction.3(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @program_id, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @accounts, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @data, i64 0, i64 0)), !dbg !398
  ret i8* %0, !dbg !386
}

define i8* @"instruction::create_associated_token_account.4"(i8* %0, i8* %1, i8* %2, i8* %3) !dbg !399 {
  %5 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @funding_address, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&Pubkey", i64 0, i64 0)), !dbg !400
  %6 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @wallet_address, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&Pubkey", i64 0, i64 0)), !dbg !400
  %7 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @token_mint_address, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&Pubkey", i64 0, i64 0)), !dbg !400
  %8 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @token_program_id, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&Pubkey", i64 0, i64 0)), !dbg !400
  %9 = call i8* @sol.build_associated_token_account_instruction.5(i8* %0, i8* %1, i8* %2, i8* %3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @"AssociatedTokenAccountInstruction::Create", i64 0, i64 0)), !dbg !402
  ret i8* %0, !dbg !400
}

define i8* @"instruction::create_associated_token_account_idempotent.4"(i8* %0, i8* %1, i8* %2, i8* %3) !dbg !403 {
  %5 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @funding_address, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&Pubkey", i64 0, i64 0)), !dbg !404
  %6 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @wallet_address, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&Pubkey", i64 0, i64 0)), !dbg !404
  %7 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @token_mint_address, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&Pubkey", i64 0, i64 0)), !dbg !404
  %8 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @token_program_id, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&Pubkey", i64 0, i64 0)), !dbg !404
  %9 = call i8* @sol.build_associated_token_account_instruction.5(i8* %0, i8* %1, i8* %2, i8* %3, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @"AssociatedTokenAccountInstruction::CreateIdempotent", i64 0, i64 0)), !dbg !406
  ret i8* %0, !dbg !404
}

define i8* @"instruction::recover_nested.4"(i8* %0, i8* %1, i8* %2, i8* %3) !dbg !407 {
  %5 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @wallet_address, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&Pubkey", i64 0, i64 0)), !dbg !408
  %6 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @owner_token_mint_address, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&Pubkey", i64 0, i64 0)), !dbg !408
  %7 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @nested_token_mint_address, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&Pubkey", i64 0, i64 0)), !dbg !408
  %8 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @token_program_id, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&Pubkey", i64 0, i64 0)), !dbg !408
  %9 = call i8* @sol.get_associated_token_address_with_program_id.3(i8* %0, i8* %1, i8* %3), !dbg !410
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @owner_associated_account_address, i64 0, i64 0), i8* %9), !dbg !411
  %10 = call i8* @sol.get_associated_token_address_with_program_id.3(i8* %0, i8* %2, i8* %3), !dbg !412
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @destination_associated_account_address, i64 0, i64 0), i8* %10), !dbg !413
  %11 = call i8* @sol.get_associated_token_address_with_program_id.3(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @owner_associated_account_address, i64 0, i64 0), i8* %2, i8* %3), !dbg !414
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @nested_associated_account_address, i64 0, i64 0), i8* %11), !dbg !415
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @instruction_data, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @"AssociatedTokenAccountInstruction::RecoverNested", i64 0, i64 0)), !dbg !416
  %12 = call i8* @sol.id.0(), !dbg !417
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @program_id, i64 0, i64 0), i8* %12), !dbg !418
  %13 = call i8* @"sol.model.macro.vec.!1"(i8* getelementptr inbounds ([398 x i8], [398 x i8]* @"[AccountMeta::new(nested_associated_account_address,false),AccountMeta::new_readonly(*nested_token_mint_address,false),AccountMeta::new(destination_associated_account_address,false),AccountMeta::new_readonly(owner_associated_account_address,false),AccountMeta::new_readonly(*owner_token_mint_address,false),AccountMeta::new(*wallet_address,true),AccountMeta::new_readonly(*token_program_id,false),]", i64 0, i64 0)), !dbg !419
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @accounts, i64 0, i64 0), i8* %13), !dbg !420
  %14 = call i8* @sol.try_to_vec.1(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @instruction_data, i64 0, i64 0)), !dbg !421
  %15 = call i8* @sol.unwrap.1(i8* %14), !dbg !422
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @data, i64 0, i64 0), i8* %15), !dbg !423
  %16 = call i8* @sol.model.struct.new.Instruction.3(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @program_id, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @accounts, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @data, i64 0, i64 0)), !dbg !424
  ret i8* %0, !dbg !408
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "sol.model.cargo.toml", linkageName: "sol.model.cargo.toml", scope: null, file: !4, type: !5, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!4 = !DIFile(filename: "/solana-cctp-contracts/vendor/spl-associated-token-account/Xargo.toml", directory: "")
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
!18 = distinct !DISubprogram(name: "processor::process_instruction.anon.1", linkageName: "processor::process_instruction.anon.1", scope: null, file: !19, line: 43, type: !5, scopeLine: 43, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!19 = !DIFile(filename: "/solana-cctp-contracts/vendor/spl-associated-token-account/src/processor.rs", directory: "")
!20 = !DILocation(line: 43, column: 42, scope: !21)
!21 = !DILexicalBlockFile(scope: !18, file: !19, discriminator: 0)
!22 = distinct !DISubprogram(name: "processor::process_instruction.anon.2", linkageName: "processor::process_instruction.anon.2", scope: null, file: !19, line: 45, type: !5, scopeLine: 45, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!23 = !DILocation(line: 45, column: 11, scope: !24)
!24 = !DILexicalBlockFile(scope: !22, file: !19, discriminator: 0)
!25 = !DILocation(line: 46, column: 8, scope: !24)
!26 = !DILocation(line: 47, column: 13, scope: !24)
!27 = distinct !DISubprogram(name: "processor::process_instruction.anon.3", linkageName: "processor::process_instruction.anon.3", scope: null, file: !19, line: 59, type: !5, scopeLine: 59, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!28 = !DILocation(line: 59, column: 60, scope: !29)
!29 = !DILexicalBlockFile(scope: !27, file: !19, discriminator: 0)
!30 = !DILocation(line: 60, column: 12, scope: !29)
!31 = distinct !DISubprogram(name: "processor::process_instruction.3", linkageName: "processor::process_instruction.3", scope: null, file: !19, line: 38, type: !5, scopeLine: 38, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!32 = !DILocation(line: 38, column: 4, scope: !33)
!33 = !DILexicalBlockFile(scope: !31, file: !19, discriminator: 0)
!34 = !DILocation(line: 43, column: 31, scope: !33)
!35 = !DILocation(line: 43, column: 22, scope: !33)
!36 = !DILocation(line: 43, column: 42, scope: !33)
!37 = !DILocation(line: 45, column: 11, scope: !33)
!38 = !DILocation(line: 43, column: 4, scope: !33)
!39 = !DILocation(line: 50, column: 4, scope: !33)
!40 = !DILocation(line: 54, column: 12, scope: !33)
!41 = !DILocation(line: 57, column: 12, scope: !33)
!42 = !DILocation(line: 60, column: 12, scope: !33)
!43 = !DILocation(line: 59, column: 60, scope: !33)
!44 = !DILocation(line: 52, column: 4, scope: !33)
!45 = distinct !DISubprogram(name: "processor::process_create_associated_token_account.anon.1", linkageName: "processor::process_create_associated_token_account.anon.1", scope: null, file: !19, line: 87, type: !5, scopeLine: 87, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!46 = !DILocation(line: 87, column: 70, scope: !47)
!47 = !DILexicalBlockFile(scope: !45, file: !19, discriminator: 0)
!48 = !DILocation(line: 88, column: 8, scope: !47)
!49 = !DILocation(line: 89, column: 15, scope: !47)
!50 = !DILocation(line: 89, column: 8, scope: !47)
!51 = distinct !DISubprogram(name: "processor::process_create_associated_token_account.anon.4", linkageName: "processor::process_create_associated_token_account.anon.4", scope: null, file: !19, line: 97, type: !5, scopeLine: 97, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!52 = !DILocation(line: 97, column: 79, scope: !53)
!53 = !DILexicalBlockFile(scope: !51, file: !19, discriminator: 0)
!54 = !DILocation(line: 98, column: 16, scope: !53)
!55 = !DILocation(line: 99, column: 16, scope: !53)
!56 = !DILocation(line: 100, column: 33, scope: !53)
!57 = !DILocation(line: 100, column: 23, scope: !53)
!58 = !DILocation(line: 100, column: 16, scope: !53)
!59 = distinct !DISubprogram(name: "processor::process_create_associated_token_account.anon.5", linkageName: "processor::process_create_associated_token_account.anon.5", scope: null, file: !19, line: 102, type: !5, scopeLine: 102, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!60 = !DILocation(line: 102, column: 78, scope: !61)
!61 = !DILexicalBlockFile(scope: !59, file: !19, discriminator: 0)
!62 = !DILocation(line: 103, column: 23, scope: !61)
!63 = !DILocation(line: 103, column: 16, scope: !61)
!64 = distinct !DISubprogram(name: "processor::process_create_associated_token_account.anon.3", linkageName: "processor::process_create_associated_token_account.anon.3", scope: null, file: !19, line: 96, type: !5, scopeLine: 96, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!65 = !DILocation(line: 96, column: 96, scope: !66)
!66 = !DILexicalBlockFile(scope: !64, file: !19, discriminator: 0)
!67 = !DILocation(line: 97, column: 15, scope: !66)
!68 = !DILocation(line: 97, column: 12, scope: !66)
!69 = !DILocation(line: 97, column: 79, scope: !66)
!70 = !DILocation(line: 102, column: 15, scope: !66)
!71 = !DILocation(line: 102, column: 12, scope: !66)
!72 = !DILocation(line: 102, column: 78, scope: !66)
!73 = !DILocation(line: 105, column: 19, scope: !66)
!74 = !DILocation(line: 105, column: 12, scope: !66)
!75 = distinct !DISubprogram(name: "processor::process_create_associated_token_account.anon.2", linkageName: "processor::process_create_associated_token_account.anon.2", scope: null, file: !19, line: 94, type: !5, scopeLine: 94, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!76 = !DILocation(line: 94, column: 4, scope: !77)
!77 = !DILexicalBlockFile(scope: !75, file: !19, discriminator: 0)
!78 = !DILocation(line: 95, column: 58, scope: !77)
!79 = !DILocation(line: 95, column: 8, scope: !77)
!80 = !DILocation(line: 96, column: 46, scope: !77)
!81 = !DILocation(line: 96, column: 8, scope: !77)
!82 = !DILocation(line: 96, column: 96, scope: !77)
!83 = distinct !DISubprogram(name: "processor::process_create_associated_token_account.anon.6", linkageName: "processor::process_create_associated_token_account.anon.6", scope: null, file: !19, line: 108, type: !5, scopeLine: 108, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!84 = !DILocation(line: 108, column: 68, scope: !85)
!85 = !DILexicalBlockFile(scope: !83, file: !19, discriminator: 0)
!86 = !DILocation(line: 109, column: 15, scope: !85)
!87 = !DILocation(line: 109, column: 8, scope: !85)
!88 = distinct !DISubprogram(name: "processor::process_create_associated_token_account.3", linkageName: "processor::process_create_associated_token_account.3", scope: null, file: !19, line: 66, type: !5, scopeLine: 66, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!89 = !DILocation(line: 66, scope: !90)
!90 = !DILexicalBlockFile(scope: !88, file: !19, discriminator: 0)
!91 = !DILocation(line: 71, column: 42, scope: !90)
!92 = !DILocation(line: 71, column: 4, scope: !90)
!93 = !DILocation(line: 73, column: 22, scope: !90)
!94 = !DILocation(line: 73, column: 4, scope: !90)
!95 = !DILocation(line: 74, column: 40, scope: !90)
!96 = !DILocation(line: 74, column: 4, scope: !90)
!97 = !DILocation(line: 75, column: 30, scope: !90)
!98 = !DILocation(line: 75, column: 4, scope: !90)
!99 = !DILocation(line: 76, column: 30, scope: !90)
!100 = !DILocation(line: 76, column: 4, scope: !90)
!101 = !DILocation(line: 77, column: 30, scope: !90)
!102 = !DILocation(line: 77, column: 4, scope: !90)
!103 = !DILocation(line: 78, column: 33, scope: !90)
!104 = !DILocation(line: 78, column: 4, scope: !90)
!105 = !DILocation(line: 79, column: 4, scope: !90)
!106 = !DILocation(line: 81, column: 48, scope: !90)
!107 = !DILocation(line: 81, column: 4, scope: !90)
!108 = !DILocation(line: 87, column: 7, scope: !90)
!109 = !DILocation(line: 87, column: 4, scope: !90)
!110 = !DILocation(line: 87, column: 70, scope: !90)
!111 = !DILocation(line: 92, column: 7, scope: !90)
!112 = !DILocation(line: 93, column: 11, scope: !90)
!113 = !DILocation(line: 92, column: 4, scope: !90)
!114 = !DILocation(line: 94, column: 4, scope: !90)
!115 = !DILocation(line: 108, column: 47, scope: !90)
!116 = !DILocation(line: 108, column: 7, scope: !90)
!117 = !DILocation(line: 108, column: 4, scope: !90)
!118 = !DILocation(line: 108, column: 68, scope: !90)
!119 = !DILocation(line: 112, column: 15, scope: !90)
!120 = !DILocation(line: 112, column: 4, scope: !90)
!121 = !DILocation(line: 114, column: 4, scope: !90)
!122 = !DILocation(line: 121, column: 22, scope: !90)
!123 = !DILocation(line: 121, column: 4, scope: !90)
!124 = !DILocation(line: 127, column: 4, scope: !90)
!125 = !DILocation(line: 137, column: 4, scope: !90)
!126 = !DILocation(line: 139, column: 9, scope: !90)
!127 = !DILocation(line: 138, column: 4, scope: !90)
!128 = !DILocation(line: 149, column: 9, scope: !90)
!129 = !DILocation(line: 148, column: 4, scope: !90)
!130 = distinct !DISubprogram(name: "processor::process_recover_nested.anon.1", linkageName: "processor::process_recover_nested.anon.1", scope: null, file: !19, line: 185, type: !5, scopeLine: 185, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!131 = !DILocation(line: 185, column: 82, scope: !132)
!132 = !DILexicalBlockFile(scope: !130, file: !19, discriminator: 0)
!133 = !DILocation(line: 186, column: 8, scope: !132)
!134 = !DILocation(line: 187, column: 15, scope: !132)
!135 = !DILocation(line: 187, column: 8, scope: !132)
!136 = distinct !DISubprogram(name: "processor::process_recover_nested.anon.2", linkageName: "processor::process_recover_nested.anon.2", scope: null, file: !19, line: 197, type: !5, scopeLine: 197, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!137 = !DILocation(line: 197, column: 84, scope: !138)
!138 = !DILexicalBlockFile(scope: !136, file: !19, discriminator: 0)
!139 = !DILocation(line: 198, column: 8, scope: !138)
!140 = !DILocation(line: 199, column: 15, scope: !138)
!141 = !DILocation(line: 199, column: 8, scope: !138)
!142 = distinct !DISubprogram(name: "processor::process_recover_nested.anon.3", linkageName: "processor::process_recover_nested.anon.3", scope: null, file: !19, line: 210, type: !5, scopeLine: 210, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!143 = !DILocation(line: 210, column: 94, scope: !144)
!144 = !DILexicalBlockFile(scope: !142, file: !19, discriminator: 0)
!145 = !DILocation(line: 211, column: 8, scope: !144)
!146 = !DILocation(line: 212, column: 15, scope: !144)
!147 = !DILocation(line: 212, column: 8, scope: !144)
!148 = distinct !DISubprogram(name: "processor::process_recover_nested.anon.4", linkageName: "processor::process_recover_nested.anon.4", scope: null, file: !19, line: 215, type: !5, scopeLine: 215, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!149 = !DILocation(line: 215, column: 38, scope: !150)
!150 = !DILexicalBlockFile(scope: !148, file: !19, discriminator: 0)
!151 = !DILocation(line: 216, column: 8, scope: !150)
!152 = !DILocation(line: 217, column: 15, scope: !150)
!153 = !DILocation(line: 217, column: 8, scope: !150)
!154 = distinct !DISubprogram(name: "processor::process_recover_nested.anon.5", linkageName: "processor::process_recover_nested.anon.5", scope: null, file: !19, line: 220, type: !5, scopeLine: 220, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!155 = !DILocation(line: 220, column: 59, scope: !156)
!156 = !DILexicalBlockFile(scope: !154, file: !19, discriminator: 0)
!157 = !DILocation(line: 221, column: 8, scope: !156)
!158 = !DILocation(line: 222, column: 15, scope: !156)
!159 = !DILocation(line: 222, column: 8, scope: !156)
!160 = distinct !DISubprogram(name: "processor::process_recover_nested.anon.7", linkageName: "processor::process_recover_nested.anon.7", scope: null, file: !19, line: 229, type: !5, scopeLine: 229, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!161 = !DILocation(line: 229, column: 77, scope: !162)
!162 = !DILexicalBlockFile(scope: !160, file: !19, discriminator: 0)
!163 = !DILocation(line: 230, column: 12, scope: !162)
!164 = !DILocation(line: 231, column: 19, scope: !162)
!165 = !DILocation(line: 231, column: 12, scope: !162)
!166 = distinct !DISubprogram(name: "processor::process_recover_nested.anon.8", linkageName: "processor::process_recover_nested.anon.8", scope: null, file: !19, line: 235, type: !5, scopeLine: 235, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!167 = !DILocation(line: 235, column: 64, scope: !168)
!168 = !DILexicalBlockFile(scope: !166, file: !19, discriminator: 0)
!169 = !DILocation(line: 236, column: 12, scope: !168)
!170 = !DILocation(line: 237, column: 65, scope: !168)
!171 = !DILocation(line: 237, column: 19, scope: !168)
!172 = !DILocation(line: 237, column: 12, scope: !168)
!173 = distinct !DISubprogram(name: "processor::process_recover_nested.anon.9", linkageName: "processor::process_recover_nested.anon.9", scope: null, file: !19, line: 241, type: !5, scopeLine: 241, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!174 = !DILocation(line: 241, column: 78, scope: !175)
!175 = !DILexicalBlockFile(scope: !173, file: !19, discriminator: 0)
!176 = !DILocation(line: 242, column: 12, scope: !175)
!177 = !DILocation(line: 243, column: 19, scope: !175)
!178 = !DILocation(line: 243, column: 12, scope: !175)
!179 = distinct !DISubprogram(name: "processor::process_recover_nested.anon.10", linkageName: "processor::process_recover_nested.anon.10", scope: null, file: !19, line: 247, type: !5, scopeLine: 247, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!180 = !DILocation(line: 247, column: 81, scope: !181)
!181 = !DILexicalBlockFile(scope: !179, file: !19, discriminator: 0)
!182 = !DILocation(line: 248, column: 12, scope: !181)
!183 = !DILocation(line: 249, column: 65, scope: !181)
!184 = !DILocation(line: 249, column: 19, scope: !181)
!185 = !DILocation(line: 249, column: 12, scope: !181)
!186 = distinct !DISubprogram(name: "processor::process_recover_nested.anon.11", linkageName: "processor::process_recover_nested.anon.11", scope: null, file: !19, line: 254, type: !5, scopeLine: 254, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!187 = !DILocation(line: 254, column: 64, scope: !188)
!188 = !DILexicalBlockFile(scope: !186, file: !19, discriminator: 0)
!189 = !DILocation(line: 255, column: 12, scope: !188)
!190 = !DILocation(line: 256, column: 19, scope: !188)
!191 = !DILocation(line: 256, column: 12, scope: !188)
!192 = distinct !DISubprogram(name: "processor::process_recover_nested.anon.6", linkageName: "processor::process_recover_nested.anon.6", scope: null, file: !19, line: 227, type: !5, scopeLine: 227, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!193 = !DILocation(line: 227, column: 29, scope: !194)
!194 = !DILexicalBlockFile(scope: !192, file: !19, discriminator: 0)
!195 = !DILocation(line: 229, column: 11, scope: !194)
!196 = !DILocation(line: 229, column: 8, scope: !194)
!197 = !DILocation(line: 229, column: 77, scope: !194)
!198 = !DILocation(line: 233, column: 74, scope: !194)
!199 = !DILocation(line: 233, column: 8, scope: !194)
!200 = !DILocation(line: 234, column: 28, scope: !194)
!201 = !DILocation(line: 234, column: 8, scope: !194)
!202 = !DILocation(line: 235, column: 11, scope: !194)
!203 = !DILocation(line: 235, column: 8, scope: !194)
!204 = !DILocation(line: 235, column: 64, scope: !194)
!205 = !DILocation(line: 241, column: 11, scope: !194)
!206 = !DILocation(line: 241, column: 8, scope: !194)
!207 = !DILocation(line: 241, column: 78, scope: !194)
!208 = !DILocation(line: 245, column: 76, scope: !194)
!209 = !DILocation(line: 245, column: 8, scope: !194)
!210 = !DILocation(line: 246, column: 29, scope: !194)
!211 = !DILocation(line: 246, column: 8, scope: !194)
!212 = !DILocation(line: 247, column: 11, scope: !194)
!213 = !DILocation(line: 247, column: 8, scope: !194)
!214 = !DILocation(line: 247, column: 81, scope: !194)
!215 = !DILocation(line: 251, column: 8, scope: !194)
!216 = !DILocation(line: 254, column: 11, scope: !194)
!217 = !DILocation(line: 254, column: 8, scope: !194)
!218 = !DILocation(line: 254, column: 64, scope: !194)
!219 = !DILocation(line: 258, column: 59, scope: !194)
!220 = !DILocation(line: 258, column: 8, scope: !194)
!221 = !DILocation(line: 259, column: 26, scope: !194)
!222 = !DILocation(line: 259, column: 8, scope: !194)
!223 = !DILocation(line: 260, column: 8, scope: !194)
!224 = distinct !DISubprogram(name: "processor::process_recover_nested.2", linkageName: "processor::process_recover_nested.2", scope: null, file: !19, line: 165, type: !5, scopeLine: 165, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!225 = !DILocation(line: 165, column: 4, scope: !226)
!226 = !DILexicalBlockFile(scope: !224, file: !19, discriminator: 0)
!227 = !DILocation(line: 166, column: 42, scope: !226)
!228 = !DILocation(line: 166, column: 4, scope: !226)
!229 = !DILocation(line: 168, column: 47, scope: !226)
!230 = !DILocation(line: 168, column: 4, scope: !226)
!231 = !DILocation(line: 169, column: 33, scope: !226)
!232 = !DILocation(line: 169, column: 4, scope: !226)
!233 = !DILocation(line: 170, column: 52, scope: !226)
!234 = !DILocation(line: 170, column: 4, scope: !226)
!235 = !DILocation(line: 171, column: 46, scope: !226)
!236 = !DILocation(line: 171, column: 4, scope: !226)
!237 = !DILocation(line: 172, column: 32, scope: !226)
!238 = !DILocation(line: 172, column: 4, scope: !226)
!239 = !DILocation(line: 173, column: 30, scope: !226)
!240 = !DILocation(line: 173, column: 4, scope: !226)
!241 = !DILocation(line: 174, column: 33, scope: !226)
!242 = !DILocation(line: 174, column: 4, scope: !226)
!243 = !DILocation(line: 175, column: 4, scope: !226)
!244 = !DILocation(line: 179, column: 8, scope: !226)
!245 = !DILocation(line: 178, column: 4, scope: !226)
!246 = !DILocation(line: 185, column: 7, scope: !226)
!247 = !DILocation(line: 185, column: 4, scope: !226)
!248 = !DILocation(line: 185, column: 82, scope: !226)
!249 = !DILocation(line: 191, column: 47, scope: !226)
!250 = !DILocation(line: 191, column: 4, scope: !226)
!251 = !DILocation(line: 197, column: 7, scope: !226)
!252 = !DILocation(line: 197, column: 4, scope: !226)
!253 = !DILocation(line: 197, column: 84, scope: !226)
!254 = !DILocation(line: 204, column: 8, scope: !226)
!255 = !DILocation(line: 203, column: 4, scope: !226)
!256 = !DILocation(line: 210, column: 7, scope: !226)
!257 = !DILocation(line: 210, column: 4, scope: !226)
!258 = !DILocation(line: 210, column: 94, scope: !226)
!259 = !DILocation(line: 215, column: 7, scope: !226)
!260 = !DILocation(line: 215, column: 4, scope: !226)
!261 = !DILocation(line: 215, column: 38, scope: !226)
!262 = !DILocation(line: 220, column: 7, scope: !226)
!263 = !DILocation(line: 220, column: 4, scope: !226)
!264 = !DILocation(line: 220, column: 59, scope: !226)
!265 = !DILocation(line: 227, column: 29, scope: !226)
!266 = !DILocation(line: 227, column: 4, scope: !226)
!267 = !DILocation(line: 265, column: 4, scope: !226)
!268 = !DILocation(line: 272, column: 9, scope: !226)
!269 = !DILocation(line: 271, column: 4, scope: !226)
!270 = !DILocation(line: 294, column: 9, scope: !226)
!271 = !DILocation(line: 293, column: 4, scope: !226)
!272 = distinct !DISubprogram(name: "main", linkageName: "main", scope: null, file: !273, line: 9, type: !5, scopeLine: 9, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!273 = !DIFile(filename: "/solana-cctp-contracts/vendor/spl-associated-token-account/src/entrypoint.rs", directory: "")
!274 = !DILocation(line: 9, scope: !275)
!275 = !DILexicalBlockFile(scope: !272, file: !273, discriminator: 0)
!276 = distinct !DISubprogram(name: "entrypoint::process_instruction.3", linkageName: "entrypoint::process_instruction.3", scope: null, file: !273, line: 10, type: !5, scopeLine: 10, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!277 = !DILocation(line: 10, scope: !278)
!278 = !DILexicalBlockFile(scope: !276, file: !273, discriminator: 0)
!279 = !DILocation(line: 15, column: 4, scope: !278)
!280 = distinct !DISubprogram(name: "account::create_pda_account.anon.2", linkageName: "account::create_pda_account.anon.2", scope: null, file: !281, line: 33, type: !5, scopeLine: 33, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!281 = !DIFile(filename: "/solana-cctp-contracts/vendor/spl-associated-token-account/src/tools/account.rs", directory: "")
!282 = !DILocation(line: 33, column: 33, scope: !283)
!283 = !DILexicalBlockFile(scope: !280, file: !281, discriminator: 0)
!284 = !DILocation(line: 35, column: 17, scope: !283)
!285 = !DILocation(line: 34, column: 12, scope: !283)
!286 = distinct !DISubprogram(name: "account::create_pda_account.anon.1", linkageName: "account::create_pda_account.anon.1", scope: null, file: !281, line: 27, type: !5, scopeLine: 27, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!287 = !DILocation(line: 27, column: 38, scope: !288)
!288 = !DILexicalBlockFile(scope: !286, file: !281, discriminator: 0)
!289 = !DILocation(line: 29, column: 13, scope: !288)
!290 = !DILocation(line: 30, column: 13, scope: !288)
!291 = !DILocation(line: 31, column: 44, scope: !288)
!292 = !DILocation(line: 31, column: 13, scope: !288)
!293 = !DILocation(line: 28, column: 8, scope: !288)
!294 = !DILocation(line: 33, column: 11, scope: !288)
!295 = !DILocation(line: 33, column: 8, scope: !288)
!296 = !DILocation(line: 33, column: 33, scope: !288)
!297 = !DILocation(line: 45, column: 63, scope: !288)
!298 = !DILocation(line: 45, column: 13, scope: !288)
!299 = !DILocation(line: 44, column: 8, scope: !288)
!300 = !DILocation(line: 51, column: 13, scope: !288)
!301 = !DILocation(line: 50, column: 8, scope: !288)
!302 = distinct !DISubprogram(name: "account::create_pda_account.anon.3", linkageName: "account::create_pda_account.anon.3", scope: null, file: !281, line: 55, type: !5, scopeLine: 55, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!303 = !DILocation(line: 55, column: 11, scope: !304)
!304 = !DILexicalBlockFile(scope: !302, file: !281, discriminator: 0)
!305 = !DILocation(line: 60, column: 21, scope: !304)
!306 = !DILocation(line: 60, column: 44, scope: !304)
!307 = !DILocation(line: 61, column: 16, scope: !304)
!308 = !DILocation(line: 57, column: 13, scope: !304)
!309 = !DILocation(line: 56, column: 8, scope: !304)
!310 = distinct !DISubprogram(name: "account::create_pda_account.7", linkageName: "account::create_pda_account.7", scope: null, file: !281, line: 18, type: !5, scopeLine: 18, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!311 = !DILocation(line: 18, column: 4, scope: !312)
!312 = !DILexicalBlockFile(scope: !310, file: !281, discriminator: 0)
!313 = !DILocation(line: 27, column: 23, scope: !312)
!314 = !DILocation(line: 27, column: 7, scope: !312)
!315 = !DILocation(line: 27, column: 4, scope: !312)
!316 = !DILocation(line: 27, column: 38, scope: !312)
!317 = !DILocation(line: 55, column: 11, scope: !312)
!318 = distinct !DISubprogram(name: "account::get_account_len.anon.2", linkageName: "account::get_account_len.anon.2", scope: null, file: !281, line: 92, type: !5, scopeLine: 92, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!319 = !DILocation(line: 92, column: 45, scope: !320)
!320 = !DILexicalBlockFile(scope: !318, file: !281, discriminator: 0)
!321 = !DILocation(line: 93, column: 23, scope: !320)
!322 = !DILocation(line: 93, column: 16, scope: !320)
!323 = distinct !DISubprogram(name: "account::get_account_len.anon.1", linkageName: "account::get_account_len.anon.1", scope: null, file: !281, line: 91, type: !5, scopeLine: 91, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!324 = !DILocation(line: 91, column: 32, scope: !325)
!325 = !DILexicalBlockFile(scope: !323, file: !281, discriminator: 0)
!326 = !DILocation(line: 92, column: 15, scope: !325)
!327 = !DILocation(line: 92, column: 12, scope: !325)
!328 = !DILocation(line: 92, column: 45, scope: !325)
!329 = !DILocation(line: 95, column: 17, scope: !325)
!330 = !DILocation(line: 96, column: 17, scope: !325)
!331 = !DILocation(line: 97, column: 17, scope: !325)
!332 = distinct !DISubprogram(name: "account::get_account_len.3", linkageName: "account::get_account_len.3", scope: null, file: !281, line: 76, type: !5, scopeLine: 76, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!333 = !DILocation(line: 76, column: 4, scope: !334)
!334 = !DILexicalBlockFile(scope: !332, file: !281, discriminator: 0)
!335 = !DILocation(line: 82, column: 9, scope: !334)
!336 = !DILocation(line: 81, column: 4, scope: !334)
!337 = !DILocation(line: 89, column: 4, scope: !334)
!338 = !DILocation(line: 90, column: 9, scope: !334)
!339 = !DILocation(line: 95, column: 17, scope: !334)
!340 = !DILocation(line: 96, column: 17, scope: !334)
!341 = !DILocation(line: 97, column: 17, scope: !334)
!342 = !DILocation(line: 91, column: 32, scope: !334)
!343 = !DILocation(line: 91, column: 9, scope: !334)
!344 = distinct !DISubprogram(name: "error::ProgramError::from.1", linkageName: "error::ProgramError::from.1", scope: null, file: !345, line: 18, type: !5, scopeLine: 18, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!345 = !DIFile(filename: "/solana-cctp-contracts/vendor/spl-associated-token-account/src/error.rs", directory: "")
!346 = !DILocation(line: 18, column: 4, scope: !347)
!347 = !DILexicalBlockFile(scope: !344, file: !345, discriminator: 0)
!348 = !DILocation(line: 19, column: 29, scope: !347)
!349 = !DILocation(line: 19, column: 8, scope: !347)
!350 = distinct !DISubprogram(name: "error::AssociatedTokenAccountError::type_of.0", linkageName: "error::AssociatedTokenAccountError::type_of.0", scope: null, file: !345, line: 23, type: !5, scopeLine: 23, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!351 = !DILocation(line: 23, column: 4, scope: !352)
!352 = !DILexicalBlockFile(scope: !350, file: !345, discriminator: 0)
!353 = distinct !DISubprogram(name: "lib::get_associated_token_address_and_bump_seed.4", linkageName: "lib::get_associated_token_address_and_bump_seed.4", scope: null, file: !354, line: 21, type: !5, scopeLine: 21, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!354 = !DIFile(filename: "/solana-cctp-contracts/vendor/spl-associated-token-account/src/lib.rs", directory: "")
!355 = !DILocation(line: 21, column: 11, scope: !356)
!356 = !DILexicalBlockFile(scope: !353, file: !354, discriminator: 0)
!357 = !DILocation(line: 27, column: 4, scope: !356)
!358 = distinct !DISubprogram(name: "lib::get_associated_token_address.2", linkageName: "lib::get_associated_token_address.2", scope: null, file: !354, line: 36, type: !5, scopeLine: 36, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!359 = !DILocation(line: 36, column: 4, scope: !360)
!360 = !DILexicalBlockFile(scope: !358, file: !354, discriminator: 0)
!361 = !DILocation(line: 43, column: 9, scope: !360)
!362 = !DILocation(line: 40, column: 4, scope: !360)
!363 = distinct !DISubprogram(name: "lib::get_associated_token_address_with_program_id.3", linkageName: "lib::get_associated_token_address_with_program_id.3", scope: null, file: !354, line: 48, type: !5, scopeLine: 48, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!364 = !DILocation(line: 48, column: 4, scope: !365)
!365 = !DILexicalBlockFile(scope: !363, file: !354, discriminator: 0)
!366 = !DILocation(line: 56, column: 9, scope: !365)
!367 = !DILocation(line: 53, column: 4, scope: !365)
!368 = distinct !DISubprogram(name: "lib::get_associated_token_address_and_bump_seed_internal.4", linkageName: "lib::get_associated_token_address_and_bump_seed_internal.4", scope: null, file: !354, line: 62, type: !5, scopeLine: 62, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!369 = !DILocation(line: 62, scope: !370)
!370 = !DILexicalBlockFile(scope: !368, file: !354, discriminator: 0)
!371 = !DILocation(line: 68, column: 4, scope: !370)
!372 = distinct !DISubprogram(name: "lib::create_associated_token_account.3", linkageName: "lib::create_associated_token_account.3", scope: null, file: !354, line: 93, type: !5, scopeLine: 93, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!373 = !DILocation(line: 93, column: 4, scope: !374)
!374 = !DILexicalBlockFile(scope: !372, file: !354, discriminator: 0)
!375 = !DILocation(line: 99, column: 8, scope: !374)
!376 = !DILocation(line: 98, column: 4, scope: !374)
!377 = !DILocation(line: 102, column: 20, scope: !374)
!378 = !DILocation(line: 102, column: 8, scope: !374)
!379 = !DILocation(line: 103, column: 18, scope: !374)
!380 = !DILocation(line: 103, column: 8, scope: !374)
!381 = !DILocation(line: 112, column: 14, scope: !374)
!382 = !DILocation(line: 112, column: 8, scope: !374)
!383 = !DILocation(line: 101, column: 4, scope: !374)
!384 = distinct !DISubprogram(name: "instruction::build_associated_token_account_instruction.5", linkageName: "instruction::build_associated_token_account_instruction.5", scope: null, file: !385, line: 58, type: !5, scopeLine: 58, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!385 = !DIFile(filename: "/solana-cctp-contracts/vendor/spl-associated-token-account/src/instruction.rs", directory: "")
!386 = !DILocation(line: 58, scope: !387)
!387 = !DILexicalBlockFile(scope: !384, file: !385, discriminator: 0)
!388 = !DILocation(line: 65, column: 37, scope: !387)
!389 = !DILocation(line: 65, column: 4, scope: !387)
!390 = !DILocation(line: 71, column: 4, scope: !387)
!391 = !DILocation(line: 77, column: 20, scope: !387)
!392 = !DILocation(line: 77, column: 8, scope: !387)
!393 = !DILocation(line: 78, column: 18, scope: !387)
!394 = !DILocation(line: 78, column: 8, scope: !387)
!395 = !DILocation(line: 86, column: 26, scope: !387)
!396 = !DILocation(line: 86, column: 39, scope: !387)
!397 = !DILocation(line: 86, column: 8, scope: !387)
!398 = !DILocation(line: 76, column: 4, scope: !387)
!399 = distinct !DISubprogram(name: "instruction::create_associated_token_account.4", linkageName: "instruction::create_associated_token_account.4", scope: null, file: !385, line: 91, type: !5, scopeLine: 91, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!400 = !DILocation(line: 91, column: 4, scope: !401)
!401 = !DILexicalBlockFile(scope: !399, file: !385, discriminator: 0)
!402 = !DILocation(line: 97, column: 4, scope: !401)
!403 = distinct !DISubprogram(name: "instruction::create_associated_token_account_idempotent.4", linkageName: "instruction::create_associated_token_account_idempotent.4", scope: null, file: !385, line: 107, type: !5, scopeLine: 107, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!404 = !DILocation(line: 107, column: 4, scope: !405)
!405 = !DILexicalBlockFile(scope: !403, file: !385, discriminator: 0)
!406 = !DILocation(line: 113, column: 4, scope: !405)
!407 = distinct !DISubprogram(name: "instruction::recover_nested.4", linkageName: "instruction::recover_nested.4", scope: null, file: !385, line: 123, type: !5, scopeLine: 123, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!408 = !DILocation(line: 123, column: 4, scope: !409)
!409 = !DILexicalBlockFile(scope: !407, file: !385, discriminator: 0)
!410 = !DILocation(line: 129, column: 43, scope: !409)
!411 = !DILocation(line: 129, column: 4, scope: !409)
!412 = !DILocation(line: 134, column: 49, scope: !409)
!413 = !DILocation(line: 134, column: 4, scope: !409)
!414 = !DILocation(line: 139, column: 44, scope: !409)
!415 = !DILocation(line: 139, column: 4, scope: !409)
!416 = !DILocation(line: 145, column: 4, scope: !409)
!417 = !DILocation(line: 148, column: 20, scope: !409)
!418 = !DILocation(line: 148, column: 8, scope: !409)
!419 = !DILocation(line: 149, column: 18, scope: !409)
!420 = !DILocation(line: 149, column: 8, scope: !409)
!421 = !DILocation(line: 158, column: 31, scope: !409)
!422 = !DILocation(line: 158, column: 44, scope: !409)
!423 = !DILocation(line: 158, column: 8, scope: !409)
!424 = !DILocation(line: 147, column: 4, scope: !409)
