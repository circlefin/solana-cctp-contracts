; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

@self.mint = internal constant [9 x i8] c"self.mint"
@self.custody = internal constant [12 x i8] c"self.custody"
@self.local_token = internal constant [16 x i8] c"self.local_token"
@self.remote_token = internal constant [17 x i8] c"self.remote_token"
@cpi_context = internal constant [11 x i8] c"cpi_context"
@destination = internal constant [11 x i8] c"destination"
@account = internal constant [7 x i8] c"account"
@token_account = internal constant [13 x i8] c"token_account"
@receiver = internal constant [8 x i8] c"receiver"
@"[&[b\22token_minter\22,&[self.bump]]]" = internal constant [33 x i8] c"[&[b\22token_minter\22,&[self.bump]]]"
@local_token.amount_received = internal constant [27 x i8] c"local_token.amount_received"
@local_token.messages_received = internal constant [29 x i8] c"local_token.messages_received"
@to = internal constant [2 x i8] c"to"
@local_token.amount_sent = internal constant [23 x i8] c"local_token.amount_sent"
@"1" = internal constant [1 x i8] c"1"
@local_token.messages_sent = internal constant [25 x i8] c"local_token.messages_sent"
@"amount,TokenMinterError::BurnAmountExceeded" = internal constant [43 x i8] c"amount,TokenMinterError::BurnAmountExceeded"
@"TokenMinterError::ProgramPaused" = internal constant [31 x i8] c"TokenMinterError::ProgramPaused"
@"!self.paused" = internal constant [12 x i8] c"!self.paused"
@"&mutLocalToken" = internal constant [14 x i8] c"&mutLocalToken"
@self.pauser = internal constant [11 x i8] c"self.pauser"
@self.token_controller = internal constant [21 x i8] c"self.token_controller"
@custody_bump = internal constant [12 x i8] c"custody_bump"
@amount_received = internal constant [15 x i8] c"amount_received"
@u128 = internal constant [4 x i8] c"u128"
@amount_sent = internal constant [11 x i8] c"amount_sent"
@messages_received = internal constant [17 x i8] c"messages_received"
@messages_sent = internal constant [13 x i8] c"messages_sent"
@custody = internal constant [7 x i8] c"custody"
@bump = internal constant [4 x i8] c"bump"
@bool = internal constant [4 x i8] c"bool"
@paused = internal constant [6 x i8] c"paused"
@"Pause{}" = internal constant [7 x i8] c"Pause{}"
@true = internal constant [4 x i8] c"true"
@"&PauseParams" = internal constant [12 x i8] c"&PauseParams"
@"amount:burn_amount,}" = internal constant [20 x i8] c"amount:burn_amount,}"
@"TokenCustodyBurned{custody_token_account:ctx.accounts.custody_token_account.key()" = internal constant [81 x i8] c"TokenCustodyBurned{custody_token_account:ctx.accounts.custody_token_account.key()"
@context = internal constant [7 x i8] c"context"
@from = internal constant [4 x i8] c"from"
@mint = internal constant [4 x i8] c"mint"
@ctx.accounts.custody_token_mint = internal constant [31 x i8] c"ctx.accounts.custody_token_mint"
@"[&[b\22token_minter\22,&[ctx.accounts.token_minter.bump]]]" = internal constant [54 x i8] c"[&[b\22token_minter\22,&[ctx.accounts.token_minter.bump]]]"
@"0,TokenMinterError::InvalidAmount" = internal constant [33 x i8] c"0,TokenMinterError::InvalidAmount"
@burn_amount = internal constant [11 x i8] c"burn_amount"
@"&BurnTokenCustodyParams" = internal constant [23 x i8] c"&BurnTokenCustodyParams"
@ctx.accounts.custody_token_account.amount = internal constant [41 x i8] c"ctx.accounts.custody_token_account.amount"
@custody_token_mint = internal constant [18 x i8] c"custody_token_mint"
@"mut,constraint=custody_token_account.mint==custody_token_mint.key()" = internal constant [67 x i8] c"mut,constraint=custody_token_account.mint==custody_token_mint.key()"
@"seeds=[b\22local_token\22,local_token.mint.key().as_ref()],bump=local_token.bump" = internal constant [76 x i8] c"seeds=[b\22local_token\22,local_token.mint.key().as_ref()],bump=local_token.bump"
@"burn_limit_per_message:local_token.burn_limit_per_message}" = internal constant [58 x i8] c"burn_limit_per_message:local_token.burn_limit_per_message}"
@"SetBurnLimitPerMessage{token:local_token.mint" = internal constant [45 x i8] c"SetBurnLimitPerMessage{token:local_token.mint"
@local_token.burn_limit_per_message = internal constant [34 x i8] c"local_token.burn_limit_per_message"
@params.burn_limit_per_message = internal constant [29 x i8] c"params.burn_limit_per_message"
@"&SetMaxBurnAmountPerMessageParams" = internal constant [33 x i8] c"&SetMaxBurnAmountPerMessageParams"
@burn_limit_per_message = internal constant [22 x i8] c"burn_limit_per_message"
@"mut,seeds=[b\22local_token\22,local_token.mint.as_ref(),],bump=local_token.bump," = internal constant [76 x i8] c"mut,seeds=[b\22local_token\22,local_token.mint.as_ref(),],bump=local_token.bump,"
@"has_one=token_controller@TokenMinterError::InvalidAuthority" = internal constant [59 x i8] c"has_one=token_controller@TokenMinterError::InvalidAuthority"
@"remote_domain:params.remote_domain,remote_token:params.remote_token}" = internal constant [68 x i8] c"remote_domain:params.remote_domain,remote_token:params.remote_token}"
@"TokenPairLinked{local_token:params.local_token" = internal constant [46 x i8] c"TokenPairLinked{local_token:params.local_token"
@"TokenMinterError::InvalidTokenPairState" = internal constant [39 x i8] c"TokenMinterError::InvalidTokenPairState"
@"token_pair.validate()" = internal constant [21 x i8] c"token_pair.validate()"
@token_pair.bump = internal constant [15 x i8] c"token_pair.bump"
@"\22token_pair\22" = internal constant [12 x i8] c"\22token_pair\22"
@token_pair.local_token = internal constant [22 x i8] c"token_pair.local_token"
@params.local_token = internal constant [18 x i8] c"params.local_token"
@token_pair.remote_token = internal constant [23 x i8] c"token_pair.remote_token"
@params.remote_token = internal constant [19 x i8] c"params.remote_token"
@token_pair.remote_domain = internal constant [24 x i8] c"token_pair.remote_domain"
@params.remote_domain = internal constant [20 x i8] c"params.remote_domain"
@"&LinkTokenPairParams" = internal constant [20 x i8] c"&LinkTokenPairParams"
@remote_token = internal constant [12 x i8] c"remote_token"
@"init,payer=payer,space=utils::DISCRIMINATOR_SIZE+TokenPair::INIT_SPACE,seeds=[b\22token_pair\22,params.remote_domain.to_string().as_bytes(),params.remote_token.as_ref()],bump" = internal constant [170 x i8] c"init,payer=payer,space=utils::DISCRIMINATOR_SIZE+TokenPair::INIT_SPACE,seeds=[b\22token_pair\22,params.remote_domain.to_string().as_bytes(),params.remote_token.as_ref()],bump"
@"LocalTokenAdded{custody:local_token.custody" = internal constant [43 x i8] c"LocalTokenAdded{custody:local_token.custody"
@"TokenMinterError::InvalidLocalTokenState" = internal constant [40 x i8] c"TokenMinterError::InvalidLocalTokenState"
@"local_token.validate()" = internal constant [22 x i8] c"local_token.validate()"
@local_token.custody_bump = internal constant [24 x i8] c"local_token.custody_bump"
@"\22custody_token_account\22" = internal constant [23 x i8] c"\22custody_token_account\22"
@local_token.bump = internal constant [16 x i8] c"local_token.bump"
@"\22local_token\22" = internal constant [13 x i8] c"\22local_token\22"
@local_token.mint = internal constant [16 x i8] c"local_token.mint"
@ctx.accounts.local_token_mint = internal constant [29 x i8] c"ctx.accounts.local_token_mint"
@local_token.custody = internal constant [19 x i8] c"local_token.custody"
@"&AddLocalTokenParams" = internal constant [20 x i8] c"&AddLocalTokenParams"
@local_token_mint = internal constant [16 x i8] c"local_token_mint"
@"init,payer=payer,token::mint=local_token_mint,token::authority=token_minter,seeds=[b\22custody\22,local_token_mint.key().as_ref()],bump" = internal constant [131 x i8] c"init,payer=payer,token::mint=local_token_mint,token::authority=token_minter,seeds=[b\22custody\22,local_token_mint.key().as_ref()],bump"
@"init,payer=payer,space=utils::DISCRIMINATOR_SIZE+LocalToken::INIT_SPACE,seeds=[b\22local_token\22,local_token_mint.key().as_ref()],bump" = internal constant [131 x i8] c"init,payer=payer,space=utils::DISCRIMINATOR_SIZE+LocalToken::INIT_SPACE,seeds=[b\22local_token\22,local_token_mint.key().as_ref()],bump"
@"remote_domain:token_pair.remote_domain,remote_token:token_pair.remote_token}" = internal constant [76 x i8] c"remote_domain:token_pair.remote_domain,remote_token:token_pair.remote_token}"
@"TokenPairUnlinked{local_token:token_pair.local_token" = internal constant [52 x i8] c"TokenPairUnlinked{local_token:token_pair.local_token"
@ctx.accounts.token_pair = internal constant [23 x i8] c"ctx.accounts.token_pair"
@"&UninkTokenPairParams" = internal constant [21 x i8] c"&UninkTokenPairParams"
@"mut,seeds=[b\22token_pair\22,token_pair.remote_domain.to_string().as_bytes(),token_pair.remote_token.as_ref()],bump=token_pair.bump,close=payee" = internal constant [139 x i8] c"mut,seeds=[b\22token_pair\22,token_pair.remote_domain.to_string().as_bytes(),token_pair.remote_token.as_ref()],bump=token_pair.bump,close=payee"
@"Unpause{}" = internal constant [9 x i8] c"Unpause{}"
@ctx.accounts.token_minter.paused = internal constant [32 x i8] c"ctx.accounts.token_minter.paused"
@"&UnpauseParams" = internal constant [14 x i8] c"&UnpauseParams"
@"mut,has_one=pauser@TokenMinterError::InvalidAuthority" = internal constant [53 x i8] c"mut,has_one=pauser@TokenMinterError::InvalidAuthority"
@pauser = internal constant [6 x i8] c"pauser"
@"PauserChanged{new_address:ctx.accounts.token_minter.pauser}" = internal constant [59 x i8] c"PauserChanged{new_address:ctx.accounts.token_minter.pauser}"
@ctx.accounts.token_minter.pauser = internal constant [32 x i8] c"ctx.accounts.token_minter.pauser"
@"TokenMinterError::InvalidPauser" = internal constant [31 x i8] c"TokenMinterError::InvalidPauser"
@params.new_pauser = internal constant [17 x i8] c"params.new_pauser"
@"&UpdatePauserParams" = internal constant [19 x i8] c"&UpdatePauserParams"
@new_pauser = internal constant [10 x i8] c"new_pauser"
@"mint:local_token.mint,}" = internal constant [23 x i8] c"mint:local_token.mint,}"
@"LocalTokenRemoved{custody:local_token.custody" = internal constant [45 x i8] c"LocalTokenRemoved{custody:local_token.custody"
@ctx.accounts.payee = internal constant [18 x i8] c"ctx.accounts.payee"
@"&RemoveLocalTokenParams" = internal constant [23 x i8] c"&RemoveLocalTokenParams"
@"mut,seeds=[b\22custody\22,local_token.mint.as_ref()],bump=local_token.custody_bump," = internal constant [79 x i8] c"mut,seeds=[b\22custody\22,local_token.mint.as_ref()],bump=local_token.custody_bump,"
@"mut,seeds=[b\22local_token\22,local_token.mint.as_ref(),],bump=local_token.bump,close=payee" = internal constant [87 x i8] c"mut,seeds=[b\22local_token\22,local_token.mint.as_ref(),],bump=local_token.bump,close=payee"
@"has_one=token_controller@TokenMinterError::InvalidAuthority," = internal constant [60 x i8] c"has_one=token_controller@TokenMinterError::InvalidAuthority,"
@"SetTokenController{token_controller:ctx.accounts.token_minter.token_controller}" = internal constant [79 x i8] c"SetTokenController{token_controller:ctx.accounts.token_minter.token_controller}"
@ctx.accounts.token_minter.token_controller = internal constant [42 x i8] c"ctx.accounts.token_minter.token_controller"
@"TokenMinterError::InvalidTokenController" = internal constant [40 x i8] c"TokenMinterError::InvalidTokenController"
@"&SetTokenControllerParams" = internal constant [25 x i8] c"&SetTokenControllerParams"
@self.data = internal constant [9 x i8] c"self.data"
@usize = internal constant [5 x i8] c"usize"
@index = internal constant [5 x i8] c"index"
@"Self::MSG_SENDER_INDEX" = internal constant [22 x i8] c"Self::MSG_SENDER_INDEX"
@"Self::AMOUNT_OFFSET" = internal constant [19 x i8] c"Self::AMOUNT_OFFSET"
@"Self::AMOUNT_INDEX" = internal constant [18 x i8] c"Self::AMOUNT_INDEX"
@"TokenMessengerError::MalformedMessage" = internal constant [37 x i8] c"TokenMessengerError::MalformedMessage"
@"self.data[Self::AMOUNT_INDEX..(Self::AMOUNT_INDEX+Self::AMOUNT_OFFSET)].iter().all(|&x|x==0)" = internal constant [92 x i8] c"self.data[Self::AMOUNT_INDEX..(Self::AMOUNT_INDEX+Self::AMOUNT_OFFSET)].iter().all(|&x|x==0)"
@"Self::MINT_RECIPIENT_INDEX" = internal constant [26 x i8] c"Self::MINT_RECIPIENT_INDEX"
@"Self::BURN_TOKEN_INDEX" = internal constant [22 x i8] c"Self::BURN_TOKEN_INDEX"
@"Self::VERSION_INDEX" = internal constant [19 x i8] c"Self::VERSION_INDEX"
@self = internal constant [4 x i8] c"self"
@output = internal constant [6 x i8] c"output"
@"[0;Self::BURN_MESSAGE_LEN]" = internal constant [26 x i8] c"[0;Self::BURN_MESSAGE_LEN]"
@message_sender = internal constant [14 x i8] c"message_sender"
@version = internal constant [7 x i8] c"version"
@"TokenMessengerError::InvalidMessageBodyVersion" = internal constant [46 x i8] c"TokenMessengerError::InvalidMessageBodyVersion"
@"message.version()?" = internal constant [18 x i8] c"message.version()?"
@"Self::BURN_MESSAGE_LEN,TokenMessengerError::MalformedMessage" = internal constant [60 x i8] c"Self::BURN_MESSAGE_LEN,TokenMessengerError::MalformedMessage"
@"message_bytes.len()" = internal constant [19 x i8] c"message_bytes.len()"
@message_bytes = internal constant [13 x i8] c"message_bytes"
@expected_version = internal constant [16 x i8] c"expected_version"
@"&'a[u8]" = internal constant [7 x i8] c"&'a[u8]"
@data = internal constant [4 x i8] c"data"
@self.token_messenger = internal constant [20 x i8] c"self.token_messenger"
@self.local_message_transmitter = internal constant [30 x i8] c"self.local_message_transmitter"
@self.owner = internal constant [10 x i8] c"self.owner"
@"&self" = internal constant [5 x i8] c"&self"
@"new_owner:token_messenger.owner}" = internal constant [32 x i8] c"new_owner:token_messenger.owner}"
@"OwnershipTransferred{previous_owner" = internal constant [35 x i8] c"OwnershipTransferred{previous_owner"
@previous_owner = internal constant [14 x i8] c"previous_owner"
@"&AcceptOwnershipParams" = internal constant [22 x i8] c"&AcceptOwnershipParams"
@"mut,has_one=pending_owner@TokenMessengerError::InvalidAuthority" = internal constant [63 x i8] c"mut,has_one=pending_owner@TokenMessengerError::InvalidAuthority"
@pending_owner = internal constant [13 x i8] c"pending_owner"
@"token_messenger:ctx.accounts.remote_token_messenger.token_messenger}" = internal constant [68 x i8] c"token_messenger:ctx.accounts.remote_token_messenger.token_messenger}"
@"RemoteTokenMessengerRemoved{domain:ctx.accounts.remote_token_messenger.domain" = internal constant [77 x i8] c"RemoteTokenMessengerRemoved{domain:ctx.accounts.remote_token_messenger.domain"
@"&RemoveRemoteTokenMessengerParams" = internal constant [33 x i8] c"&RemoveRemoteTokenMessengerParams"
@_params = internal constant [7 x i8] c"_params"
@"mut,seeds=[b\22remote_token_messenger\22,remote_token_messenger.domain.to_string().as_bytes(),],bump,close=payee" = internal constant [108 x i8] c"mut,seeds=[b\22remote_token_messenger\22,remote_token_messenger.domain.to_string().as_bytes(),],bump,close=payee"
@payee = internal constant [5 x i8] c"payee"
@"amount,mint_token:ctx.accounts.local_token.mint}" = internal constant [48 x i8] c"amount,mint_token:ctx.accounts.local_token.mint}"
@"MintAndWithdraw{mint_recipient" = internal constant [30 x i8] c"MintAndWithdraw{mint_recipient"
@ctx.accounts.recipient_token_account = internal constant [36 x i8] c"ctx.accounts.recipient_token_account"
@ctx.accounts.custody_token_account = internal constant [34 x i8] c"ctx.accounts.custody_token_account"
@"mint_recipient,TokenMessengerError::InvalidMintRecipient" = internal constant [56 x i8] c"mint_recipient,TokenMessengerError::InvalidMintRecipient"
@"ctx.accounts.recipient_token_account.key()" = internal constant [42 x i8] c"ctx.accounts.recipient_token_account.key()"
@params.message_body = internal constant [19 x i8] c"params.message_body"
@"ctx.accounts.remote_token_messenger.token_messenger,TokenMessengerError::InvalidTokenMessenger" = internal constant [94 x i8] c"ctx.accounts.remote_token_messenger.token_messenger,TokenMessengerError::InvalidTokenMessenger"
@params.sender = internal constant [13 x i8] c"params.sender"
@"&HandleReceiveMessageParams" = internal constant [27 x i8] c"&HandleReceiveMessageParams"
@u8 = internal constant [2 x i8] c"u8"
@authority_bump = internal constant [14 x i8] c"authority_bump"
@sender = internal constant [6 x i8] c"sender"
@remote_domain = internal constant [13 x i8] c"remote_domain"
@custody_token_account = internal constant [21 x i8] c"custody_token_account"
@"mut,constraint=custody_token_account.mint==local_token.mint,seeds=[b\22custody\22,local_token.mint.as_ref()],bump=local_token.custody_bump" = internal constant [134 x i8] c"mut,constraint=custody_token_account.mint==local_token.mint,seeds=[b\22custody\22,local_token.mint.as_ref()],bump=local_token.custody_bump"
@recipient_token_account = internal constant [23 x i8] c"recipient_token_account"
@"mut,constraint=recipient_token_account.mint==local_token.mint" = internal constant [61 x i8] c"mut,constraint=recipient_token_account.mint==local_token.mint"
@"Box<Account<'info,TokenPair>>" = internal constant [29 x i8] c"Box<Account<'info,TokenPair>>"
@token_pair = internal constant [10 x i8] c"token_pair"
@"constraint=token_pair.local_token==local_token.key()@TokenMessengerError::InvalidTokenPair,seeds=[b\22token_pair\22,params.remote_domain.to_string().as_bytes(),BurnMessage::new(token_messenger.message_body_version,&params.message_body)?.burn_token()?.as_ref()],bump=token_pair.bump," = internal constant [278 x i8] c"constraint=token_pair.local_token==local_token.key()@TokenMessengerError::InvalidTokenPair,seeds=[b\22token_pair\22,params.remote_domain.to_string().as_bytes(),BurnMessage::new(token_messenger.message_body_version,&params.message_body)?.burn_token()?.as_ref()],bump=token_pair.bump,"
@"mut,seeds=[b\22local_token\22,local_token.mint.key().as_ref()],bump=local_token.bump" = internal constant [80 x i8] c"mut,seeds=[b\22local_token\22,local_token.mint.key().as_ref()],bump=local_token.bump"
@"constraint=params.remote_domain==remote_token_messenger.domain@TokenMessengerError::InvalidDestinationDomain" = internal constant [108 x i8] c"constraint=params.remote_domain==remote_token_messenger.domain@TokenMessengerError::InvalidDestinationDomain"
@"seeds=[b\22message_transmitter_authority\22,crate::ID.as_ref()],bump=params.authority_bump,seeds::program=message_transmitter::ID" = internal constant [125 x i8] c"seeds=[b\22message_transmitter_authority\22,crate::ID.as_ref()],bump=params.authority_bump,seeds::program=message_transmitter::ID"
@"new_owner:token_messenger.pending_owner}" = internal constant [40 x i8] c"new_owner:token_messenger.pending_owner}"
@"OwnershipTransferStarted{previous_owner:token_messenger.owner" = internal constant [61 x i8] c"OwnershipTransferStarted{previous_owner:token_messenger.owner"
@params.new_owner = internal constant [16 x i8] c"params.new_owner"
@"[Pubkey::default(),ctx.accounts.owner.key(),ctx.accounts.token_messenger.pending_owner,]" = internal constant [88 x i8] c"[Pubkey::default(),ctx.accounts.owner.key(),ctx.accounts.token_messenger.pending_owner,]"
@"&TransferOwnershipParams" = internal constant [24 x i8] c"&TransferOwnershipParams"
@"(TokenMessengerError::InvalidOwner)" = internal constant [35 x i8] c"(TokenMessengerError::InvalidOwner)"
@new_owner = internal constant [9 x i8] c"new_owner"
@"mut,has_one=owner@TokenMessengerError::InvalidAuthority" = internal constant [55 x i8] c"mut,has_one=owner@TokenMessengerError::InvalidAuthority"
@"burn_token,amount,depositor:original_message_sender,mint_recipient:params.new_mint_recipient,destination_domain:message.destination_domain()?,destination_token_messenger:message.recipient()?,destination_caller:params.new_destination_caller,}" = internal constant [241 x i8] c"burn_token,amount,depositor:original_message_sender,mint_recipient:params.new_mint_recipient,destination_domain:message.destination_domain()?,destination_token_messenger:message.recipient()?,destination_caller:params.new_destination_caller,}"
@params.new_destination_caller = internal constant [29 x i8] c"params.new_destination_caller"
@params.original_attestation = internal constant [27 x i8] c"params.original_attestation"
@new_message_body = internal constant [16 x i8] c"new_message_body"
@burn_token = internal constant [10 x i8] c"burn_token"
@params.new_mint_recipient = internal constant [25 x i8] c"params.new_mint_recipient"
@"TokenMessengerError::InvalidSender" = internal constant [34 x i8] c"TokenMessengerError::InvalidSender"
@"ctx.accounts.owner.key()" = internal constant [24 x i8] c"ctx.accounts.owner.key()"
@original_message_sender = internal constant [23 x i8] c"original_message_sender"
@message = internal constant [7 x i8] c"message"
@params.original_message = internal constant [23 x i8] c"params.original_message"
@message_transmitter.version = internal constant [27 x i8] c"message_transmitter.version"
@"&ReplaceDepositForBurnParams" = internal constant [28 x i8] c"&ReplaceDepositForBurnParams"
@new_mint_recipient = internal constant [18 x i8] c"new_mint_recipient"
@new_destination_caller = internal constant [22 x i8] c"new_destination_caller"
@original_attestation = internal constant [20 x i8] c"original_attestation"
@"Vec<u8>" = internal constant [7 x i8] c"Vec<u8>"
@original_message = internal constant [16 x i8] c"original_message"
@"token_messenger:params.token_messenger}" = internal constant [39 x i8] c"token_messenger:params.token_messenger}"
@"RemoteTokenMessengerAdded{domain:params.domain" = internal constant [46 x i8] c"RemoteTokenMessengerAdded{domain:params.domain"
@"remote_token_messenger.validate()" = internal constant [33 x i8] c"remote_token_messenger.validate()"
@remote_token_messenger.token_messenger = internal constant [38 x i8] c"remote_token_messenger.token_messenger"
@params.token_messenger = internal constant [22 x i8] c"params.token_messenger"
@remote_token_messenger.domain = internal constant [29 x i8] c"remote_token_messenger.domain"
@params.domain = internal constant [13 x i8] c"params.domain"
@ctx.accounts.remote_token_messenger = internal constant [35 x i8] c"ctx.accounts.remote_token_messenger"
@"&AddRemoteTokenMessengerParams" = internal constant [30 x i8] c"&AddRemoteTokenMessengerParams"
@domain = internal constant [6 x i8] c"domain"
@"init,payer=payer,space=utils::DISCRIMINATOR_SIZE+RemoteTokenMessenger::INIT_SPACE,seeds=[b\22remote_token_messenger\22,params.domain.to_string().as_bytes()],bump" = internal constant [157 x i8] c"init,payer=payer,space=utils::DISCRIMINATOR_SIZE+RemoteTokenMessenger::INIT_SPACE,seeds=[b\22remote_token_messenger\22,params.domain.to_string().as_bytes()],bump"
@"has_one=owner@TokenMessengerError::InvalidAuthority" = internal constant [51 x i8] c"has_one=owner@TokenMessengerError::InvalidAuthority"
@"()" = internal constant [2 x i8] c"()"
@"SetTokenController{token_controller:params.token_controller}" = internal constant [60 x i8] c"SetTokenController{token_controller:params.token_controller}"
@"TokenMinterError::InvalidTokenMinterState" = internal constant [41 x i8] c"TokenMinterError::InvalidTokenMinterState"
@"token_minter.validate()" = internal constant [23 x i8] c"token_minter.validate()"
@token_minter.bump = internal constant [17 x i8] c"token_minter.bump"
@"\22token_minter\22" = internal constant [14 x i8] c"\22token_minter\22"
@token_minter.paused = internal constant [19 x i8] c"token_minter.paused"
@false = internal constant [5 x i8] c"false"
@token_minter.pauser = internal constant [19 x i8] c"token_minter.pauser"
@token_minter.token_controller = internal constant [29 x i8] c"token_minter.token_controller"
@params.token_controller = internal constant [23 x i8] c"params.token_controller"
@"TokenMessengerError::InvalidTokenMessengerState" = internal constant [47 x i8] c"TokenMessengerError::InvalidTokenMessengerState"
@"token_messenger.validate()" = internal constant [26 x i8] c"token_messenger.validate()"
@token_messenger.authority_bump = internal constant [30 x i8] c"token_messenger.authority_bump"
@"ProgramError::InvalidSeeds" = internal constant [26 x i8] c"ProgramError::InvalidSeeds"
@"\22authority_pda\22" = internal constant [15 x i8] c"\22authority_pda\22"
@ctx.bumps = internal constant [9 x i8] c"ctx.bumps"
@token_messenger.message_body_version = internal constant [36 x i8] c"token_messenger.message_body_version"
@params.message_body_version = internal constant [27 x i8] c"params.message_body_version"
@token_messenger.local_message_transmitter = internal constant [41 x i8] c"token_messenger.local_message_transmitter"
@params.local_message_transmitter = internal constant [32 x i8] c"params.local_message_transmitter"
@token_messenger.pending_owner = internal constant [29 x i8] c"token_messenger.pending_owner"
@token_messenger.owner = internal constant [21 x i8] c"token_messenger.owner"
@ctx.accounts.token_messenger = internal constant [28 x i8] c"ctx.accounts.token_messenger"
@authority = internal constant [9 x i8] c"authority"
@ctx.accounts.token_messenger_minter_program_data = internal constant [48 x i8] c"ctx.accounts.token_messenger_minter_program_data"
@ctx.accounts.upgrade_authority = internal constant [30 x i8] c"ctx.accounts.upgrade_authority"
@"&InitializeParams" = internal constant [17 x i8] c"&InitializeParams"
@message_body_version = internal constant [20 x i8] c"message_body_version"
@local_message_transmitter = internal constant [25 x i8] c"local_message_transmitter"
@token_controller = internal constant [16 x i8] c"token_controller"
@"AccountInfo<'info>" = internal constant [18 x i8] c"AccountInfo<'info>"
@token_messenger_minter_program_data = internal constant [35 x i8] c"token_messenger_minter_program_data"
@"init,payer=payer,space=utils::DISCRIMINATOR_SIZE+TokenMinter::INIT_SPACE,seeds=[b\22token_minter\22],bump" = internal constant [101 x i8] c"init,payer=payer,space=utils::DISCRIMINATOR_SIZE+TokenMinter::INIT_SPACE,seeds=[b\22token_minter\22],bump"
@"init,payer=payer,space=utils::DISCRIMINATOR_SIZE+TokenMessenger::INIT_SPACE,seeds=[b\22token_messenger\22],bump" = internal constant [107 x i8] c"init,payer=payer,space=utils::DISCRIMINATOR_SIZE+TokenMessenger::INIT_SPACE,seeds=[b\22token_messenger\22],bump"
@authority_pda = internal constant [13 x i8] c"authority_pda"
@"seeds=[b\22sender_authority\22],bump" = internal constant [32 x i8] c"seeds=[b\22sender_authority\22],bump"
@upgrade_authority = internal constant [17 x i8] c"upgrade_authority"
@payer = internal constant [5 x i8] c"payer"
@"burn_token:ctx.accounts.burn_token_mint.key(),amount,depositor:ctx.accounts.owner.key(),mint_recipient:*mint_recipient,destination_domain,destination_token_messenger:ctx.accounts.remote_token_messenger.token_messenger,destination_caller:*destination_caller,}" = internal constant [258 x i8] c"burn_token:ctx.accounts.burn_token_mint.key(),amount,depositor:ctx.accounts.owner.key(),mint_recipient:*mint_recipient,destination_domain,destination_token_messenger:ctx.accounts.remote_token_messenger.token_messenger,destination_caller:*destination_caller,}"
@"DepositForBurn{nonce" = internal constant [20 x i8] c"DepositForBurn{nonce"
@nonce = internal constant [5 x i8] c"nonce"
@authority_seeds = internal constant [15 x i8] c"authority_seeds"
@"[&[b\22sender_authority\22,&[ctx.accounts.token_messenger.authority_bump],]]" = internal constant [72 x i8] c"[&[b\22sender_authority\22,&[ctx.accounts.token_messenger.authority_bump],]]"
@cpi_accounts = internal constant [12 x i8] c"cpi_accounts"
@ctx.accounts.system_program = internal constant [27 x i8] c"ctx.accounts.system_program"
@sender_program = internal constant [14 x i8] c"sender_program"
@ctx.accounts.token_messenger_minter_program = internal constant [43 x i8] c"ctx.accounts.token_messenger_minter_program"
@ctx.accounts.message_sent_event_data = internal constant [36 x i8] c"ctx.accounts.message_sent_event_data"
@ctx.accounts.message_transmitter = internal constant [32 x i8] c"ctx.accounts.message_transmitter"
@ctx.accounts.sender_authority_pda = internal constant [33 x i8] c"ctx.accounts.sender_authority_pda"
@ctx.accounts.event_rent_payer = internal constant [29 x i8] c"ctx.accounts.event_rent_payer"
@cpi_program = internal constant [11 x i8] c"cpi_program"
@ctx.accounts.message_transmitter_program = internal constant [40 x i8] c"ctx.accounts.message_transmitter_program"
@ctx.accounts.token_messenger.message_body_version = internal constant [49 x i8] c"ctx.accounts.token_messenger.message_body_version"
@ctx.accounts.local_token = internal constant [24 x i8] c"ctx.accounts.local_token"
@ctx.accounts.token_program = internal constant [26 x i8] c"ctx.accounts.token_program"
@ctx.accounts.owner = internal constant [18 x i8] c"ctx.accounts.owner"
@ctx.accounts.burn_token_account = internal constant [31 x i8] c"ctx.accounts.burn_token_account"
@ctx.accounts.burn_token_mint = internal constant [28 x i8] c"ctx.accounts.burn_token_mint"
@ctx.accounts.token_minter = internal constant [25 x i8] c"ctx.accounts.token_minter"
@"TokenMessengerError::InvalidMintRecipient" = internal constant [41 x i8] c"TokenMessengerError::InvalidMintRecipient"
@"*mint_recipient" = internal constant [15 x i8] c"*mint_recipient"
@"0,TokenMessengerError::InvalidAmount" = internal constant [36 x i8] c"0,TokenMessengerError::InvalidAmount"
@"&Pubkey" = internal constant [7 x i8] c"&Pubkey"
@cpi_ctx = internal constant [7 x i8] c"cpi_ctx"
@cpi_params = internal constant [10 x i8] c"cpi_params"
@message_body = internal constant [12 x i8] c"message_body"
@burn_message = internal constant [12 x i8] c"burn_message"
@recipient = internal constant [9 x i8] c"recipient"
@ctx.accounts.remote_token_messenger.token_messenger = internal constant [51 x i8] c"ctx.accounts.remote_token_messenger.token_messenger"
@"&DepositForBurnParams" = internal constant [21 x i8] c"&DepositForBurnParams"
@"Program<'info,System>" = internal constant [21 x i8] c"Program<'info,System>"
@system_program = internal constant [14 x i8] c"system_program"
@"Program<'info,Token>" = internal constant [20 x i8] c"Program<'info,Token>"
@token_program = internal constant [13 x i8] c"token_program"
@"Program<'info,program::TokenMessengerMinter>" = internal constant [44 x i8] c"Program<'info,program::TokenMessengerMinter>"
@token_messenger_minter_program = internal constant [30 x i8] c"token_messenger_minter_program"
@"Program<'info,message_transmitter::program::MessageTransmitter>" = internal constant [63 x i8] c"Program<'info,message_transmitter::program::MessageTransmitter>"
@message_transmitter_program = internal constant [27 x i8] c"message_transmitter_program"
@message_sent_event_data = internal constant [23 x i8] c"message_sent_event_data"
@"Box<Account<'info,Mint>>" = internal constant [24 x i8] c"Box<Account<'info,Mint>>"
@burn_token_mint = internal constant [15 x i8] c"burn_token_mint"
@"Box<Account<'info,LocalToken>>" = internal constant [30 x i8] c"Box<Account<'info,LocalToken>>"
@local_token = internal constant [11 x i8] c"local_token"
@"mut,seeds=[b\22local_token\22,burn_token_mint.key().as_ref(),],bump=local_token.bump," = internal constant [81 x i8] c"mut,seeds=[b\22local_token\22,burn_token_mint.key().as_ref(),],bump=local_token.bump,"
@"Box<Account<'info,TokenMinter>>" = internal constant [31 x i8] c"Box<Account<'info,TokenMinter>>"
@token_minter = internal constant [12 x i8] c"token_minter"
@"Box<Account<'info,RemoteTokenMessenger>>" = internal constant [40 x i8] c"Box<Account<'info,RemoteTokenMessenger>>"
@remote_token_messenger = internal constant [22 x i8] c"remote_token_messenger"
@"constraint=params.destination_domain==remote_token_messenger.domain@TokenMessengerError::InvalidDestinationDomain" = internal constant [113 x i8] c"constraint=params.destination_domain==remote_token_messenger.domain@TokenMessengerError::InvalidDestinationDomain"
@"Box<Account<'info,TokenMessenger>>" = internal constant [34 x i8] c"Box<Account<'info,TokenMessenger>>"
@token_messenger = internal constant [15 x i8] c"token_messenger"
@"Box<Account<'info,MessageTransmitter>>" = internal constant [38 x i8] c"Box<Account<'info,MessageTransmitter>>"
@message_transmitter = internal constant [19 x i8] c"message_transmitter"
@"Box<Account<'info,TokenAccount>>" = internal constant [32 x i8] c"Box<Account<'info,TokenAccount>>"
@burn_token_account = internal constant [18 x i8] c"burn_token_account"
@"mut,constraint=burn_token_account.mint==burn_token_mint.key(),has_one=owner" = internal constant [75 x i8] c"mut,constraint=burn_token_account.mint==burn_token_mint.key(),has_one=owner"
@"UncheckedAccount<'info>" = internal constant [23 x i8] c"UncheckedAccount<'info>"
@sender_authority_pda = internal constant [20 x i8] c"sender_authority_pda"
@"seeds=[b\22sender_authority\22],bump=token_messenger.authority_bump," = internal constant [64 x i8] c"seeds=[b\22sender_authority\22],bump=token_messenger.authority_bump,"
@event_rent_payer = internal constant [16 x i8] c"event_rent_payer"
@mut = internal constant [3 x i8] c"mut"
@"Signer<'info>" = internal constant [13 x i8] c"Signer<'info>"
@owner = internal constant [5 x i8] c"owner"
@0 = internal constant [0 x i8] zeroinitializer
@params.mint_recipient = internal constant [21 x i8] c"params.mint_recipient"
@params.destination_domain = internal constant [25 x i8] c"params.destination_domain"
@params.amount = internal constant [13 x i8] c"params.amount"
@"TokenMessengerError::InvalidDestinationCaller" = internal constant [45 x i8] c"TokenMessengerError::InvalidDestinationCaller"
@"Pubkey::default()" = internal constant [17 x i8] c"Pubkey::default()"
@params.destination_caller = internal constant [25 x i8] c"params.destination_caller"
@"&DepositForBurnWithCallerParams" = internal constant [31 x i8] c"&DepositForBurnWithCallerParams"
@destination_caller = internal constant [18 x i8] c"destination_caller"
@Pubkey = internal constant [6 x i8] c"Pubkey"
@mint_recipient = internal constant [14 x i8] c"mint_recipient"
@u32 = internal constant [3 x i8] c"u32"
@destination_domain = internal constant [18 x i8] c"destination_domain"
@u64 = internal constant [3 x i8] c"u64"
@amount = internal constant [6 x i8] c"amount"
@program_id = internal constant [10 x i8] c"program_id"
@"params:BurnTokenCustodyParams" = internal constant [29 x i8] c"params:BurnTokenCustodyParams"
@"ctx:Context<BurnTokenCustodyContext>" = internal constant [36 x i8] c"ctx:Context<BurnTokenCustodyContext>"
@"params:UninkTokenPairParams" = internal constant [27 x i8] c"params:UninkTokenPairParams"
@"ctx:Context<UnlinkTokenPairContext>" = internal constant [35 x i8] c"ctx:Context<UnlinkTokenPairContext>"
@"params:LinkTokenPairParams" = internal constant [26 x i8] c"params:LinkTokenPairParams"
@"ctx:Context<LinkTokenPairContext>" = internal constant [33 x i8] c"ctx:Context<LinkTokenPairContext>"
@"params:RemoveLocalTokenParams" = internal constant [29 x i8] c"params:RemoveLocalTokenParams"
@"ctx:Context<RemoveLocalTokenContext>" = internal constant [36 x i8] c"ctx:Context<RemoveLocalTokenContext>"
@"params:AddLocalTokenParams" = internal constant [26 x i8] c"params:AddLocalTokenParams"
@"ctx:Context<AddLocalTokenContext>" = internal constant [33 x i8] c"ctx:Context<AddLocalTokenContext>"
@"params:SetMaxBurnAmountPerMessageParams" = internal constant [39 x i8] c"params:SetMaxBurnAmountPerMessageParams"
@"ctx:Context<SetMaxBurnAmountPerMessageContext>" = internal constant [46 x i8] c"ctx:Context<SetMaxBurnAmountPerMessageContext>"
@"params:UpdatePauserParams" = internal constant [25 x i8] c"params:UpdatePauserParams"
@"ctx:Context<UpdatePauserContext>" = internal constant [32 x i8] c"ctx:Context<UpdatePauserContext>"
@"params:UnpauseParams" = internal constant [20 x i8] c"params:UnpauseParams"
@"ctx:Context<UnpauseContext>" = internal constant [27 x i8] c"ctx:Context<UnpauseContext>"
@"params:PauseParams" = internal constant [18 x i8] c"params:PauseParams"
@"ctx:Context<PauseContext>" = internal constant [25 x i8] c"ctx:Context<PauseContext>"
@"params:SetTokenControllerParams" = internal constant [31 x i8] c"params:SetTokenControllerParams"
@"ctx:Context<SetTokenControllerContext>" = internal constant [38 x i8] c"ctx:Context<SetTokenControllerContext>"
@"params:HandleReceiveMessageParams" = internal constant [33 x i8] c"params:HandleReceiveMessageParams"
@"ctx:Context<HandleReceiveMessageContext>" = internal constant [40 x i8] c"ctx:Context<HandleReceiveMessageContext>"
@"params:ReplaceDepositForBurnParams" = internal constant [34 x i8] c"params:ReplaceDepositForBurnParams"
@"ctx:Context<ReplaceDepositForBurnContext>" = internal constant [41 x i8] c"ctx:Context<ReplaceDepositForBurnContext>"
@"params:DepositForBurnWithCallerParams" = internal constant [37 x i8] c"params:DepositForBurnWithCallerParams"
@"params:DepositForBurnParams" = internal constant [27 x i8] c"params:DepositForBurnParams"
@"ctx:Context<DepositForBurnContext>" = internal constant [34 x i8] c"ctx:Context<DepositForBurnContext>"
@"params:RemoveRemoteTokenMessengerParams" = internal constant [39 x i8] c"params:RemoveRemoteTokenMessengerParams"
@"ctx:Context<RemoveRemoteTokenMessengerContext>" = internal constant [46 x i8] c"ctx:Context<RemoveRemoteTokenMessengerContext>"
@"params:AddRemoteTokenMessengerParams" = internal constant [36 x i8] c"params:AddRemoteTokenMessengerParams"
@"ctx:Context<AddRemoteTokenMessengerContext>" = internal constant [43 x i8] c"ctx:Context<AddRemoteTokenMessengerContext>"
@"params:AcceptOwnershipParams" = internal constant [28 x i8] c"params:AcceptOwnershipParams"
@"ctx:Context<AcceptOwnershipContext>" = internal constant [35 x i8] c"ctx:Context<AcceptOwnershipContext>"
@"params:TransferOwnershipParams" = internal constant [30 x i8] c"params:TransferOwnershipParams"
@"ctx:Context<TransferOwnershipContext>" = internal constant [37 x i8] c"ctx:Context<TransferOwnershipContext>"
@"params:InitializeParams" = internal constant [23 x i8] c"params:InitializeParams"
@"ctx:Context<InitializeContext>" = internal constant [30 x i8] c"ctx:Context<InitializeContext>"
@"*i8" = internal constant [3 x i8] c"*i8"
@parser.error = internal constant [12 x i8] c"parser.error"
@BurnTokenCustodyParams = internal constant [22 x i8] c"BurnTokenCustodyParams"
@"Context<BurnTokenCustodyContext>" = internal constant [32 x i8] c"Context<BurnTokenCustodyContext>"
@UninkTokenPairParams = internal constant [20 x i8] c"UninkTokenPairParams"
@"Context<UnlinkTokenPairContext>" = internal constant [31 x i8] c"Context<UnlinkTokenPairContext>"
@LinkTokenPairParams = internal constant [19 x i8] c"LinkTokenPairParams"
@"Context<LinkTokenPairContext>" = internal constant [29 x i8] c"Context<LinkTokenPairContext>"
@RemoveLocalTokenParams = internal constant [22 x i8] c"RemoveLocalTokenParams"
@"Context<RemoveLocalTokenContext>" = internal constant [32 x i8] c"Context<RemoveLocalTokenContext>"
@AddLocalTokenParams = internal constant [19 x i8] c"AddLocalTokenParams"
@"Context<AddLocalTokenContext>" = internal constant [29 x i8] c"Context<AddLocalTokenContext>"
@SetMaxBurnAmountPerMessageParams = internal constant [32 x i8] c"SetMaxBurnAmountPerMessageParams"
@"Context<SetMaxBurnAmountPerMessageContext>" = internal constant [42 x i8] c"Context<SetMaxBurnAmountPerMessageContext>"
@UpdatePauserParams = internal constant [18 x i8] c"UpdatePauserParams"
@"Context<UpdatePauserContext>" = internal constant [28 x i8] c"Context<UpdatePauserContext>"
@UnpauseParams = internal constant [13 x i8] c"UnpauseParams"
@"Context<UnpauseContext>" = internal constant [23 x i8] c"Context<UnpauseContext>"
@PauseParams = internal constant [11 x i8] c"PauseParams"
@"Context<PauseContext>" = internal constant [21 x i8] c"Context<PauseContext>"
@SetTokenControllerParams = internal constant [24 x i8] c"SetTokenControllerParams"
@"Context<SetTokenControllerContext>" = internal constant [34 x i8] c"Context<SetTokenControllerContext>"
@HandleReceiveMessageParams = internal constant [26 x i8] c"HandleReceiveMessageParams"
@"Context<HandleReceiveMessageContext>" = internal constant [36 x i8] c"Context<HandleReceiveMessageContext>"
@ReplaceDepositForBurnParams = internal constant [27 x i8] c"ReplaceDepositForBurnParams"
@"Context<ReplaceDepositForBurnContext>" = internal constant [37 x i8] c"Context<ReplaceDepositForBurnContext>"
@DepositForBurnWithCallerParams = internal constant [30 x i8] c"DepositForBurnWithCallerParams"
@DepositForBurnParams = internal constant [20 x i8] c"DepositForBurnParams"
@"Context<DepositForBurnContext>" = internal constant [30 x i8] c"Context<DepositForBurnContext>"
@RemoveRemoteTokenMessengerParams = internal constant [32 x i8] c"RemoveRemoteTokenMessengerParams"
@"Context<RemoveRemoteTokenMessengerContext>" = internal constant [42 x i8] c"Context<RemoveRemoteTokenMessengerContext>"
@AddRemoteTokenMessengerParams = internal constant [29 x i8] c"AddRemoteTokenMessengerParams"
@"Context<AddRemoteTokenMessengerContext>" = internal constant [39 x i8] c"Context<AddRemoteTokenMessengerContext>"
@AcceptOwnershipParams = internal constant [21 x i8] c"AcceptOwnershipParams"
@"Context<AcceptOwnershipContext>" = internal constant [31 x i8] c"Context<AcceptOwnershipContext>"
@TransferOwnershipParams = internal constant [23 x i8] c"TransferOwnershipParams"
@"Context<TransferOwnershipContext>" = internal constant [33 x i8] c"Context<TransferOwnershipContext>"
@InitializeParams = internal constant [16 x i8] c"InitializeParams"
@params = internal constant [6 x i8] c"params"
@"Context<InitializeContext>" = internal constant [26 x i8] c"Context<InitializeContext>"
@ctx = internal constant [3 x i8] c"ctx"
@CCTPiPYPc6AsJuwueEnWgSgucamXDZwBd53dQ11YiKX3 = internal constant [44 x i8] c"CCTPiPYPc6AsJuwueEnWgSgucamXDZwBd53dQ11YiKX3"
@"=1.16.9" = internal constant [7 x i8] c"=1.16.9"
@dependencies.solana_program.version = internal constant [35 x i8] c"dependencies.solana_program.version"
@dependencies.anchor-spl.version = internal constant [31 x i8] c"dependencies.anchor-spl.version"
@"=0.28.0" = internal constant [7 x i8] c"=0.28.0"
@dependencies.anchor-lang.version = internal constant [32 x i8] c"dependencies.anchor-lang.version"

declare i8* @malloc(i64)

declare void @free(i8*)

declare i8* @"sol.anchor_spl::token::close_account.1"(i8*)

declare i8* @"sol.anchor_lang::context::CpiContext::new.2"(i8*, i8*)

declare i8* @"sol.model.struct.new.anchor_spl::token::CloseAccount.3"(i8*, i8*, i8*)

declare i8* @"sol.anchor_spl::token::transfer.2"(i8*, i8*)

declare i8* @sol.model.struct.new.Transfer.3(i8*, i8*, i8*)

declare i8* @sol.typecast(i8*, i8*)

declare i8* @sol.saturating_add.2(i8*, i8*)

declare i8* @"sol.require_gte.!2"(i8*, i8*)

declare i8* @"sol.anchor_spl::token::burn.2"(i8*, i8*)

declare i8* @sol.with_signer.2(i8*, i8*)

declare i8* @"sol.CpiContext::new.2"(i8*, i8*)

declare i8* @sol.model.struct.new.Burn.3(i8*, i8*, i8*)

declare i8* @"sol.require_neq.!2"(i8*, i8*)

declare i8* @"sol.burn_token_custody::burn_token_custody.anon.2"(i8*)

declare i8* @"sol.burn_token_custody::burn_token_custody.anon.1"(i8*)

declare i8* @"sol.<="(i8*, i8*)

declare i8* @sol.close_token_account.5(i8*, i8*, i8*, i8*, i8*)

declare i8* @"sol.Pubkey::try_from.1"(i8*)

declare i8* @"sol.T::from_be_bytes.1"(i8*)

declare i8* @sol.map_err.2(i8*, i8*)

declare i8* @sol.try_into.1(i8*)

declare i8* @"sol.+"(i8*, i8*)

declare i8* @sol.read_pubkey.2(i8*, i8*)

declare i8* @sol.read_integer.2(i8*, i8*)

declare i8* @sol.copy_from_slice.2(i8*, i8*)

declare i8* @sol.to_be_bytes.1(i8*)

declare i8* @"sol.model.macro.vec.!1"(i8*)

declare i8* @"sol.require_eq.!3"(i8*, i8*, i8*)

declare i8* @sol.model.struct.new.Self.1(i8*)

declare i8* @"sol.&&"(i8*, i8*)

declare i8* @"sol.!="(i8*, i8*)

declare i8* @sol.transfer.7(i8*, i8*, i8*, i8*, i8*, i8*, i8*)

declare i8* @"sol.require_keys_eq.!2"(i8*, i8*)

declare i8* @sol.mint_recipient.1(i8*)

declare i8* @"sol.require_eq.!2"(i8*, i8*)

declare i8* @"sol.transfer_ownership::transfer_ownership.anon.1"(i8*)

declare i8* @sol.contains.2(i8*, i8*)

declare i8* @sol.return.1(i8*)

declare i8* @"sol.model.macro.err.!1"(i8*)

declare i8* @"sol.message_transmitter::cpi::replace_message.2"(i8*, i8*)

declare i8* @sol.model.struct.new.ReplaceMessageParams.4(i8*, i8*, i8*, i8*)

declare i8* @sol.clone.1(i8*)

declare i8* @sol.model.struct.new.ReplaceMessageContext.6(i8*, i8*, i8*, i8*, i8*, i8*)

declare i8* @sol.amount.1(i8*)

declare i8* @sol.burn_token.1(i8*)

declare i8* @"sol.require_keys_eq.!3"(i8*, i8*, i8*)

declare i8* @sol.message_sender.1(i8*)

declare i8* @"sol.BurnMessage::new.2"(i8*, i8*)

declare i8* @sol.message_body.1(i8*)

declare i8* @"sol.Message::new.2"(i8*, i8*)

declare i8* @sol.as_ref.1(i8*)

declare i8* @"sol.emit_cpi.!1"(i8*)

declare i8* @"sol.require.!2"(i8*, i8*)

declare i8* @sol.ok_or.2(i8*, i8*)

declare i8* @sol.get.2(i8*, i8*)

declare i8* @"sol.message_transmitter::utils::validate_upgrade_authority.3"(i8*, i8*, i8*)

declare i8* @sol.Ok.1(i8*)

declare i8* @"sol.emit_cpi.!2"(i8*, i8*)

declare i8* @sol.ifFalse.anon.(i8*)

declare i8* @"sol.deposit_for_burn::deposit_for_burn_helper.anon.2"(i8*)

declare i8* @sol.ifTrue.anon.(i8*)

declare i8* @"sol.deposit_for_burn::deposit_for_burn_helper.anon.1"(i8*)

declare i8* @sol.if(i8*)

declare i8* @"sol.=="(i8*, i8*)

declare i8* @"sol.CpiContext::new_with_signer.3"(i8*, i8*, i8*)

declare i8* @sol.model.struct.new.SendMessageContext.6(i8*, i8*, i8*, i8*, i8*, i8*)

declare i8* @"sol.BurnMessage::format_message.5"(i8*, i8*, i8*, i8*, i8*)

declare i8* @sol.key.1(i8*)

declare i8* @sol.burn.7(i8*, i8*, i8*, i8*, i8*, i8*, i8*)

declare i8* @sol.as_mut.1(i8*)

declare i8* @sol.to_account_info.1(i8*)

declare i8* @"sol.require_gt.!2"(i8*, i8*)

declare i8* @"sol.message_transmitter::cpi::send_message_with_caller.2"(i8*, i8*)

declare i8* @sol.model.struct.new.SendMessageWithCallerParams.4(i8*, i8*, i8*, i8*)

declare i8* @sol.get.1(i8*)

declare i8* @"sol.message_transmitter::cpi::send_message.2"(i8*, i8*)

declare i8* @sol.model.struct.new.SendMessageParams.3(i8*, i8*, i8*)

declare void @sol.model.opaqueAssign(i8*, i8*)

declare i8* @sol.deposit_for_burn_helper.5(i8*, i8*, i8*, i8*, i8*)

declare i8* @"sol.Pubkey::default.0"()

declare i8* @sol.model.struct.constraint(i8*)

declare i8* @"sol.crate::token_messenger::instructions::deposit_for_burn_helper.5"(i8*, i8*, i8*, i8*, i8*)

declare i8* @"sol.require_keys_neq.!3"(i8*, i8*, i8*)

declare i8* @sol.model.struct.field(i8*, i8*)

declare i8* @sol.burn_token_custody.2(i8*, i8*)

declare i8* @sol.unlink_token_pair.2(i8*, i8*)

declare i8* @sol.link_token_pair.2(i8*, i8*)

declare i8* @sol.remove_local_token.2(i8*, i8*)

declare i8* @sol.add_local_token.2(i8*, i8*)

declare i8* @sol.set_max_burn_amount_per_message.2(i8*, i8*)

declare i8* @sol.update_pauser.2(i8*, i8*)

declare i8* @sol.unpause.2(i8*, i8*)

declare i8* @sol.pause.2(i8*, i8*)

declare i8* @sol.set_token_controller.2(i8*, i8*)

declare i8* @sol.handle_receive_message.2(i8*, i8*)

declare i8* @sol.replace_deposit_for_burn.2(i8*, i8*)

declare i8* @sol.deposit_for_burn_with_caller.2(i8*, i8*)

declare i8* @sol.deposit_for_burn.2(i8*, i8*)

declare i8* @sol.remove_remote_token_messenger.2(i8*, i8*)

declare i8* @sol.add_remote_token_messenger.2(i8*, i8*)

declare i8* @sol.accept_ownership.2(i8*, i8*)

declare i8* @sol.transfer_ownership.2(i8*, i8*)

declare i8* @sol.initialize.2(i8*, i8*)

declare i8* @"sol.token_minter::instructions::burn_token_custody.2"(i8*, i8*)

declare i8* @"sol.token_minter::instructions::unlink_token_pair.2"(i8*, i8*)

declare i8* @"sol.token_minter::instructions::link_token_pair.2"(i8*, i8*)

declare i8* @"sol.token_minter::instructions::remove_local_token.2"(i8*, i8*)

declare i8* @"sol.token_minter::instructions::add_local_token.2"(i8*, i8*)

declare i8* @"sol.token_minter::instructions::set_max_burn_amount_per_message.2"(i8*, i8*)

declare i8* @"sol.token_minter::instructions::update_pauser.2"(i8*, i8*)

declare i8* @"sol.token_minter::instructions::unpause.2"(i8*, i8*)

declare i8* @"sol.token_minter::instructions::pause.2"(i8*, i8*)

declare i8* @"sol.token_minter::instructions::set_token_controller.2"(i8*, i8*)

declare i8* @"sol.token_messenger::instructions::handle_receive_message.2"(i8*, i8*)

declare i8* @"sol.token_messenger::instructions::replace_deposit_for_burn.2"(i8*, i8*)

declare i8* @"sol.token_messenger::instructions::deposit_for_burn_with_caller.2"(i8*, i8*)

declare i8* @"sol.token_messenger::instructions::deposit_for_burn.2"(i8*, i8*)

declare i8* @"sol.token_messenger::instructions::remove_remote_token_messenger.2"(i8*, i8*)

declare i8* @"sol.token_messenger::instructions::add_remote_token_messenger.2"(i8*, i8*)

declare i8* @"sol.token_messenger::instructions::accept_ownership.2"(i8*, i8*)

declare i8* @"sol.token_messenger::instructions::transfer_ownership.2"(i8*, i8*)

declare i8* @"sol.token_messenger::instructions::initialize.2"(i8*, i8*)

declare i8* @sol.model.funcArg(i8*, i8*)

declare i8* @sol.model.declare_id(i8*)

declare i8* @sol.model.toml(i8*, i8*)

define i64 @sol.model.cargo.toml(i8* %0) !dbg !3 {
  %2 = call i8* @sol.model.toml(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @dependencies.anchor-lang.version, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"=0.28.0", i64 0, i64 0)), !dbg !7
  %3 = call i8* @sol.model.toml(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @dependencies.anchor-spl.version, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"=0.28.0", i64 0, i64 0)), !dbg !7
  %4 = call i8* @sol.model.toml(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @dependencies.solana_program.version, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"=1.16.9", i64 0, i64 0)), !dbg !7
  ret i64 0, !dbg !10
}

define i64 @sol.model.declare_id.address(i8* %0) !dbg !12 {
  %2 = call i8* @sol.model.declare_id(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @CCTPiPYPc6AsJuwueEnWgSgucamXDZwBd53dQ11YiKX3, i64 0, i64 0)), !dbg !13
  ret i64 0, !dbg !16
}

define i8* @"lib::initialize.2"(i8* %0, i8* %1) !dbg !18 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"Context<InitializeContext>", i64 0, i64 0)), !dbg !20
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @InitializeParams, i64 0, i64 0)), !dbg !20
  %5 = call i8* @"sol.token_messenger::instructions::initialize.2"(i8* %0, i8* %1), !dbg !22
  ret i8* %0, !dbg !20
}

define i8* @"lib::transfer_ownership.2"(i8* %0, i8* %1) !dbg !23 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @"Context<TransferOwnershipContext>", i64 0, i64 0)), !dbg !24
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @TransferOwnershipParams, i64 0, i64 0)), !dbg !24
  %5 = call i8* @"sol.token_messenger::instructions::transfer_ownership.2"(i8* %0, i8* %1), !dbg !26
  ret i8* %0, !dbg !24
}

define i8* @"lib::accept_ownership.2"(i8* %0, i8* %1) !dbg !27 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"Context<AcceptOwnershipContext>", i64 0, i64 0)), !dbg !28
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @AcceptOwnershipParams, i64 0, i64 0)), !dbg !28
  %5 = call i8* @"sol.token_messenger::instructions::accept_ownership.2"(i8* %0, i8* %1), !dbg !30
  ret i8* %0, !dbg !28
}

define i8* @"lib::add_remote_token_messenger.2"(i8* %0, i8* %1) !dbg !31 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @"Context<AddRemoteTokenMessengerContext>", i64 0, i64 0)), !dbg !32
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @AddRemoteTokenMessengerParams, i64 0, i64 0)), !dbg !32
  %5 = call i8* @"sol.token_messenger::instructions::add_remote_token_messenger.2"(i8* %0, i8* %1), !dbg !34
  ret i8* %0, !dbg !32
}

define i8* @"lib::remove_remote_token_messenger.2"(i8* %0, i8* %1) !dbg !35 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @"Context<RemoveRemoteTokenMessengerContext>", i64 0, i64 0)), !dbg !36
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @RemoveRemoteTokenMessengerParams, i64 0, i64 0)), !dbg !36
  %5 = call i8* @"sol.token_messenger::instructions::remove_remote_token_messenger.2"(i8* %0, i8* %1), !dbg !38
  ret i8* %0, !dbg !36
}

define i8* @"lib::deposit_for_burn.2"(i8* %0, i8* %1) !dbg !39 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"Context<DepositForBurnContext>", i64 0, i64 0)), !dbg !40
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @DepositForBurnParams, i64 0, i64 0)), !dbg !40
  %5 = call i8* @"sol.token_messenger::instructions::deposit_for_burn.2"(i8* %0, i8* %1), !dbg !42
  ret i8* %0, !dbg !40
}

define i8* @"lib::deposit_for_burn_with_caller.2"(i8* %0, i8* %1) !dbg !43 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"Context<DepositForBurnContext>", i64 0, i64 0)), !dbg !44
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @DepositForBurnWithCallerParams, i64 0, i64 0)), !dbg !44
  %5 = call i8* @"sol.token_messenger::instructions::deposit_for_burn_with_caller.2"(i8* %0, i8* %1), !dbg !46
  ret i8* %0, !dbg !44
}

define i8* @"lib::replace_deposit_for_burn.2"(i8* %0, i8* %1) !dbg !47 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @"Context<ReplaceDepositForBurnContext>", i64 0, i64 0)), !dbg !48
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @ReplaceDepositForBurnParams, i64 0, i64 0)), !dbg !48
  %5 = call i8* @"sol.token_messenger::instructions::replace_deposit_for_burn.2"(i8* %0, i8* %1), !dbg !50
  ret i8* %0, !dbg !48
}

define i8* @"lib::handle_receive_message.2"(i8* %0, i8* %1) !dbg !51 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @"Context<HandleReceiveMessageContext>", i64 0, i64 0)), !dbg !52
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @HandleReceiveMessageParams, i64 0, i64 0)), !dbg !52
  %5 = call i8* @"sol.token_messenger::instructions::handle_receive_message.2"(i8* %0, i8* %1), !dbg !54
  ret i8* %0, !dbg !52
}

define i8* @"lib::set_token_controller.2"(i8* %0, i8* %1) !dbg !55 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @"Context<SetTokenControllerContext>", i64 0, i64 0)), !dbg !56
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @SetTokenControllerParams, i64 0, i64 0)), !dbg !56
  %5 = call i8* @"sol.token_minter::instructions::set_token_controller.2"(i8* %0, i8* %1), !dbg !58
  ret i8* %0, !dbg !56
}

define i8* @"lib::pause.2"(i8* %0, i8* %1) !dbg !59 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"Context<PauseContext>", i64 0, i64 0)), !dbg !60
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @PauseParams, i64 0, i64 0)), !dbg !60
  %5 = call i8* @"sol.token_minter::instructions::pause.2"(i8* %0, i8* %1), !dbg !62
  ret i8* %0, !dbg !60
}

define i8* @"lib::unpause.2"(i8* %0, i8* %1) !dbg !63 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"Context<UnpauseContext>", i64 0, i64 0)), !dbg !64
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @UnpauseParams, i64 0, i64 0)), !dbg !64
  %5 = call i8* @"sol.token_minter::instructions::unpause.2"(i8* %0, i8* %1), !dbg !66
  ret i8* %0, !dbg !64
}

define i8* @"lib::update_pauser.2"(i8* %0, i8* %1) !dbg !67 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @"Context<UpdatePauserContext>", i64 0, i64 0)), !dbg !68
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @UpdatePauserParams, i64 0, i64 0)), !dbg !68
  %5 = call i8* @"sol.token_minter::instructions::update_pauser.2"(i8* %0, i8* %1), !dbg !70
  ret i8* %0, !dbg !68
}

define i8* @"lib::set_max_burn_amount_per_message.2"(i8* %0, i8* %1) !dbg !71 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @"Context<SetMaxBurnAmountPerMessageContext>", i64 0, i64 0)), !dbg !72
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @SetMaxBurnAmountPerMessageParams, i64 0, i64 0)), !dbg !72
  %5 = call i8* @"sol.token_minter::instructions::set_max_burn_amount_per_message.2"(i8* %0, i8* %1), !dbg !74
  ret i8* %0, !dbg !72
}

define i8* @"lib::add_local_token.2"(i8* %0, i8* %1) !dbg !75 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @"Context<AddLocalTokenContext>", i64 0, i64 0)), !dbg !76
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @AddLocalTokenParams, i64 0, i64 0)), !dbg !76
  %5 = call i8* @"sol.token_minter::instructions::add_local_token.2"(i8* %0, i8* %1), !dbg !78
  ret i8* %0, !dbg !76
}

define i8* @"lib::remove_local_token.2"(i8* %0, i8* %1) !dbg !79 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @"Context<RemoveLocalTokenContext>", i64 0, i64 0)), !dbg !80
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @RemoveLocalTokenParams, i64 0, i64 0)), !dbg !80
  %5 = call i8* @"sol.token_minter::instructions::remove_local_token.2"(i8* %0, i8* %1), !dbg !82
  ret i8* %0, !dbg !80
}

define i8* @"lib::link_token_pair.2"(i8* %0, i8* %1) !dbg !83 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @"Context<LinkTokenPairContext>", i64 0, i64 0)), !dbg !84
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @LinkTokenPairParams, i64 0, i64 0)), !dbg !84
  %5 = call i8* @"sol.token_minter::instructions::link_token_pair.2"(i8* %0, i8* %1), !dbg !86
  ret i8* %0, !dbg !84
}

define i8* @"lib::unlink_token_pair.2"(i8* %0, i8* %1) !dbg !87 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"Context<UnlinkTokenPairContext>", i64 0, i64 0)), !dbg !88
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @UninkTokenPairParams, i64 0, i64 0)), !dbg !88
  %5 = call i8* @"sol.token_minter::instructions::unlink_token_pair.2"(i8* %0, i8* %1), !dbg !90
  ret i8* %0, !dbg !88
}

define i8* @"lib::burn_token_custody.2"(i8* %0, i8* %1) !dbg !91 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @"Context<BurnTokenCustodyContext>", i64 0, i64 0)), !dbg !92
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @BurnTokenCustodyParams, i64 0, i64 0)), !dbg !92
  %5 = call i8* @"sol.token_minter::instructions::burn_token_custody.2"(i8* %0, i8* %1), !dbg !94
  ret i8* %0, !dbg !92
}

define i8* @sol.model.anchor.program.token_messenger_minter(i8* %0) !dbg !95 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !96
  %3 = call i8* @sol.initialize.2(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"ctx:Context<InitializeContext>", i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"params:InitializeParams", i64 0, i64 0)), !dbg !98
  %4 = call i8* @sol.transfer_ownership.2(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @"ctx:Context<TransferOwnershipContext>", i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"params:TransferOwnershipParams", i64 0, i64 0)), !dbg !99
  %5 = call i8* @sol.accept_ownership.2(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"ctx:Context<AcceptOwnershipContext>", i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @"params:AcceptOwnershipParams", i64 0, i64 0)), !dbg !100
  %6 = call i8* @sol.add_remote_token_messenger.2(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @"ctx:Context<AddRemoteTokenMessengerContext>", i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @"params:AddRemoteTokenMessengerParams", i64 0, i64 0)), !dbg !101
  %7 = call i8* @sol.remove_remote_token_messenger.2(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @"ctx:Context<RemoveRemoteTokenMessengerContext>", i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @"params:RemoveRemoteTokenMessengerParams", i64 0, i64 0)), !dbg !102
  %8 = call i8* @sol.deposit_for_burn.2(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @"ctx:Context<DepositForBurnContext>", i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"params:DepositForBurnParams", i64 0, i64 0)), !dbg !103
  %9 = call i8* @sol.deposit_for_burn_with_caller.2(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @"ctx:Context<DepositForBurnContext>", i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @"params:DepositForBurnWithCallerParams", i64 0, i64 0)), !dbg !104
  %10 = call i8* @sol.replace_deposit_for_burn.2(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @"ctx:Context<ReplaceDepositForBurnContext>", i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @"params:ReplaceDepositForBurnParams", i64 0, i64 0)), !dbg !105
  %11 = call i8* @sol.handle_receive_message.2(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @"ctx:Context<HandleReceiveMessageContext>", i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @"params:HandleReceiveMessageParams", i64 0, i64 0)), !dbg !106
  %12 = call i8* @sol.set_token_controller.2(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @"ctx:Context<SetTokenControllerContext>", i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"params:SetTokenControllerParams", i64 0, i64 0)), !dbg !107
  %13 = call i8* @sol.pause.2(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @"ctx:Context<PauseContext>", i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"params:PauseParams", i64 0, i64 0)), !dbg !108
  %14 = call i8* @sol.unpause.2(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"ctx:Context<UnpauseContext>", i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"params:UnpauseParams", i64 0, i64 0)), !dbg !109
  %15 = call i8* @sol.update_pauser.2(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @"ctx:Context<UpdatePauserContext>", i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @"params:UpdatePauserParams", i64 0, i64 0)), !dbg !110
  %16 = call i8* @sol.set_max_burn_amount_per_message.2(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @"ctx:Context<SetMaxBurnAmountPerMessageContext>", i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @"params:SetMaxBurnAmountPerMessageParams", i64 0, i64 0)), !dbg !111
  %17 = call i8* @sol.add_local_token.2(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @"ctx:Context<AddLocalTokenContext>", i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"params:AddLocalTokenParams", i64 0, i64 0)), !dbg !112
  %18 = call i8* @sol.remove_local_token.2(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @"ctx:Context<RemoveLocalTokenContext>", i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @"params:RemoveLocalTokenParams", i64 0, i64 0)), !dbg !113
  %19 = call i8* @sol.link_token_pair.2(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @"ctx:Context<LinkTokenPairContext>", i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"params:LinkTokenPairParams", i64 0, i64 0)), !dbg !114
  %20 = call i8* @sol.unlink_token_pair.2(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"ctx:Context<UnlinkTokenPairContext>", i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"params:UninkTokenPairParams", i64 0, i64 0)), !dbg !115
  %21 = call i8* @sol.burn_token_custody.2(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @"ctx:Context<BurnTokenCustodyContext>", i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @"params:BurnTokenCustodyParams", i64 0, i64 0)), !dbg !116
  ret i8* %0, !dbg !96
}

define i8* @main(i8* %0) !dbg !117 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !118
  %3 = call i8* @sol.model.anchor.program.token_messenger_minter(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @program_id, i64 0, i64 0)), !dbg !118
  ret i8* %0, !dbg !118
}

define i8* @sol.model.struct.DepositForBurnWithCallerParams(i8* %0) !dbg !120 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !122
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @amount, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u64, i64 0, i64 0)), !dbg !124
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @destination_domain, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u32, i64 0, i64 0)), !dbg !125
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @mint_recipient, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Pubkey, i64 0, i64 0)), !dbg !126
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @destination_caller, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Pubkey, i64 0, i64 0)), !dbg !127
  ret i8* %0, !dbg !122
}

define i8* @"deposit_for_burn_with_caller::deposit_for_burn_with_caller.2"(i8* %0, i8* %1) !dbg !128 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"Context<DepositForBurnContext>", i64 0, i64 0)), !dbg !129
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"&DepositForBurnWithCallerParams", i64 0, i64 0)), !dbg !129
  %5 = call i8* @"sol.require_keys_neq.!3"(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @params.destination_caller, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"Pubkey::default()", i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @"TokenMessengerError::InvalidDestinationCaller", i64 0, i64 0)), !dbg !131
  %6 = call i8* @"sol.crate::token_messenger::instructions::deposit_for_burn_helper.5"(i8* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @params.amount, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @params.destination_domain, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @params.mint_recipient, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @params.destination_caller, i64 0, i64 0)), !dbg !132
  ret i8* %0, !dbg !129
}

define i8* @sol.model.struct.anchor.DepositForBurnContext(i8* %0) !dbg !133 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !135
  %3 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @0, i64 0, i64 0)), !dbg !137
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @owner, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"Signer<'info>", i64 0, i64 0)), !dbg !138
  %5 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @mut, i64 0, i64 0)), !dbg !139
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @event_rent_payer, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"Signer<'info>", i64 0, i64 0)), !dbg !140
  %7 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @"seeds=[b\22sender_authority\22],bump=token_messenger.authority_bump,", i64 0, i64 0)), !dbg !141
  %8 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @sender_authority_pda, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"UncheckedAccount<'info>", i64 0, i64 0)), !dbg !142
  %9 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @"mut,constraint=burn_token_account.mint==burn_token_mint.key(),has_one=owner", i64 0, i64 0)), !dbg !143
  %10 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @burn_token_account, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @"Box<Account<'info,TokenAccount>>", i64 0, i64 0)), !dbg !144
  %11 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @mut, i64 0, i64 0)), !dbg !145
  %12 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @message_transmitter, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @"Box<Account<'info,MessageTransmitter>>", i64 0, i64 0)), !dbg !146
  %13 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @0, i64 0, i64 0)), !dbg !147
  %14 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @token_messenger, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @"Box<Account<'info,TokenMessenger>>", i64 0, i64 0)), !dbg !148
  %15 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([113 x i8], [113 x i8]* @"constraint=params.destination_domain==remote_token_messenger.domain@TokenMessengerError::InvalidDestinationDomain", i64 0, i64 0)), !dbg !149
  %16 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @remote_token_messenger, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @"Box<Account<'info,RemoteTokenMessenger>>", i64 0, i64 0)), !dbg !150
  %17 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @0, i64 0, i64 0)), !dbg !151
  %18 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @token_minter, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"Box<Account<'info,TokenMinter>>", i64 0, i64 0)), !dbg !152
  %19 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @"mut,seeds=[b\22local_token\22,burn_token_mint.key().as_ref(),],bump=local_token.bump,", i64 0, i64 0)), !dbg !153
  %20 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @local_token, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"Box<Account<'info,LocalToken>>", i64 0, i64 0)), !dbg !154
  %21 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @mut, i64 0, i64 0)), !dbg !155
  %22 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @burn_token_mint, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @"Box<Account<'info,Mint>>", i64 0, i64 0)), !dbg !156
  %23 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @mut, i64 0, i64 0)), !dbg !157
  %24 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @message_sent_event_data, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"Signer<'info>", i64 0, i64 0)), !dbg !158
  %25 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @message_transmitter_program, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @"Program<'info,message_transmitter::program::MessageTransmitter>", i64 0, i64 0)), !dbg !159
  %26 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @token_messenger_minter_program, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @"Program<'info,program::TokenMessengerMinter>", i64 0, i64 0)), !dbg !160
  %27 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @token_program, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"Program<'info,Token>", i64 0, i64 0)), !dbg !161
  %28 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @system_program, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"Program<'info,System>", i64 0, i64 0)), !dbg !162
  ret i8* %0, !dbg !135
}

define i8* @sol.model.struct.DepositForBurnParams(i8* %0) !dbg !163 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !164
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @amount, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u64, i64 0, i64 0)), !dbg !166
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @destination_domain, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u32, i64 0, i64 0)), !dbg !167
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @mint_recipient, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Pubkey, i64 0, i64 0)), !dbg !168
  ret i8* %0, !dbg !164
}

define i8* @"deposit_for_burn::deposit_for_burn.2"(i8* %0, i8* %1) !dbg !169 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"Context<DepositForBurnContext>", i64 0, i64 0)), !dbg !170
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"&DepositForBurnParams", i64 0, i64 0)), !dbg !170
  %5 = call i8* @"sol.Pubkey::default.0"(), !dbg !172
  %6 = call i8* @sol.deposit_for_burn_helper.5(i8* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @params.amount, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @params.destination_domain, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @params.mint_recipient, i64 0, i64 0), i8* %5), !dbg !173
  ret i8* %0, !dbg !170
}

define i8* @"deposit_for_burn::deposit_for_burn_helper.anon.1"(i8* %0) !dbg !174 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !175
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @recipient, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @ctx.accounts.remote_token_messenger.token_messenger, i64 0, i64 0)), !dbg !177
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @message_body, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @burn_message, i64 0, i64 0)), !dbg !178
  %3 = call i8* @sol.model.struct.new.SendMessageParams.3(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @destination_domain, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @recipient, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @message_body, i64 0, i64 0)), !dbg !179
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @cpi_params, i64 0, i64 0), i8* %3), !dbg !180
  %4 = call i8* @"sol.message_transmitter::cpi::send_message.2"(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @cpi_ctx, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @cpi_params, i64 0, i64 0)), !dbg !181
  %5 = call i8* @sol.get.1(i8* %4), !dbg !182
  ret i8* %0, !dbg !175
}

define i8* @"deposit_for_burn::deposit_for_burn_helper.anon.2"(i8* %0) !dbg !183 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !184
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @recipient, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @ctx.accounts.remote_token_messenger.token_messenger, i64 0, i64 0)), !dbg !186
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @destination_caller, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @destination_caller, i64 0, i64 0)), !dbg !187
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @message_body, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @burn_message, i64 0, i64 0)), !dbg !188
  %3 = call i8* @sol.model.struct.new.SendMessageWithCallerParams.4(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @destination_domain, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @recipient, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @destination_caller, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @message_body, i64 0, i64 0)), !dbg !189
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @cpi_params, i64 0, i64 0), i8* %3), !dbg !190
  %4 = call i8* @"sol.message_transmitter::cpi::send_message_with_caller.2"(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @cpi_ctx, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @cpi_params, i64 0, i64 0)), !dbg !191
  %5 = call i8* @sol.get.1(i8* %4), !dbg !192
  ret i8* %0, !dbg !184
}

define i8* @"deposit_for_burn::deposit_for_burn_helper.5"(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4) !dbg !193 {
  %6 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"Context<DepositForBurnContext>", i64 0, i64 0)), !dbg !194
  %7 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @amount, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u64, i64 0, i64 0)), !dbg !194
  %8 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @destination_domain, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u32, i64 0, i64 0)), !dbg !194
  %9 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @mint_recipient, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&Pubkey", i64 0, i64 0)), !dbg !194
  %10 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @destination_caller, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&Pubkey", i64 0, i64 0)), !dbg !194
  %11 = call i8* @"sol.require_gt.!2"(i8* %1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @"0,TokenMessengerError::InvalidAmount", i64 0, i64 0)), !dbg !196
  %12 = call i8* @"sol.require_keys_neq.!3"(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"*mint_recipient", i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"Pubkey::default()", i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @"TokenMessengerError::InvalidMintRecipient", i64 0, i64 0)), !dbg !197
  %13 = call i8* @sol.to_account_info.1(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @ctx.accounts.burn_token_mint, i64 0, i64 0)), !dbg !198
  %14 = call i8* @sol.to_account_info.1(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @ctx.accounts.burn_token_account, i64 0, i64 0)), !dbg !199
  %15 = call i8* @sol.to_account_info.1(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @ctx.accounts.owner, i64 0, i64 0)), !dbg !200
  %16 = call i8* @sol.to_account_info.1(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @ctx.accounts.token_program, i64 0, i64 0)), !dbg !201
  %17 = call i8* @sol.as_mut.1(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @ctx.accounts.local_token, i64 0, i64 0)), !dbg !202
  %18 = call i8* @sol.burn.7(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @ctx.accounts.token_minter, i64 0, i64 0), i8* %13, i8* %14, i8* %15, i8* %16, i8* %17, i8* %1), !dbg !203
  %19 = call i8* @sol.key.1(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @ctx.accounts.burn_token_mint, i64 0, i64 0)), !dbg !204
  %20 = call i8* @sol.key.1(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @ctx.accounts.owner, i64 0, i64 0)), !dbg !205
  %21 = call i8* @"sol.BurnMessage::format_message.5"(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @ctx.accounts.token_messenger.message_body_version, i64 0, i64 0), i8* %19, i8* %3, i8* %1, i8* %20), !dbg !206
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @burn_message, i64 0, i64 0), i8* %21), !dbg !207
  %22 = call i8* @sol.to_account_info.1(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @ctx.accounts.message_transmitter_program, i64 0, i64 0)), !dbg !208
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @cpi_program, i64 0, i64 0), i8* %22), !dbg !209
  %23 = call i8* @sol.to_account_info.1(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @ctx.accounts.event_rent_payer, i64 0, i64 0)), !dbg !210
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @event_rent_payer, i64 0, i64 0), i8* %23), !dbg !211
  %24 = call i8* @sol.to_account_info.1(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @ctx.accounts.sender_authority_pda, i64 0, i64 0)), !dbg !212
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @sender_authority_pda, i64 0, i64 0), i8* %24), !dbg !213
  %25 = call i8* @sol.to_account_info.1(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @ctx.accounts.message_transmitter, i64 0, i64 0)), !dbg !214
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @message_transmitter, i64 0, i64 0), i8* %25), !dbg !215
  %26 = call i8* @sol.to_account_info.1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @ctx.accounts.message_sent_event_data, i64 0, i64 0)), !dbg !216
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @message_sent_event_data, i64 0, i64 0), i8* %26), !dbg !217
  %27 = call i8* @sol.to_account_info.1(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @ctx.accounts.token_messenger_minter_program, i64 0, i64 0)), !dbg !218
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @sender_program, i64 0, i64 0), i8* %27), !dbg !219
  %28 = call i8* @sol.to_account_info.1(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @ctx.accounts.system_program, i64 0, i64 0)), !dbg !220
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @system_program, i64 0, i64 0), i8* %28), !dbg !221
  %29 = call i8* @sol.model.struct.new.SendMessageContext.6(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @event_rent_payer, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @sender_authority_pda, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @message_transmitter, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @message_sent_event_data, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @sender_program, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @system_program, i64 0, i64 0)), !dbg !222
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @cpi_accounts, i64 0, i64 0), i8* %29), !dbg !223
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @authority_seeds, i64 0, i64 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @"[&[b\22sender_authority\22,&[ctx.accounts.token_messenger.authority_bump],]]", i64 0, i64 0)), !dbg !224
  %30 = call i8* @"sol.CpiContext::new_with_signer.3"(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @cpi_program, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @cpi_accounts, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @authority_seeds, i64 0, i64 0)), !dbg !225
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @cpi_ctx, i64 0, i64 0), i8* %30), !dbg !226
  %31 = call i8* @"sol.Pubkey::default.0"(), !dbg !227
  %32 = call i8* @"sol.=="(i8* %4, i8* %31), !dbg !228
  %33 = call i8* @sol.if(i8* %32), !dbg !229
  %34 = call i8* @"sol.deposit_for_burn::deposit_for_burn_helper.anon.1"(i8* %33), !dbg !230
  %35 = call i8* @sol.ifTrue.anon.(i8* %34), !dbg !230
  %36 = call i8* @"sol.deposit_for_burn::deposit_for_burn_helper.anon.2"(i8* %35), !dbg !231
  %37 = call i8* @sol.ifFalse.anon.(i8* %36), !dbg !231
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @nonce, i64 0, i64 0), i8* %37), !dbg !232
  %38 = call i8* @"sol.emit_cpi.!2"(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"DepositForBurn{nonce", i64 0, i64 0), i8* getelementptr inbounds ([258 x i8], [258 x i8]* @"burn_token:ctx.accounts.burn_token_mint.key(),amount,depositor:ctx.accounts.owner.key(),mint_recipient:*mint_recipient,destination_domain,destination_token_messenger:ctx.accounts.remote_token_messenger.token_messenger,destination_caller:*destination_caller,}", i64 0, i64 0)), !dbg !233
  %39 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @nonce, i64 0, i64 0)), !dbg !234
  ret i8* %0, !dbg !194
}

define i8* @sol.model.struct.anchor.InitializeContext(i8* %0) !dbg !235 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !237
  %3 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @mut, i64 0, i64 0)), !dbg !239
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @payer, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"Signer<'info>", i64 0, i64 0)), !dbg !240
  %5 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @0, i64 0, i64 0)), !dbg !241
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @upgrade_authority, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"Signer<'info>", i64 0, i64 0)), !dbg !242
  %7 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @"seeds=[b\22sender_authority\22],bump", i64 0, i64 0)), !dbg !243
  %8 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @authority_pda, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"UncheckedAccount<'info>", i64 0, i64 0)), !dbg !244
  %9 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @"init,payer=payer,space=utils::DISCRIMINATOR_SIZE+TokenMessenger::INIT_SPACE,seeds=[b\22token_messenger\22],bump", i64 0, i64 0)), !dbg !245
  %10 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @token_messenger, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @"Box<Account<'info,TokenMessenger>>", i64 0, i64 0)), !dbg !246
  %11 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([101 x i8], [101 x i8]* @"init,payer=payer,space=utils::DISCRIMINATOR_SIZE+TokenMinter::INIT_SPACE,seeds=[b\22token_minter\22],bump", i64 0, i64 0)), !dbg !247
  %12 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @token_minter, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"Box<Account<'info,TokenMinter>>", i64 0, i64 0)), !dbg !248
  %13 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @0, i64 0, i64 0)), !dbg !249
  %14 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @token_messenger_minter_program_data, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !250
  %15 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @token_messenger_minter_program, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @"Program<'info,program::TokenMessengerMinter>", i64 0, i64 0)), !dbg !251
  %16 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @system_program, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"Program<'info,System>", i64 0, i64 0)), !dbg !252
  ret i8* %0, !dbg !237
}

define i8* @sol.model.struct.InitializeParams(i8* %0) !dbg !253 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !254
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @token_controller, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Pubkey, i64 0, i64 0)), !dbg !256
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @local_message_transmitter, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Pubkey, i64 0, i64 0)), !dbg !257
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @message_body_version, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u32, i64 0, i64 0)), !dbg !258
  ret i8* %0, !dbg !254
}

define i8* @"initialize::initialize.2"(i8* %0, i8* %1) !dbg !259 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"Context<InitializeContext>", i64 0, i64 0)), !dbg !260
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"&InitializeParams", i64 0, i64 0)), !dbg !260
  %5 = call i8* @sol.key.1(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @ctx.accounts.upgrade_authority, i64 0, i64 0)), !dbg !262
  %6 = call i8* @sol.to_account_info.1(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @ctx.accounts.token_messenger_minter_program_data, i64 0, i64 0)), !dbg !263
  %7 = call i8* @sol.to_account_info.1(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @ctx.accounts.token_messenger_minter_program, i64 0, i64 0)), !dbg !264
  %8 = call i8* @"sol.message_transmitter::utils::validate_upgrade_authority.3"(i8* %5, i8* %6, i8* %7), !dbg !265
  %9 = call i8* @sol.key.1(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @ctx.accounts.upgrade_authority, i64 0, i64 0)), !dbg !266
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @authority, i64 0, i64 0), i8* %9), !dbg !267
  %10 = call i8* @sol.as_mut.1(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @ctx.accounts.token_messenger, i64 0, i64 0)), !dbg !268
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @token_messenger, i64 0, i64 0), i8* %10), !dbg !269
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @token_messenger.owner, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @authority, i64 0, i64 0)), !dbg !270
  %11 = call i8* @"sol.Pubkey::default.0"(), !dbg !271
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @token_messenger.pending_owner, i64 0, i64 0), i8* %11), !dbg !272
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @token_messenger.local_message_transmitter, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @params.local_message_transmitter, i64 0, i64 0)), !dbg !273
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @token_messenger.message_body_version, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @params.message_body_version, i64 0, i64 0)), !dbg !274
  %12 = call i8* @sol.get.2(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @ctx.bumps, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"\22authority_pda\22", i64 0, i64 0)), !dbg !275
  %13 = call i8* @sol.ok_or.2(i8* %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"ProgramError::InvalidSeeds", i64 0, i64 0)), !dbg !276
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @token_messenger.authority_bump, i64 0, i64 0), i8* %13), !dbg !277
  %14 = call i8* @"sol.require.!2"(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"token_messenger.validate()", i64 0, i64 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @"TokenMessengerError::InvalidTokenMessengerState", i64 0, i64 0)), !dbg !278
  %15 = call i8* @sol.as_mut.1(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @ctx.accounts.token_minter, i64 0, i64 0)), !dbg !279
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @token_minter, i64 0, i64 0), i8* %15), !dbg !280
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @token_minter.token_controller, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @params.token_controller, i64 0, i64 0)), !dbg !281
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @token_minter.pauser, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @authority, i64 0, i64 0)), !dbg !282
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @token_minter.paused, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @false, i64 0, i64 0)), !dbg !283
  %16 = call i8* @sol.get.2(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @ctx.bumps, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"\22token_minter\22", i64 0, i64 0)), !dbg !284
  %17 = call i8* @sol.ok_or.2(i8* %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"ProgramError::InvalidSeeds", i64 0, i64 0)), !dbg !285
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @token_minter.bump, i64 0, i64 0), i8* %17), !dbg !286
  %18 = call i8* @"sol.require.!2"(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"token_minter.validate()", i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @"TokenMinterError::InvalidTokenMinterState", i64 0, i64 0)), !dbg !287
  %19 = call i8* @"sol.emit_cpi.!1"(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @"SetTokenController{token_controller:params.token_controller}", i64 0, i64 0)), !dbg !288
  %20 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"()", i64 0, i64 0)), !dbg !289
  ret i8* %0, !dbg !260
}

define i8* @sol.model.struct.anchor.AddRemoteTokenMessengerContext(i8* %0) !dbg !290 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !292
  %3 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @mut, i64 0, i64 0)), !dbg !294
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @payer, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"Signer<'info>", i64 0, i64 0)), !dbg !295
  %5 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @0, i64 0, i64 0)), !dbg !296
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @owner, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"Signer<'info>", i64 0, i64 0)), !dbg !297
  %7 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @"has_one=owner@TokenMessengerError::InvalidAuthority", i64 0, i64 0)), !dbg !298
  %8 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @token_messenger, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @"Box<Account<'info,TokenMessenger>>", i64 0, i64 0)), !dbg !299
  %9 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([157 x i8], [157 x i8]* @"init,payer=payer,space=utils::DISCRIMINATOR_SIZE+RemoteTokenMessenger::INIT_SPACE,seeds=[b\22remote_token_messenger\22,params.domain.to_string().as_bytes()],bump", i64 0, i64 0)), !dbg !300
  %10 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @remote_token_messenger, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @"Box<Account<'info,RemoteTokenMessenger>>", i64 0, i64 0)), !dbg !301
  %11 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @system_program, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"Program<'info,System>", i64 0, i64 0)), !dbg !302
  ret i8* %0, !dbg !292
}

define i8* @sol.model.struct.AddRemoteTokenMessengerParams(i8* %0) !dbg !303 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !304
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @domain, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u32, i64 0, i64 0)), !dbg !306
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @token_messenger, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Pubkey, i64 0, i64 0)), !dbg !307
  ret i8* %0, !dbg !304
}

define i8* @"add_remote_token_messenger::add_remote_token_messenger.2"(i8* %0, i8* %1) !dbg !308 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @"Context<AddRemoteTokenMessengerContext>", i64 0, i64 0)), !dbg !309
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"&AddRemoteTokenMessengerParams", i64 0, i64 0)), !dbg !309
  %5 = call i8* @sol.as_mut.1(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @ctx.accounts.remote_token_messenger, i64 0, i64 0)), !dbg !311
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @remote_token_messenger, i64 0, i64 0), i8* %5), !dbg !312
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @remote_token_messenger.domain, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @params.domain, i64 0, i64 0)), !dbg !313
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @remote_token_messenger.token_messenger, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @params.token_messenger, i64 0, i64 0)), !dbg !314
  %6 = call i8* @"sol.require.!2"(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @"remote_token_messenger.validate()", i64 0, i64 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @"TokenMessengerError::InvalidTokenMessengerState", i64 0, i64 0)), !dbg !315
  %7 = call i8* @"sol.emit_cpi.!2"(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @"RemoteTokenMessengerAdded{domain:params.domain", i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @"token_messenger:params.token_messenger}", i64 0, i64 0)), !dbg !316
  %8 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"()", i64 0, i64 0)), !dbg !317
  ret i8* %0, !dbg !309
}

define i8* @sol.model.struct.anchor.ReplaceDepositForBurnContext(i8* %0) !dbg !318 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !320
  %3 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @0, i64 0, i64 0)), !dbg !322
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @owner, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"Signer<'info>", i64 0, i64 0)), !dbg !323
  %5 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @mut, i64 0, i64 0)), !dbg !324
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @event_rent_payer, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"Signer<'info>", i64 0, i64 0)), !dbg !325
  %7 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @"seeds=[b\22sender_authority\22],bump=token_messenger.authority_bump,", i64 0, i64 0)), !dbg !326
  %8 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @sender_authority_pda, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"UncheckedAccount<'info>", i64 0, i64 0)), !dbg !327
  %9 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @mut, i64 0, i64 0)), !dbg !328
  %10 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @message_transmitter, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @"Box<Account<'info,MessageTransmitter>>", i64 0, i64 0)), !dbg !329
  %11 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @0, i64 0, i64 0)), !dbg !330
  %12 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @token_messenger, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @"Box<Account<'info,TokenMessenger>>", i64 0, i64 0)), !dbg !331
  %13 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @mut, i64 0, i64 0)), !dbg !332
  %14 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @message_sent_event_data, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"Signer<'info>", i64 0, i64 0)), !dbg !333
  %15 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @message_transmitter_program, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @"Program<'info,message_transmitter::program::MessageTransmitter>", i64 0, i64 0)), !dbg !334
  %16 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @token_messenger_minter_program, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @"Program<'info,program::TokenMessengerMinter>", i64 0, i64 0)), !dbg !335
  %17 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @system_program, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"Program<'info,System>", i64 0, i64 0)), !dbg !336
  ret i8* %0, !dbg !320
}

define i8* @sol.model.struct.ReplaceDepositForBurnParams(i8* %0) !dbg !337 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !338
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @original_message, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"Vec<u8>", i64 0, i64 0)), !dbg !340
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @original_attestation, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"Vec<u8>", i64 0, i64 0)), !dbg !341
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @new_destination_caller, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Pubkey, i64 0, i64 0)), !dbg !342
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @new_mint_recipient, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Pubkey, i64 0, i64 0)), !dbg !343
  ret i8* %0, !dbg !338
}

define i8* @"replace_deposit_for_burn::replace_deposit_for_burn.2"(i8* %0, i8* %1) !dbg !344 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @"Context<ReplaceDepositForBurnContext>", i64 0, i64 0)), !dbg !345
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @"&ReplaceDepositForBurnParams", i64 0, i64 0)), !dbg !345
  %5 = call i8* @sol.as_ref.1(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @ctx.accounts.message_transmitter, i64 0, i64 0)), !dbg !347
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @message_transmitter, i64 0, i64 0), i8* %5), !dbg !348
  %6 = call i8* @sol.as_ref.1(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @ctx.accounts.token_messenger, i64 0, i64 0)), !dbg !349
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @token_messenger, i64 0, i64 0), i8* %6), !dbg !350
  %7 = call i8* @"sol.Message::new.2"(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @message_transmitter.version, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @params.original_message, i64 0, i64 0)), !dbg !351
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @message, i64 0, i64 0), i8* %7), !dbg !352
  %8 = call i8* @sol.message_body.1(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @message, i64 0, i64 0)), !dbg !353
  %9 = call i8* @"sol.BurnMessage::new.2"(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @token_messenger.message_body_version, i64 0, i64 0), i8* %8), !dbg !354
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @burn_message, i64 0, i64 0), i8* %9), !dbg !355
  %10 = call i8* @sol.message_sender.1(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @burn_message, i64 0, i64 0)), !dbg !356
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @original_message_sender, i64 0, i64 0), i8* %10), !dbg !357
  %11 = call i8* @"sol.require_keys_eq.!3"(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @original_message_sender, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @"ctx.accounts.owner.key()", i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @"TokenMessengerError::InvalidSender", i64 0, i64 0)), !dbg !358
  %12 = call i8* @"sol.require_keys_neq.!3"(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @params.new_mint_recipient, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"Pubkey::default()", i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @"TokenMessengerError::InvalidMintRecipient", i64 0, i64 0)), !dbg !359
  %13 = call i8* @sol.burn_token.1(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @burn_message, i64 0, i64 0)), !dbg !360
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @burn_token, i64 0, i64 0), i8* %13), !dbg !361
  %14 = call i8* @sol.amount.1(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @burn_message, i64 0, i64 0)), !dbg !362
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @amount, i64 0, i64 0), i8* %14), !dbg !363
  %15 = call i8* @"sol.BurnMessage::format_message.5"(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @token_messenger.message_body_version, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @burn_token, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @params.new_mint_recipient, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @amount, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @original_message_sender, i64 0, i64 0)), !dbg !364
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @new_message_body, i64 0, i64 0), i8* %15), !dbg !365
  %16 = call i8* @sol.to_account_info.1(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @ctx.accounts.message_transmitter_program, i64 0, i64 0)), !dbg !366
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @cpi_program, i64 0, i64 0), i8* %16), !dbg !367
  %17 = call i8* @sol.to_account_info.1(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @ctx.accounts.event_rent_payer, i64 0, i64 0)), !dbg !368
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @event_rent_payer, i64 0, i64 0), i8* %17), !dbg !369
  %18 = call i8* @sol.to_account_info.1(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @ctx.accounts.sender_authority_pda, i64 0, i64 0)), !dbg !370
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @sender_authority_pda, i64 0, i64 0), i8* %18), !dbg !371
  %19 = call i8* @sol.to_account_info.1(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @ctx.accounts.message_transmitter, i64 0, i64 0)), !dbg !372
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @message_transmitter, i64 0, i64 0), i8* %19), !dbg !373
  %20 = call i8* @sol.to_account_info.1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @ctx.accounts.message_sent_event_data, i64 0, i64 0)), !dbg !374
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @message_sent_event_data, i64 0, i64 0), i8* %20), !dbg !375
  %21 = call i8* @sol.to_account_info.1(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @ctx.accounts.token_messenger_minter_program, i64 0, i64 0)), !dbg !376
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @sender_program, i64 0, i64 0), i8* %21), !dbg !377
  %22 = call i8* @sol.to_account_info.1(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @ctx.accounts.system_program, i64 0, i64 0)), !dbg !378
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @system_program, i64 0, i64 0), i8* %22), !dbg !379
  %23 = call i8* @sol.model.struct.new.ReplaceMessageContext.6(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @event_rent_payer, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @sender_authority_pda, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @message_transmitter, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @message_sent_event_data, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @sender_program, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @system_program, i64 0, i64 0)), !dbg !380
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @cpi_accounts, i64 0, i64 0), i8* %23), !dbg !381
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @authority_seeds, i64 0, i64 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @"[&[b\22sender_authority\22,&[ctx.accounts.token_messenger.authority_bump],]]", i64 0, i64 0)), !dbg !382
  %24 = call i8* @"sol.CpiContext::new_with_signer.3"(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @cpi_program, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @cpi_accounts, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @authority_seeds, i64 0, i64 0)), !dbg !383
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @cpi_ctx, i64 0, i64 0), i8* %24), !dbg !384
  %25 = call i8* @sol.clone.1(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @params.original_message, i64 0, i64 0)), !dbg !385
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @original_message, i64 0, i64 0), i8* %25), !dbg !386
  %26 = call i8* @sol.clone.1(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @params.original_attestation, i64 0, i64 0)), !dbg !387
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @original_attestation, i64 0, i64 0), i8* %26), !dbg !388
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @new_destination_caller, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @params.new_destination_caller, i64 0, i64 0)), !dbg !389
  %27 = call i8* @sol.model.struct.new.ReplaceMessageParams.4(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @original_message, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @original_attestation, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @new_message_body, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @new_destination_caller, i64 0, i64 0)), !dbg !390
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @cpi_params, i64 0, i64 0), i8* %27), !dbg !391
  %28 = call i8* @"sol.message_transmitter::cpi::replace_message.2"(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @cpi_ctx, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @cpi_params, i64 0, i64 0)), !dbg !392
  %29 = call i8* @sol.get.1(i8* %28), !dbg !393
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @nonce, i64 0, i64 0), i8* %29), !dbg !394
  %30 = call i8* @"sol.emit_cpi.!2"(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"DepositForBurn{nonce", i64 0, i64 0), i8* getelementptr inbounds ([241 x i8], [241 x i8]* @"burn_token,amount,depositor:original_message_sender,mint_recipient:params.new_mint_recipient,destination_domain:message.destination_domain()?,destination_token_messenger:message.recipient()?,destination_caller:params.new_destination_caller,}", i64 0, i64 0)), !dbg !395
  %31 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @nonce, i64 0, i64 0)), !dbg !396
  ret i8* %0, !dbg !345
}

define i8* @sol.model.struct.anchor.TransferOwnershipContext(i8* %0) !dbg !397 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !399
  %3 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @0, i64 0, i64 0)), !dbg !401
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @owner, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"Signer<'info>", i64 0, i64 0)), !dbg !402
  %5 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @"mut,has_one=owner@TokenMessengerError::InvalidAuthority", i64 0, i64 0)), !dbg !403
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @token_messenger, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @"Box<Account<'info,TokenMessenger>>", i64 0, i64 0)), !dbg !404
  ret i8* %0, !dbg !399
}

define i8* @sol.model.struct.TransferOwnershipParams(i8* %0) !dbg !405 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !406
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @new_owner, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Pubkey, i64 0, i64 0)), !dbg !408
  ret i8* %0, !dbg !406
}

define i8* @"transfer_ownership::transfer_ownership.anon.1"(i8* %0) !dbg !409 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !410
  %3 = call i8* @"sol.model.macro.err.!1"(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"(TokenMessengerError::InvalidOwner)", i64 0, i64 0)), !dbg !412
  %4 = call i8* @sol.return.1(i8* %3), !dbg !413
  ret i8* %0, !dbg !410
}

define i8* @"transfer_ownership::transfer_ownership.2"(i8* %0, i8* %1) !dbg !414 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @"Context<TransferOwnershipContext>", i64 0, i64 0)), !dbg !415
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @"&TransferOwnershipParams", i64 0, i64 0)), !dbg !415
  %5 = call i8* @sol.contains.2(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @"[Pubkey::default(),ctx.accounts.owner.key(),ctx.accounts.token_messenger.pending_owner,]", i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @params.new_owner, i64 0, i64 0)), !dbg !417
  %6 = call i8* @sol.if(i8* %5), !dbg !418
  %7 = call i8* @"sol.transfer_ownership::transfer_ownership.anon.1"(i8* %6), !dbg !419
  %8 = call i8* @sol.ifTrue.anon.(i8* %7), !dbg !419
  %9 = call i8* @sol.as_mut.1(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @ctx.accounts.token_messenger, i64 0, i64 0)), !dbg !420
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @token_messenger, i64 0, i64 0), i8* %9), !dbg !421
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @token_messenger.pending_owner, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @params.new_owner, i64 0, i64 0)), !dbg !422
  %10 = call i8* @"sol.emit_cpi.!2"(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @"OwnershipTransferStarted{previous_owner:token_messenger.owner", i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @"new_owner:token_messenger.pending_owner}", i64 0, i64 0)), !dbg !423
  %11 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"()", i64 0, i64 0)), !dbg !424
  ret i8* %0, !dbg !415
}

define i8* @sol.model.struct.anchor.HandleReceiveMessageContext(i8* %0) !dbg !425 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !427
  %3 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([125 x i8], [125 x i8]* @"seeds=[b\22message_transmitter_authority\22,crate::ID.as_ref()],bump=params.authority_bump,seeds::program=message_transmitter::ID", i64 0, i64 0)), !dbg !429
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @authority_pda, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"Signer<'info>", i64 0, i64 0)), !dbg !430
  %5 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @0, i64 0, i64 0)), !dbg !431
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @token_messenger, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @"Box<Account<'info,TokenMessenger>>", i64 0, i64 0)), !dbg !432
  %7 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([108 x i8], [108 x i8]* @"constraint=params.remote_domain==remote_token_messenger.domain@TokenMessengerError::InvalidDestinationDomain", i64 0, i64 0)), !dbg !433
  %8 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @remote_token_messenger, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @"Box<Account<'info,RemoteTokenMessenger>>", i64 0, i64 0)), !dbg !434
  %9 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @0, i64 0, i64 0)), !dbg !435
  %10 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @token_minter, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"Box<Account<'info,TokenMinter>>", i64 0, i64 0)), !dbg !436
  %11 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @"mut,seeds=[b\22local_token\22,local_token.mint.key().as_ref()],bump=local_token.bump", i64 0, i64 0)), !dbg !437
  %12 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @local_token, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"Box<Account<'info,LocalToken>>", i64 0, i64 0)), !dbg !438
  %13 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([278 x i8], [278 x i8]* @"constraint=token_pair.local_token==local_token.key()@TokenMessengerError::InvalidTokenPair,seeds=[b\22token_pair\22,params.remote_domain.to_string().as_bytes(),BurnMessage::new(token_messenger.message_body_version,&params.message_body)?.burn_token()?.as_ref()],bump=token_pair.bump,", i64 0, i64 0)), !dbg !439
  %14 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @token_pair, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @"Box<Account<'info,TokenPair>>", i64 0, i64 0)), !dbg !440
  %15 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @"mut,constraint=recipient_token_account.mint==local_token.mint", i64 0, i64 0)), !dbg !441
  %16 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @recipient_token_account, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @"Box<Account<'info,TokenAccount>>", i64 0, i64 0)), !dbg !442
  %17 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([134 x i8], [134 x i8]* @"mut,constraint=custody_token_account.mint==local_token.mint,seeds=[b\22custody\22,local_token.mint.as_ref()],bump=local_token.custody_bump", i64 0, i64 0)), !dbg !443
  %18 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @custody_token_account, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @"Box<Account<'info,TokenAccount>>", i64 0, i64 0)), !dbg !444
  %19 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @token_program, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"Program<'info,Token>", i64 0, i64 0)), !dbg !445
  ret i8* %0, !dbg !427
}

define i8* @sol.model.struct.HandleReceiveMessageParams(i8* %0) !dbg !446 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !447
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @remote_domain, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u32, i64 0, i64 0)), !dbg !449
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @sender, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Pubkey, i64 0, i64 0)), !dbg !450
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @message_body, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"Vec<u8>", i64 0, i64 0)), !dbg !451
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @authority_bump, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @u8, i64 0, i64 0)), !dbg !452
  ret i8* %0, !dbg !447
}

define i8* @"handle_receive_message::handle_receive_message.2"(i8* %0, i8* %1) !dbg !453 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @"Context<HandleReceiveMessageContext>", i64 0, i64 0)), !dbg !454
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"&HandleReceiveMessageParams", i64 0, i64 0)), !dbg !454
  %5 = call i8* @"sol.require_eq.!2"(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @params.sender, i64 0, i64 0), i8* getelementptr inbounds ([94 x i8], [94 x i8]* @"ctx.accounts.remote_token_messenger.token_messenger,TokenMessengerError::InvalidTokenMessenger", i64 0, i64 0)), !dbg !456
  %6 = call i8* @"sol.BurnMessage::new.2"(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @ctx.accounts.token_messenger.message_body_version, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @params.message_body, i64 0, i64 0)), !dbg !457
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @burn_message, i64 0, i64 0), i8* %6), !dbg !458
  %7 = call i8* @sol.mint_recipient.1(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @burn_message, i64 0, i64 0)), !dbg !459
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @mint_recipient, i64 0, i64 0), i8* %7), !dbg !460
  %8 = call i8* @sol.amount.1(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @burn_message, i64 0, i64 0)), !dbg !461
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @amount, i64 0, i64 0), i8* %8), !dbg !462
  %9 = call i8* @"sol.require_keys_eq.!2"(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @"ctx.accounts.recipient_token_account.key()", i64 0, i64 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @"mint_recipient,TokenMessengerError::InvalidMintRecipient", i64 0, i64 0)), !dbg !463
  %10 = call i8* @sol.to_account_info.1(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @ctx.accounts.custody_token_account, i64 0, i64 0)), !dbg !464
  %11 = call i8* @sol.to_account_info.1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @ctx.accounts.recipient_token_account, i64 0, i64 0)), !dbg !465
  %12 = call i8* @sol.to_account_info.1(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @ctx.accounts.token_minter, i64 0, i64 0)), !dbg !466
  %13 = call i8* @sol.to_account_info.1(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @ctx.accounts.token_program, i64 0, i64 0)), !dbg !467
  %14 = call i8* @sol.as_mut.1(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @ctx.accounts.local_token, i64 0, i64 0)), !dbg !468
  %15 = call i8* @sol.transfer.7(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @ctx.accounts.token_minter, i64 0, i64 0), i8* %10, i8* %11, i8* %12, i8* %13, i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @amount, i64 0, i64 0)), !dbg !469
  %16 = call i8* @"sol.emit_cpi.!2"(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"MintAndWithdraw{mint_recipient", i64 0, i64 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @"amount,mint_token:ctx.accounts.local_token.mint}", i64 0, i64 0)), !dbg !470
  %17 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"()", i64 0, i64 0)), !dbg !471
  ret i8* %0, !dbg !454
}

define i8* @sol.model.struct.anchor.RemoveRemoteTokenMessengerContext(i8* %0) !dbg !472 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !474
  %3 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @mut, i64 0, i64 0)), !dbg !476
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @payee, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"Signer<'info>", i64 0, i64 0)), !dbg !477
  %5 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @0, i64 0, i64 0)), !dbg !478
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @owner, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"Signer<'info>", i64 0, i64 0)), !dbg !479
  %7 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @"has_one=owner@TokenMessengerError::InvalidAuthority", i64 0, i64 0)), !dbg !480
  %8 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @token_messenger, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @"Box<Account<'info,TokenMessenger>>", i64 0, i64 0)), !dbg !481
  %9 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([108 x i8], [108 x i8]* @"mut,seeds=[b\22remote_token_messenger\22,remote_token_messenger.domain.to_string().as_bytes(),],bump,close=payee", i64 0, i64 0)), !dbg !482
  %10 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @remote_token_messenger, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @"Box<Account<'info,RemoteTokenMessenger>>", i64 0, i64 0)), !dbg !483
  ret i8* %0, !dbg !474
}

define i8* @sol.model.struct.RemoveRemoteTokenMessengerParams(i8* %0) !dbg !484 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !485
  ret i8* %0, !dbg !485
}

define i8* @"remove_remote_token_messenger::remove_remote_token_messenger.2"(i8* %0, i8* %1) !dbg !487 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @"Context<RemoveRemoteTokenMessengerContext>", i64 0, i64 0)), !dbg !488
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_params, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @"&RemoveRemoteTokenMessengerParams", i64 0, i64 0)), !dbg !488
  %5 = call i8* @"sol.emit_cpi.!2"(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @"RemoteTokenMessengerRemoved{domain:ctx.accounts.remote_token_messenger.domain", i64 0, i64 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @"token_messenger:ctx.accounts.remote_token_messenger.token_messenger}", i64 0, i64 0)), !dbg !490
  %6 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"()", i64 0, i64 0)), !dbg !491
  ret i8* %0, !dbg !488
}

define i8* @sol.model.struct.anchor.AcceptOwnershipContext(i8* %0) !dbg !492 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !494
  %3 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @0, i64 0, i64 0)), !dbg !496
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @pending_owner, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"Signer<'info>", i64 0, i64 0)), !dbg !497
  %5 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @"mut,has_one=pending_owner@TokenMessengerError::InvalidAuthority", i64 0, i64 0)), !dbg !498
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @token_messenger, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @"Box<Account<'info,TokenMessenger>>", i64 0, i64 0)), !dbg !499
  ret i8* %0, !dbg !494
}

define i8* @sol.model.struct.AcceptOwnershipParams(i8* %0) !dbg !500 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !501
  ret i8* %0, !dbg !501
}

define i8* @"accept_ownership::accept_ownership.2"(i8* %0, i8* %1) !dbg !503 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"Context<AcceptOwnershipContext>", i64 0, i64 0)), !dbg !504
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_params, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @"&AcceptOwnershipParams", i64 0, i64 0)), !dbg !504
  %5 = call i8* @sol.as_mut.1(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @ctx.accounts.token_messenger, i64 0, i64 0)), !dbg !506
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @token_messenger, i64 0, i64 0), i8* %5), !dbg !507
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @previous_owner, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @token_messenger.owner, i64 0, i64 0)), !dbg !508
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @token_messenger.owner, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @token_messenger.pending_owner, i64 0, i64 0)), !dbg !509
  %6 = call i8* @"sol.Pubkey::default.0"(), !dbg !510
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @token_messenger.pending_owner, i64 0, i64 0), i8* %6), !dbg !511
  %7 = call i8* @"sol.emit_cpi.!2"(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"OwnershipTransferred{previous_owner", i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @"new_owner:token_messenger.owner}", i64 0, i64 0)), !dbg !512
  %8 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"()", i64 0, i64 0)), !dbg !513
  ret i8* %0, !dbg !504
}

define i8* @sol.model.struct.anchor.TokenMessenger(i8* %0) !dbg !514 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !516
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @owner, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Pubkey, i64 0, i64 0)), !dbg !518
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @pending_owner, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Pubkey, i64 0, i64 0)), !dbg !519
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @local_message_transmitter, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Pubkey, i64 0, i64 0)), !dbg !520
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @message_body_version, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u32, i64 0, i64 0)), !dbg !521
  %7 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @authority_bump, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @u8, i64 0, i64 0)), !dbg !522
  ret i8* %0, !dbg !516
}

define i8* @sol.model.struct.TokenMessenger(i8* %0) !dbg !523 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !524
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @owner, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Pubkey, i64 0, i64 0)), !dbg !526
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @pending_owner, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Pubkey, i64 0, i64 0)), !dbg !527
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @local_message_transmitter, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Pubkey, i64 0, i64 0)), !dbg !528
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @message_body_version, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u32, i64 0, i64 0)), !dbg !529
  %7 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @authority_bump, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @u8, i64 0, i64 0)), !dbg !530
  ret i8* %0, !dbg !524
}

define i8* @sol.model.struct.anchor.RemoteTokenMessenger(i8* %0) !dbg !531 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !532
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @domain, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u32, i64 0, i64 0)), !dbg !534
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @token_messenger, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Pubkey, i64 0, i64 0)), !dbg !535
  ret i8* %0, !dbg !532
}

define i8* @sol.model.struct.RemoteTokenMessenger(i8* %0) !dbg !536 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !537
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @domain, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u32, i64 0, i64 0)), !dbg !539
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @token_messenger, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Pubkey, i64 0, i64 0)), !dbg !540
  ret i8* %0, !dbg !537
}

define i8* @"state::TokenMessenger::validate.1"(i8* %0) !dbg !541 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0)), !dbg !542
  %3 = call i8* @"sol.Pubkey::default.0"(), !dbg !544
  %4 = call i8* @"sol.!="(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @self.owner, i64 0, i64 0), i8* %3), !dbg !545
  %5 = call i8* @"sol.Pubkey::default.0"(), !dbg !546
  %6 = call i8* @"sol.!="(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @self.local_message_transmitter, i64 0, i64 0), i8* %5), !dbg !547
  %7 = call i8* @"sol.&&"(i8* %4, i8* %6), !dbg !545
  ret i8* %0, !dbg !542
}

define i8* @"state::RemoteTokenMessenger::validate.1"(i8* %0) !dbg !548 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0)), !dbg !549
  %3 = call i8* @"sol.Pubkey::default.0"(), !dbg !551
  %4 = call i8* @"sol.!="(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @self.token_messenger, i64 0, i64 0), i8* %3), !dbg !552
  ret i8* %0, !dbg !549
}

define i8* @sol.model.struct.BurnMessage(i8* %0) !dbg !553 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !555
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @data, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&'a[u8]", i64 0, i64 0)), !dbg !557
  ret i8* %0, !dbg !555
}

define i8* @"burn_message::BurnMessage::new.2"(i8* %0, i8* %1) !dbg !558 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @expected_version, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u32, i64 0, i64 0)), !dbg !559
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @message_bytes, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&'a[u8]", i64 0, i64 0)), !dbg !559
  %5 = call i8* @"sol.require_eq.!2"(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"message_bytes.len()", i64 0, i64 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @"Self::BURN_MESSAGE_LEN,TokenMessengerError::MalformedMessage", i64 0, i64 0)), !dbg !561
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @data, i64 0, i64 0), i8* %1), !dbg !562
  %6 = call i8* @sol.model.struct.new.Self.1(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @data, i64 0, i64 0)), !dbg !563
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @message, i64 0, i64 0), i8* %6), !dbg !564
  %7 = call i8* @"sol.require_eq.!3"(i8* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"message.version()?", i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @"TokenMessengerError::InvalidMessageBodyVersion", i64 0, i64 0)), !dbg !565
  %8 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @message, i64 0, i64 0)), !dbg !566
  ret i8* %0, !dbg !559
}

define i8* @"burn_message::BurnMessage::format_message.5"(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4) !dbg !567 {
  %6 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @version, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u32, i64 0, i64 0)), !dbg !568
  %7 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @burn_token, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&Pubkey", i64 0, i64 0)), !dbg !568
  %8 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @mint_recipient, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&Pubkey", i64 0, i64 0)), !dbg !568
  %9 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @amount, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u64, i64 0, i64 0)), !dbg !568
  %10 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @message_sender, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&Pubkey", i64 0, i64 0)), !dbg !568
  %11 = call i8* @"sol.model.macro.vec.!1"(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"[0;Self::BURN_MESSAGE_LEN]", i64 0, i64 0)), !dbg !570
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @output, i64 0, i64 0), i8* %11), !dbg !571
  %12 = call i8* @sol.to_be_bytes.1(i8* %0), !dbg !572
  %13 = call i8* @sol.copy_from_slice.2(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @output, i64 0, i64 0), i8* %12), !dbg !573
  %14 = call i8* @sol.as_ref.1(i8* %1), !dbg !574
  %15 = call i8* @sol.copy_from_slice.2(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @output, i64 0, i64 0), i8* %14), !dbg !575
  %16 = call i8* @sol.as_ref.1(i8* %2), !dbg !576
  %17 = call i8* @sol.copy_from_slice.2(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @output, i64 0, i64 0), i8* %16), !dbg !577
  %18 = call i8* @sol.to_be_bytes.1(i8* %3), !dbg !578
  %19 = call i8* @sol.copy_from_slice.2(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @output, i64 0, i64 0), i8* %18), !dbg !579
  %20 = call i8* @sol.as_ref.1(i8* %4), !dbg !580
  %21 = call i8* @sol.copy_from_slice.2(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @output, i64 0, i64 0), i8* %20), !dbg !581
  %22 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @output, i64 0, i64 0)), !dbg !582
  ret i8* %0, !dbg !568
}

define i8* @"burn_message::BurnMessage::version.1"(i8* %0) !dbg !583 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0)), !dbg !584
  %3 = call i8* @sol.read_integer.2(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @self, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"Self::VERSION_INDEX", i64 0, i64 0)), !dbg !586
  ret i8* %0, !dbg !584
}

define i8* @"burn_message::BurnMessage::burn_token.1"(i8* %0) !dbg !587 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0)), !dbg !588
  %3 = call i8* @sol.read_pubkey.2(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @self, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @"Self::BURN_TOKEN_INDEX", i64 0, i64 0)), !dbg !590
  ret i8* %0, !dbg !588
}

define i8* @"burn_message::BurnMessage::mint_recipient.1"(i8* %0) !dbg !591 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0)), !dbg !592
  %3 = call i8* @sol.read_pubkey.2(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @self, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"Self::MINT_RECIPIENT_INDEX", i64 0, i64 0)), !dbg !594
  ret i8* %0, !dbg !592
}

define i8* @"burn_message::BurnMessage::amount.1"(i8* %0) !dbg !595 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0)), !dbg !596
  %3 = call i8* @"sol.require.!2"(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @"self.data[Self::AMOUNT_INDEX..(Self::AMOUNT_INDEX+Self::AMOUNT_OFFSET)].iter().all(|&x|x==0)", i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @"TokenMessengerError::MalformedMessage", i64 0, i64 0)), !dbg !598
  %4 = call i8* @"sol.+"(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"Self::AMOUNT_INDEX", i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"Self::AMOUNT_OFFSET", i64 0, i64 0)), !dbg !599
  %5 = call i8* @sol.read_integer.2(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @self, i64 0, i64 0), i8* %4), !dbg !600
  ret i8* %0, !dbg !596
}

define i8* @"burn_message::BurnMessage::message_sender.1"(i8* %0) !dbg !601 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0)), !dbg !602
  %3 = call i8* @sol.read_pubkey.2(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @self, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @"Self::MSG_SENDER_INDEX", i64 0, i64 0)), !dbg !604
  ret i8* %0, !dbg !602
}

define i8* @"burn_message::BurnMessage::read_integer.2"(i8* %0, i8* %1) !dbg !605 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0)), !dbg !606
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @index, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @usize, i64 0, i64 0)), !dbg !606
  %5 = call i8* @sol.try_into.1(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @self.data, i64 0, i64 0)), !dbg !608
  %6 = call i8* @sol.map_err.2(i8* %5, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @"TokenMessengerError::MalformedMessage", i64 0, i64 0)), !dbg !609
  %7 = call i8* @"sol.T::from_be_bytes.1"(i8* %6), !dbg !610
  %8 = call i8* @sol.Ok.1(i8* %7), !dbg !611
  ret i8* %0, !dbg !606
}

define i8* @"burn_message::BurnMessage::read_pubkey.2"(i8* %0, i8* %1) !dbg !612 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0)), !dbg !613
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @index, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @usize, i64 0, i64 0)), !dbg !613
  %5 = call i8* @"sol.Pubkey::try_from.1"(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @self.data, i64 0, i64 0)), !dbg !615
  %6 = call i8* @sol.map_err.2(i8* %5, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @"TokenMessengerError::MalformedMessage", i64 0, i64 0)), !dbg !616
  %7 = call i8* @sol.Ok.1(i8* %6), !dbg !617
  ret i8* %0, !dbg !613
}

define i8* @sol.model.struct.anchor.SetTokenControllerContext(i8* %0) !dbg !618 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !620
  %3 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @0, i64 0, i64 0)), !dbg !622
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @owner, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"Signer<'info>", i64 0, i64 0)), !dbg !623
  %5 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @"has_one=owner@TokenMessengerError::InvalidAuthority", i64 0, i64 0)), !dbg !624
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @token_messenger, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @"Box<Account<'info,TokenMessenger>>", i64 0, i64 0)), !dbg !625
  %7 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @mut, i64 0, i64 0)), !dbg !626
  %8 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @token_minter, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"Box<Account<'info,TokenMinter>>", i64 0, i64 0)), !dbg !627
  ret i8* %0, !dbg !620
}

define i8* @sol.model.struct.SetTokenControllerParams(i8* %0) !dbg !628 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !629
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @token_controller, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Pubkey, i64 0, i64 0)), !dbg !631
  ret i8* %0, !dbg !629
}

define i8* @"set_token_controller::set_token_controller.2"(i8* %0, i8* %1) !dbg !632 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @"Context<SetTokenControllerContext>", i64 0, i64 0)), !dbg !633
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @"&SetTokenControllerParams", i64 0, i64 0)), !dbg !633
  %5 = call i8* @"sol.require_keys_neq.!3"(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @params.token_controller, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"Pubkey::default()", i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @"TokenMinterError::InvalidTokenController", i64 0, i64 0)), !dbg !635
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @ctx.accounts.token_minter.token_controller, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @params.token_controller, i64 0, i64 0)), !dbg !636
  %6 = call i8* @"sol.emit_cpi.!1"(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @"SetTokenController{token_controller:ctx.accounts.token_minter.token_controller}", i64 0, i64 0)), !dbg !637
  %7 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"()", i64 0, i64 0)), !dbg !638
  ret i8* %0, !dbg !633
}

define i8* @sol.model.struct.anchor.RemoveLocalTokenContext(i8* %0) !dbg !639 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !641
  %3 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @mut, i64 0, i64 0)), !dbg !643
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @payee, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"Signer<'info>", i64 0, i64 0)), !dbg !644
  %5 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @0, i64 0, i64 0)), !dbg !645
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @token_controller, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"Signer<'info>", i64 0, i64 0)), !dbg !646
  %7 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @"has_one=token_controller@TokenMinterError::InvalidAuthority,", i64 0, i64 0)), !dbg !647
  %8 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @token_minter, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"Box<Account<'info,TokenMinter>>", i64 0, i64 0)), !dbg !648
  %9 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @"mut,seeds=[b\22local_token\22,local_token.mint.as_ref(),],bump=local_token.bump,close=payee", i64 0, i64 0)), !dbg !649
  %10 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @local_token, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"Box<Account<'info,LocalToken>>", i64 0, i64 0)), !dbg !650
  %11 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @"mut,seeds=[b\22custody\22,local_token.mint.as_ref()],bump=local_token.custody_bump,", i64 0, i64 0)), !dbg !651
  %12 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @custody_token_account, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @"Box<Account<'info,TokenAccount>>", i64 0, i64 0)), !dbg !652
  %13 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @token_program, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"Program<'info,Token>", i64 0, i64 0)), !dbg !653
  ret i8* %0, !dbg !641
}

define i8* @sol.model.struct.RemoveLocalTokenParams(i8* %0) !dbg !654 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !655
  ret i8* %0, !dbg !655
}

define i8* @"remove_local_token::remove_local_token.2"(i8* %0, i8* %1) !dbg !657 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @"Context<RemoveLocalTokenContext>", i64 0, i64 0)), !dbg !658
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_params, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"&RemoveLocalTokenParams", i64 0, i64 0)), !dbg !658
  %5 = call i8* @sol.as_ref.1(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @ctx.accounts.local_token, i64 0, i64 0)), !dbg !660
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @local_token, i64 0, i64 0), i8* %5), !dbg !661
  %6 = call i8* @sol.to_account_info.1(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @ctx.accounts.payee, i64 0, i64 0)), !dbg !662
  %7 = call i8* @sol.to_account_info.1(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @ctx.accounts.custody_token_account, i64 0, i64 0)), !dbg !663
  %8 = call i8* @sol.to_account_info.1(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @ctx.accounts.token_program, i64 0, i64 0)), !dbg !664
  %9 = call i8* @sol.to_account_info.1(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @ctx.accounts.token_minter, i64 0, i64 0)), !dbg !665
  %10 = call i8* @sol.close_token_account.5(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @ctx.accounts.token_minter, i64 0, i64 0), i8* %6, i8* %7, i8* %8, i8* %9), !dbg !666
  %11 = call i8* @"sol.emit_cpi.!2"(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @"LocalTokenRemoved{custody:local_token.custody", i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"mint:local_token.mint,}", i64 0, i64 0)), !dbg !667
  %12 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"()", i64 0, i64 0)), !dbg !668
  ret i8* %0, !dbg !658
}

define i8* @sol.model.struct.anchor.UpdatePauserContext(i8* %0) !dbg !669 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !671
  %3 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @0, i64 0, i64 0)), !dbg !673
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @owner, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"Signer<'info>", i64 0, i64 0)), !dbg !674
  %5 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @"has_one=owner@TokenMessengerError::InvalidAuthority", i64 0, i64 0)), !dbg !675
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @token_messenger, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @"Box<Account<'info,TokenMessenger>>", i64 0, i64 0)), !dbg !676
  %7 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @mut, i64 0, i64 0)), !dbg !677
  %8 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @token_minter, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"Box<Account<'info,TokenMinter>>", i64 0, i64 0)), !dbg !678
  ret i8* %0, !dbg !671
}

define i8* @sol.model.struct.UpdatePauserParams(i8* %0) !dbg !679 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !680
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @new_pauser, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Pubkey, i64 0, i64 0)), !dbg !682
  ret i8* %0, !dbg !680
}

define i8* @"update_pauser::update_pauser.2"(i8* %0, i8* %1) !dbg !683 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @"Context<UpdatePauserContext>", i64 0, i64 0)), !dbg !684
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"&UpdatePauserParams", i64 0, i64 0)), !dbg !684
  %5 = call i8* @"sol.require_keys_neq.!3"(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @params.new_pauser, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"Pubkey::default()", i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"TokenMinterError::InvalidPauser", i64 0, i64 0)), !dbg !686
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @ctx.accounts.token_minter.pauser, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @params.new_pauser, i64 0, i64 0)), !dbg !687
  %6 = call i8* @"sol.emit_cpi.!1"(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @"PauserChanged{new_address:ctx.accounts.token_minter.pauser}", i64 0, i64 0)), !dbg !688
  %7 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"()", i64 0, i64 0)), !dbg !689
  ret i8* %0, !dbg !684
}

define i8* @sol.model.struct.anchor.UnpauseContext(i8* %0) !dbg !690 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !692
  %3 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @0, i64 0, i64 0)), !dbg !694
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @pauser, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"Signer<'info>", i64 0, i64 0)), !dbg !695
  %5 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @"mut,has_one=pauser@TokenMinterError::InvalidAuthority", i64 0, i64 0)), !dbg !696
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @token_minter, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"Box<Account<'info,TokenMinter>>", i64 0, i64 0)), !dbg !697
  ret i8* %0, !dbg !692
}

define i8* @sol.model.struct.UnpauseParams(i8* %0) !dbg !698 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !699
  ret i8* %0, !dbg !699
}

define i8* @"unpause::unpause.2"(i8* %0, i8* %1) !dbg !701 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"Context<UnpauseContext>", i64 0, i64 0)), !dbg !702
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_params, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"&UnpauseParams", i64 0, i64 0)), !dbg !702
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @ctx.accounts.token_minter.paused, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @false, i64 0, i64 0)), !dbg !704
  %5 = call i8* @"sol.emit_cpi.!1"(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"Unpause{}", i64 0, i64 0)), !dbg !705
  %6 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"()", i64 0, i64 0)), !dbg !706
  ret i8* %0, !dbg !702
}

define i8* @sol.model.struct.anchor.UnlinkTokenPairContext(i8* %0) !dbg !707 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !709
  %3 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @mut, i64 0, i64 0)), !dbg !711
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @payee, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"Signer<'info>", i64 0, i64 0)), !dbg !712
  %5 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @0, i64 0, i64 0)), !dbg !713
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @token_controller, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"Signer<'info>", i64 0, i64 0)), !dbg !714
  %7 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @"has_one=token_controller@TokenMinterError::InvalidAuthority,", i64 0, i64 0)), !dbg !715
  %8 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @token_minter, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"Box<Account<'info,TokenMinter>>", i64 0, i64 0)), !dbg !716
  %9 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([139 x i8], [139 x i8]* @"mut,seeds=[b\22token_pair\22,token_pair.remote_domain.to_string().as_bytes(),token_pair.remote_token.as_ref()],bump=token_pair.bump,close=payee", i64 0, i64 0)), !dbg !717
  %10 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @token_pair, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @"Box<Account<'info,TokenPair>>", i64 0, i64 0)), !dbg !718
  ret i8* %0, !dbg !709
}

define i8* @sol.model.struct.UninkTokenPairParams(i8* %0) !dbg !719 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !720
  ret i8* %0, !dbg !720
}

define i8* @"unlink_token_pair::unlink_token_pair.2"(i8* %0, i8* %1) !dbg !722 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"Context<UnlinkTokenPairContext>", i64 0, i64 0)), !dbg !723
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_params, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"&UninkTokenPairParams", i64 0, i64 0)), !dbg !723
  %5 = call i8* @sol.as_ref.1(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @ctx.accounts.token_pair, i64 0, i64 0)), !dbg !725
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @token_pair, i64 0, i64 0), i8* %5), !dbg !726
  %6 = call i8* @"sol.emit_cpi.!2"(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @"TokenPairUnlinked{local_token:token_pair.local_token", i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @"remote_domain:token_pair.remote_domain,remote_token:token_pair.remote_token}", i64 0, i64 0)), !dbg !727
  %7 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"()", i64 0, i64 0)), !dbg !728
  ret i8* %0, !dbg !723
}

define i8* @sol.model.struct.anchor.AddLocalTokenContext(i8* %0) !dbg !729 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !731
  %3 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @mut, i64 0, i64 0)), !dbg !733
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @payer, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"Signer<'info>", i64 0, i64 0)), !dbg !734
  %5 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @0, i64 0, i64 0)), !dbg !735
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @token_controller, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"Signer<'info>", i64 0, i64 0)), !dbg !736
  %7 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @"has_one=token_controller@TokenMinterError::InvalidAuthority,", i64 0, i64 0)), !dbg !737
  %8 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @token_minter, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"Box<Account<'info,TokenMinter>>", i64 0, i64 0)), !dbg !738
  %9 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([131 x i8], [131 x i8]* @"init,payer=payer,space=utils::DISCRIMINATOR_SIZE+LocalToken::INIT_SPACE,seeds=[b\22local_token\22,local_token_mint.key().as_ref()],bump", i64 0, i64 0)), !dbg !739
  %10 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @local_token, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"Box<Account<'info,LocalToken>>", i64 0, i64 0)), !dbg !740
  %11 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([131 x i8], [131 x i8]* @"init,payer=payer,token::mint=local_token_mint,token::authority=token_minter,seeds=[b\22custody\22,local_token_mint.key().as_ref()],bump", i64 0, i64 0)), !dbg !741
  %12 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @custody_token_account, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @"Box<Account<'info,TokenAccount>>", i64 0, i64 0)), !dbg !742
  %13 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @0, i64 0, i64 0)), !dbg !743
  %14 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @local_token_mint, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @"Box<Account<'info,Mint>>", i64 0, i64 0)), !dbg !744
  %15 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @token_program, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"Program<'info,Token>", i64 0, i64 0)), !dbg !745
  %16 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @system_program, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"Program<'info,System>", i64 0, i64 0)), !dbg !746
  ret i8* %0, !dbg !731
}

define i8* @sol.model.struct.AddLocalTokenParams(i8* %0) !dbg !747 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !748
  ret i8* %0, !dbg !748
}

define i8* @"add_local_token::add_local_token.2"(i8* %0, i8* %1) !dbg !750 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @"Context<AddLocalTokenContext>", i64 0, i64 0)), !dbg !751
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_params, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"&AddLocalTokenParams", i64 0, i64 0)), !dbg !751
  %5 = call i8* @sol.as_mut.1(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @ctx.accounts.local_token, i64 0, i64 0)), !dbg !753
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @local_token, i64 0, i64 0), i8* %5), !dbg !754
  %6 = call i8* @sol.key.1(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @ctx.accounts.custody_token_account, i64 0, i64 0)), !dbg !755
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @local_token.custody, i64 0, i64 0), i8* %6), !dbg !756
  %7 = call i8* @sol.key.1(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @ctx.accounts.local_token_mint, i64 0, i64 0)), !dbg !757
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @local_token.mint, i64 0, i64 0), i8* %7), !dbg !758
  %8 = call i8* @sol.get.2(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @ctx.bumps, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"\22local_token\22", i64 0, i64 0)), !dbg !759
  %9 = call i8* @sol.ok_or.2(i8* %8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"ProgramError::InvalidSeeds", i64 0, i64 0)), !dbg !760
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @local_token.bump, i64 0, i64 0), i8* %9), !dbg !761
  %10 = call i8* @sol.get.2(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @ctx.bumps, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"\22custody_token_account\22", i64 0, i64 0)), !dbg !762
  %11 = call i8* @sol.ok_or.2(i8* %10, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"ProgramError::InvalidSeeds", i64 0, i64 0)), !dbg !763
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @local_token.custody_bump, i64 0, i64 0), i8* %11), !dbg !764
  %12 = call i8* @"sol.require.!2"(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @"local_token.validate()", i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @"TokenMinterError::InvalidLocalTokenState", i64 0, i64 0)), !dbg !765
  %13 = call i8* @"sol.emit_cpi.!2"(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @"LocalTokenAdded{custody:local_token.custody", i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"mint:local_token.mint,}", i64 0, i64 0)), !dbg !766
  %14 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"()", i64 0, i64 0)), !dbg !767
  ret i8* %0, !dbg !751
}

define i8* @sol.model.struct.anchor.LinkTokenPairContext(i8* %0) !dbg !768 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !770
  %3 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @mut, i64 0, i64 0)), !dbg !772
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @payer, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"Signer<'info>", i64 0, i64 0)), !dbg !773
  %5 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @0, i64 0, i64 0)), !dbg !774
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @token_controller, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"Signer<'info>", i64 0, i64 0)), !dbg !775
  %7 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @"has_one=token_controller@TokenMinterError::InvalidAuthority,", i64 0, i64 0)), !dbg !776
  %8 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @token_minter, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"Box<Account<'info,TokenMinter>>", i64 0, i64 0)), !dbg !777
  %9 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([170 x i8], [170 x i8]* @"init,payer=payer,space=utils::DISCRIMINATOR_SIZE+TokenPair::INIT_SPACE,seeds=[b\22token_pair\22,params.remote_domain.to_string().as_bytes(),params.remote_token.as_ref()],bump", i64 0, i64 0)), !dbg !778
  %10 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @token_pair, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @"Box<Account<'info,TokenPair>>", i64 0, i64 0)), !dbg !779
  %11 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @system_program, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"Program<'info,System>", i64 0, i64 0)), !dbg !780
  ret i8* %0, !dbg !770
}

define i8* @sol.model.struct.LinkTokenPairParams(i8* %0) !dbg !781 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !782
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @local_token, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Pubkey, i64 0, i64 0)), !dbg !784
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @remote_domain, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u32, i64 0, i64 0)), !dbg !785
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @remote_token, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Pubkey, i64 0, i64 0)), !dbg !786
  ret i8* %0, !dbg !782
}

define i8* @"link_token_pair::link_token_pair.2"(i8* %0, i8* %1) !dbg !787 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @"Context<LinkTokenPairContext>", i64 0, i64 0)), !dbg !788
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"&LinkTokenPairParams", i64 0, i64 0)), !dbg !788
  %5 = call i8* @sol.as_mut.1(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @ctx.accounts.token_pair, i64 0, i64 0)), !dbg !790
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @token_pair, i64 0, i64 0), i8* %5), !dbg !791
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @token_pair.remote_domain, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @params.remote_domain, i64 0, i64 0)), !dbg !792
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @token_pair.remote_token, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @params.remote_token, i64 0, i64 0)), !dbg !793
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @token_pair.local_token, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @params.local_token, i64 0, i64 0)), !dbg !794
  %6 = call i8* @sol.get.2(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @ctx.bumps, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"\22token_pair\22", i64 0, i64 0)), !dbg !795
  %7 = call i8* @sol.ok_or.2(i8* %6, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"ProgramError::InvalidSeeds", i64 0, i64 0)), !dbg !796
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @token_pair.bump, i64 0, i64 0), i8* %7), !dbg !797
  %8 = call i8* @"sol.require.!2"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"token_pair.validate()", i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @"TokenMinterError::InvalidTokenPairState", i64 0, i64 0)), !dbg !798
  %9 = call i8* @"sol.emit_cpi.!2"(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @"TokenPairLinked{local_token:params.local_token", i64 0, i64 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @"remote_domain:params.remote_domain,remote_token:params.remote_token}", i64 0, i64 0)), !dbg !799
  %10 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"()", i64 0, i64 0)), !dbg !800
  ret i8* %0, !dbg !788
}

define i8* @sol.model.struct.anchor.SetMaxBurnAmountPerMessageContext(i8* %0) !dbg !801 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !803
  %3 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @0, i64 0, i64 0)), !dbg !805
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @token_controller, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"Signer<'info>", i64 0, i64 0)), !dbg !806
  %5 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @"has_one=token_controller@TokenMinterError::InvalidAuthority", i64 0, i64 0)), !dbg !807
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @token_minter, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"Box<Account<'info,TokenMinter>>", i64 0, i64 0)), !dbg !808
  %7 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @"mut,seeds=[b\22local_token\22,local_token.mint.as_ref(),],bump=local_token.bump,", i64 0, i64 0)), !dbg !809
  %8 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @local_token, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"Box<Account<'info,LocalToken>>", i64 0, i64 0)), !dbg !810
  ret i8* %0, !dbg !803
}

define i8* @sol.model.struct.SetMaxBurnAmountPerMessageParams(i8* %0) !dbg !811 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !812
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @burn_limit_per_message, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u64, i64 0, i64 0)), !dbg !814
  ret i8* %0, !dbg !812
}

define i8* @"set_max_burn_amount_per_message::set_max_burn_amount_per_message.2"(i8* %0, i8* %1) !dbg !815 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @"Context<SetMaxBurnAmountPerMessageContext>", i64 0, i64 0)), !dbg !816
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @"&SetMaxBurnAmountPerMessageParams", i64 0, i64 0)), !dbg !816
  %5 = call i8* @sol.as_mut.1(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @ctx.accounts.local_token, i64 0, i64 0)), !dbg !818
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @local_token, i64 0, i64 0), i8* %5), !dbg !819
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @local_token.burn_limit_per_message, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @params.burn_limit_per_message, i64 0, i64 0)), !dbg !820
  %6 = call i8* @"sol.emit_cpi.!2"(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @"SetBurnLimitPerMessage{token:local_token.mint", i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @"burn_limit_per_message:local_token.burn_limit_per_message}", i64 0, i64 0)), !dbg !821
  %7 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"()", i64 0, i64 0)), !dbg !822
  ret i8* %0, !dbg !816
}

define i8* @sol.model.struct.anchor.BurnTokenCustodyContext(i8* %0) !dbg !823 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !825
  %3 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @mut, i64 0, i64 0)), !dbg !827
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @payee, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"Signer<'info>", i64 0, i64 0)), !dbg !828
  %5 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @0, i64 0, i64 0)), !dbg !829
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @token_controller, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"Signer<'info>", i64 0, i64 0)), !dbg !830
  %7 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @"has_one=token_controller@TokenMinterError::InvalidAuthority,", i64 0, i64 0)), !dbg !831
  %8 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @token_minter, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"Box<Account<'info,TokenMinter>>", i64 0, i64 0)), !dbg !832
  %9 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @"seeds=[b\22local_token\22,local_token.mint.key().as_ref()],bump=local_token.bump", i64 0, i64 0)), !dbg !833
  %10 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @local_token, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"Box<Account<'info,LocalToken>>", i64 0, i64 0)), !dbg !834
  %11 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([134 x i8], [134 x i8]* @"mut,constraint=custody_token_account.mint==local_token.mint,seeds=[b\22custody\22,local_token.mint.as_ref()],bump=local_token.custody_bump", i64 0, i64 0)), !dbg !835
  %12 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @custody_token_account, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @"Box<Account<'info,TokenAccount>>", i64 0, i64 0)), !dbg !836
  %13 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @"mut,constraint=custody_token_account.mint==custody_token_mint.key()", i64 0, i64 0)), !dbg !837
  %14 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @custody_token_mint, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @"Box<Account<'info,Mint>>", i64 0, i64 0)), !dbg !838
  %15 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @token_program, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"Program<'info,Token>", i64 0, i64 0)), !dbg !839
  ret i8* %0, !dbg !825
}

define i8* @sol.model.struct.BurnTokenCustodyParams(i8* %0) !dbg !840 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !841
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @amount, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u64, i64 0, i64 0)), !dbg !843
  ret i8* %0, !dbg !841
}

define i8* @"burn_token_custody::burn_token_custody.anon.1"(i8* %0) !dbg !844 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !845
  ret i8* %0, !dbg !845
}

define i8* @"burn_token_custody::burn_token_custody.anon.2"(i8* %0) !dbg !847 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !848
  ret i8* %0, !dbg !848
}

define i8* @"burn_token_custody::burn_token_custody.2"(i8* %0, i8* %1) !dbg !850 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @"Context<BurnTokenCustodyContext>", i64 0, i64 0)), !dbg !851
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"&BurnTokenCustodyParams", i64 0, i64 0)), !dbg !851
  %5 = call i8* @"sol.<="(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @params.amount, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @ctx.accounts.custody_token_account.amount, i64 0, i64 0)), !dbg !853
  %6 = call i8* @sol.if(i8* %5), !dbg !854
  %7 = call i8* @"sol.burn_token_custody::burn_token_custody.anon.1"(i8* %6), !dbg !855
  %8 = call i8* @sol.ifTrue.anon.(i8* %7), !dbg !855
  %9 = call i8* @"sol.burn_token_custody::burn_token_custody.anon.2"(i8* %8), !dbg !856
  %10 = call i8* @sol.ifFalse.anon.(i8* %9), !dbg !856
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @burn_amount, i64 0, i64 0), i8* %10), !dbg !857
  %11 = call i8* @"sol.require_neq.!2"(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @burn_amount, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @"0,TokenMinterError::InvalidAmount", i64 0, i64 0)), !dbg !858
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @authority_seeds, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @"[&[b\22token_minter\22,&[ctx.accounts.token_minter.bump]]]", i64 0, i64 0)), !dbg !859
  %12 = call i8* @sol.to_account_info.1(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @ctx.accounts.token_program, i64 0, i64 0)), !dbg !860
  %13 = call i8* @sol.to_account_info.1(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @ctx.accounts.custody_token_mint, i64 0, i64 0)), !dbg !861
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @mint, i64 0, i64 0), i8* %13), !dbg !862
  %14 = call i8* @sol.to_account_info.1(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @ctx.accounts.custody_token_account, i64 0, i64 0)), !dbg !863
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @from, i64 0, i64 0), i8* %14), !dbg !864
  %15 = call i8* @sol.to_account_info.1(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @ctx.accounts.token_minter, i64 0, i64 0)), !dbg !865
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @authority, i64 0, i64 0), i8* %15), !dbg !866
  %16 = call i8* @sol.model.struct.new.Burn.3(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @mint, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @from, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @authority, i64 0, i64 0)), !dbg !867
  %17 = call i8* @"sol.CpiContext::new.2"(i8* %12, i8* %16), !dbg !868
  %18 = call i8* @sol.with_signer.2(i8* %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @authority_seeds, i64 0, i64 0)), !dbg !869
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @context, i64 0, i64 0), i8* %18), !dbg !870
  %19 = call i8* @"sol.anchor_spl::token::burn.2"(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @context, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @burn_amount, i64 0, i64 0)), !dbg !871
  %20 = call i8* @"sol.emit_cpi.!2"(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @"TokenCustodyBurned{custody_token_account:ctx.accounts.custody_token_account.key()", i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"amount:burn_amount,}", i64 0, i64 0)), !dbg !872
  %21 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"()", i64 0, i64 0)), !dbg !873
  ret i8* %0, !dbg !851
}

define i8* @sol.model.struct.anchor.PauseContext(i8* %0) !dbg !874 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !876
  %3 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @0, i64 0, i64 0)), !dbg !878
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @pauser, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"Signer<'info>", i64 0, i64 0)), !dbg !879
  %5 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @"mut,has_one=pauser@TokenMinterError::InvalidAuthority", i64 0, i64 0)), !dbg !880
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @token_minter, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"Box<Account<'info,TokenMinter>>", i64 0, i64 0)), !dbg !881
  ret i8* %0, !dbg !876
}

define i8* @sol.model.struct.PauseParams(i8* %0) !dbg !882 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !883
  ret i8* %0, !dbg !883
}

define i8* @"pause::pause.2"(i8* %0, i8* %1) !dbg !885 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"Context<PauseContext>", i64 0, i64 0)), !dbg !886
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_params, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"&PauseParams", i64 0, i64 0)), !dbg !886
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @ctx.accounts.token_minter.paused, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @true, i64 0, i64 0)), !dbg !888
  %5 = call i8* @"sol.emit_cpi.!1"(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"Pause{}", i64 0, i64 0)), !dbg !889
  %6 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"()", i64 0, i64 0)), !dbg !890
  ret i8* %0, !dbg !886
}

define i8* @sol.model.struct.anchor.TokenMinter(i8* %0) !dbg !891 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !893
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @token_controller, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Pubkey, i64 0, i64 0)), !dbg !895
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @pauser, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Pubkey, i64 0, i64 0)), !dbg !896
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @paused, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @bool, i64 0, i64 0)), !dbg !897
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @bump, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @u8, i64 0, i64 0)), !dbg !898
  ret i8* %0, !dbg !893
}

define i8* @sol.model.struct.TokenMinter(i8* %0) !dbg !899 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !900
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @token_controller, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Pubkey, i64 0, i64 0)), !dbg !902
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @pauser, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Pubkey, i64 0, i64 0)), !dbg !903
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @paused, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @bool, i64 0, i64 0)), !dbg !904
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @bump, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @u8, i64 0, i64 0)), !dbg !905
  ret i8* %0, !dbg !900
}

define i8* @sol.model.struct.anchor.TokenPair(i8* %0) !dbg !906 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !907
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @remote_domain, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u32, i64 0, i64 0)), !dbg !909
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @remote_token, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Pubkey, i64 0, i64 0)), !dbg !910
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @local_token, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Pubkey, i64 0, i64 0)), !dbg !911
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @bump, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @u8, i64 0, i64 0)), !dbg !912
  ret i8* %0, !dbg !907
}

define i8* @sol.model.struct.TokenPair(i8* %0) !dbg !913 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !914
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @remote_domain, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u32, i64 0, i64 0)), !dbg !916
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @remote_token, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Pubkey, i64 0, i64 0)), !dbg !917
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @local_token, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Pubkey, i64 0, i64 0)), !dbg !918
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @bump, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @u8, i64 0, i64 0)), !dbg !919
  ret i8* %0, !dbg !914
}

define i8* @sol.model.struct.anchor.LocalToken(i8* %0) !dbg !920 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !921
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @custody, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Pubkey, i64 0, i64 0)), !dbg !923
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @mint, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Pubkey, i64 0, i64 0)), !dbg !924
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @burn_limit_per_message, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u64, i64 0, i64 0)), !dbg !925
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @messages_sent, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u64, i64 0, i64 0)), !dbg !926
  %7 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @messages_received, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u64, i64 0, i64 0)), !dbg !927
  %8 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @amount_sent, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @u128, i64 0, i64 0)), !dbg !928
  %9 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @amount_received, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @u128, i64 0, i64 0)), !dbg !929
  %10 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @bump, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @u8, i64 0, i64 0)), !dbg !930
  %11 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @custody_bump, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @u8, i64 0, i64 0)), !dbg !931
  ret i8* %0, !dbg !921
}

define i8* @sol.model.struct.LocalToken(i8* %0) !dbg !932 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !933
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @custody, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Pubkey, i64 0, i64 0)), !dbg !935
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @mint, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Pubkey, i64 0, i64 0)), !dbg !936
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @burn_limit_per_message, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u64, i64 0, i64 0)), !dbg !937
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @messages_sent, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u64, i64 0, i64 0)), !dbg !938
  %7 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @messages_received, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u64, i64 0, i64 0)), !dbg !939
  %8 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @amount_sent, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @u128, i64 0, i64 0)), !dbg !940
  %9 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @amount_received, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @u128, i64 0, i64 0)), !dbg !941
  %10 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @bump, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @u8, i64 0, i64 0)), !dbg !942
  %11 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @custody_bump, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @u8, i64 0, i64 0)), !dbg !943
  ret i8* %0, !dbg !933
}

define i8* @"state::TokenMinter::validate.1"(i8* %0) !dbg !944 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0)), !dbg !945
  %3 = call i8* @"sol.Pubkey::default.0"(), !dbg !947
  %4 = call i8* @"sol.!="(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @self.token_controller, i64 0, i64 0), i8* %3), !dbg !948
  %5 = call i8* @"sol.Pubkey::default.0"(), !dbg !949
  %6 = call i8* @"sol.!="(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @self.pauser, i64 0, i64 0), i8* %5), !dbg !950
  %7 = call i8* @"sol.&&"(i8* %4, i8* %6), !dbg !948
  ret i8* %0, !dbg !945
}

define i8* @"state::TokenMinter::burn.7"(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6) !dbg !951 {
  %8 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0)), !dbg !952
  %9 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @mint, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !952
  %10 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @from, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !952
  %11 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !952
  %12 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @token_program, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !952
  %13 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @local_token, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"&mutLocalToken", i64 0, i64 0)), !dbg !952
  %14 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @amount, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u64, i64 0, i64 0)), !dbg !952
  %15 = call i8* @"sol.require.!2"(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"!self.paused", i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"TokenMinterError::ProgramPaused", i64 0, i64 0)), !dbg !954
  %16 = call i8* @"sol.require_gte.!2"(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @local_token.burn_limit_per_message, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @"amount,TokenMinterError::BurnAmountExceeded", i64 0, i64 0)), !dbg !955
  %17 = call i8* @sol.saturating_add.2(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @local_token.messages_sent, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"1", i64 0, i64 0)), !dbg !956
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @local_token.messages_sent, i64 0, i64 0), i8* %17), !dbg !957
  %18 = call i8* @sol.typecast(i8* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @u128, i64 0, i64 0)), !dbg !958
  %19 = call i8* @sol.saturating_add.2(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @local_token.amount_sent, i64 0, i64 0), i8* %18), !dbg !959
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @local_token.amount_sent, i64 0, i64 0), i8* %19), !dbg !960
  %20 = call i8* @sol.model.struct.new.Burn.3(i8* %1, i8* %2, i8* %3), !dbg !961
  %21 = call i8* @"sol.CpiContext::new.2"(i8* %4, i8* %20), !dbg !962
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @context, i64 0, i64 0), i8* %21), !dbg !963
  %22 = call i8* @"sol.anchor_spl::token::burn.2"(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @context, i64 0, i64 0), i8* %6), !dbg !964
  ret i8* %0, !dbg !952
}

define i8* @"state::TokenMinter::transfer.7"(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6) !dbg !965 {
  %8 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0)), !dbg !966
  %9 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @from, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !966
  %10 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @to, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !966
  %11 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !966
  %12 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @token_program, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !966
  %13 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @local_token, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"&mutLocalToken", i64 0, i64 0)), !dbg !966
  %14 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @amount, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u64, i64 0, i64 0)), !dbg !966
  %15 = call i8* @"sol.require.!2"(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"!self.paused", i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"TokenMinterError::ProgramPaused", i64 0, i64 0)), !dbg !968
  %16 = call i8* @sol.saturating_add.2(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @local_token.messages_received, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"1", i64 0, i64 0)), !dbg !969
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @local_token.messages_received, i64 0, i64 0), i8* %16), !dbg !970
  %17 = call i8* @sol.typecast(i8* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @u128, i64 0, i64 0)), !dbg !971
  %18 = call i8* @sol.saturating_add.2(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @local_token.amount_received, i64 0, i64 0), i8* %17), !dbg !972
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @local_token.amount_received, i64 0, i64 0), i8* %18), !dbg !973
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @authority_seeds, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @"[&[b\22token_minter\22,&[self.bump]]]", i64 0, i64 0)), !dbg !974
  %19 = call i8* @sol.model.struct.new.Transfer.3(i8* %1, i8* %2, i8* %3), !dbg !975
  %20 = call i8* @"sol.CpiContext::new.2"(i8* %4, i8* %19), !dbg !976
  %21 = call i8* @sol.with_signer.2(i8* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @authority_seeds, i64 0, i64 0)), !dbg !977
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @context, i64 0, i64 0), i8* %21), !dbg !978
  %22 = call i8* @"sol.anchor_spl::token::transfer.2"(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @context, i64 0, i64 0), i8* %6), !dbg !979
  ret i8* %0, !dbg !966
}

define i8* @"state::TokenMinter::close_token_account.5"(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4) !dbg !980 {
  %6 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0)), !dbg !981
  %7 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @receiver, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !981
  %8 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @token_account, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !981
  %9 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @token_program, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !981
  %10 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @authority, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !981
  %11 = call i8* @"sol.require.!2"(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"!self.paused", i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"TokenMinterError::ProgramPaused", i64 0, i64 0)), !dbg !983
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @authority_seeds, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @"[&[b\22token_minter\22,&[self.bump]]]", i64 0, i64 0)), !dbg !984
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @account, i64 0, i64 0), i8* %2), !dbg !985
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @destination, i64 0, i64 0), i8* %1), !dbg !986
  %12 = call i8* @"sol.model.struct.new.anchor_spl::token::CloseAccount.3"(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @account, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @destination, i64 0, i64 0), i8* %4), !dbg !987
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @cpi_accounts, i64 0, i64 0), i8* %12), !dbg !988
  %13 = call i8* @"sol.anchor_lang::context::CpiContext::new.2"(i8* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @cpi_accounts, i64 0, i64 0)), !dbg !989
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @cpi_context, i64 0, i64 0), i8* %13), !dbg !990
  %14 = call i8* @sol.with_signer.2(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @cpi_context, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @authority_seeds, i64 0, i64 0)), !dbg !991
  %15 = call i8* @"sol.anchor_spl::token::close_account.1"(i8* %14), !dbg !992
  ret i8* %0, !dbg !981
}

define i8* @"state::TokenPair::validate.1"(i8* %0) !dbg !993 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0)), !dbg !994
  %3 = call i8* @"sol.Pubkey::default.0"(), !dbg !996
  %4 = call i8* @"sol.!="(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @self.remote_token, i64 0, i64 0), i8* %3), !dbg !997
  %5 = call i8* @"sol.Pubkey::default.0"(), !dbg !998
  %6 = call i8* @"sol.!="(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @self.local_token, i64 0, i64 0), i8* %5), !dbg !999
  %7 = call i8* @"sol.&&"(i8* %4, i8* %6), !dbg !997
  ret i8* %0, !dbg !994
}

define i8* @"state::LocalToken::validate.1"(i8* %0) !dbg !1000 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0)), !dbg !1001
  %3 = call i8* @"sol.Pubkey::default.0"(), !dbg !1003
  %4 = call i8* @"sol.!="(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @self.custody, i64 0, i64 0), i8* %3), !dbg !1004
  %5 = call i8* @"sol.Pubkey::default.0"(), !dbg !1005
  %6 = call i8* @"sol.!="(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @self.mint, i64 0, i64 0), i8* %5), !dbg !1006
  %7 = call i8* @"sol.&&"(i8* %4, i8* %6), !dbg !1004
  ret i8* %0, !dbg !1001
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "sol.model.cargo.toml", linkageName: "sol.model.cargo.toml", scope: null, file: !4, type: !5, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!4 = !DIFile(filename: "/solana-cctp-contracts/programs/token-messenger-minter/Xargo.toml", directory: "")
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
!18 = distinct !DISubprogram(name: "lib::initialize.2", linkageName: "lib::initialize.2", scope: null, file: !19, line: 43, type: !5, scopeLine: 43, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!19 = !DIFile(filename: "/solana-cctp-contracts/programs/token-messenger-minter/src/lib.rs", directory: "")
!20 = !DILocation(line: 43, column: 8, scope: !21)
!21 = !DILexicalBlockFile(scope: !18, file: !19, discriminator: 0)
!22 = !DILocation(line: 44, column: 8, scope: !21)
!23 = distinct !DISubprogram(name: "lib::transfer_ownership.2", linkageName: "lib::transfer_ownership.2", scope: null, file: !19, line: 47, type: !5, scopeLine: 47, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!24 = !DILocation(line: 47, column: 8, scope: !25)
!25 = !DILexicalBlockFile(scope: !23, file: !19, discriminator: 0)
!26 = !DILocation(line: 51, column: 8, scope: !25)
!27 = distinct !DISubprogram(name: "lib::accept_ownership.2", linkageName: "lib::accept_ownership.2", scope: null, file: !19, line: 54, type: !5, scopeLine: 54, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!28 = !DILocation(line: 54, column: 8, scope: !29)
!29 = !DILexicalBlockFile(scope: !27, file: !19, discriminator: 0)
!30 = !DILocation(line: 58, column: 8, scope: !29)
!31 = distinct !DISubprogram(name: "lib::add_remote_token_messenger.2", linkageName: "lib::add_remote_token_messenger.2", scope: null, file: !19, line: 61, type: !5, scopeLine: 61, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!32 = !DILocation(line: 61, column: 8, scope: !33)
!33 = !DILexicalBlockFile(scope: !31, file: !19, discriminator: 0)
!34 = !DILocation(line: 65, column: 8, scope: !33)
!35 = distinct !DISubprogram(name: "lib::remove_remote_token_messenger.2", linkageName: "lib::remove_remote_token_messenger.2", scope: null, file: !19, line: 68, type: !5, scopeLine: 68, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!36 = !DILocation(line: 68, column: 8, scope: !37)
!37 = !DILexicalBlockFile(scope: !35, file: !19, discriminator: 0)
!38 = !DILocation(line: 72, column: 8, scope: !37)
!39 = distinct !DISubprogram(name: "lib::deposit_for_burn.2", linkageName: "lib::deposit_for_burn.2", scope: null, file: !19, line: 75, type: !5, scopeLine: 75, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!40 = !DILocation(line: 75, column: 8, scope: !41)
!41 = !DILexicalBlockFile(scope: !39, file: !19, discriminator: 0)
!42 = !DILocation(line: 79, column: 8, scope: !41)
!43 = distinct !DISubprogram(name: "lib::deposit_for_burn_with_caller.2", linkageName: "lib::deposit_for_burn_with_caller.2", scope: null, file: !19, line: 82, type: !5, scopeLine: 82, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!44 = !DILocation(line: 82, column: 8, scope: !45)
!45 = !DILexicalBlockFile(scope: !43, file: !19, discriminator: 0)
!46 = !DILocation(line: 86, column: 8, scope: !45)
!47 = distinct !DISubprogram(name: "lib::replace_deposit_for_burn.2", linkageName: "lib::replace_deposit_for_burn.2", scope: null, file: !19, line: 89, type: !5, scopeLine: 89, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!48 = !DILocation(line: 89, column: 8, scope: !49)
!49 = !DILexicalBlockFile(scope: !47, file: !19, discriminator: 0)
!50 = !DILocation(line: 93, column: 8, scope: !49)
!51 = distinct !DISubprogram(name: "lib::handle_receive_message.2", linkageName: "lib::handle_receive_message.2", scope: null, file: !19, line: 96, type: !5, scopeLine: 96, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!52 = !DILocation(line: 96, column: 8, scope: !53)
!53 = !DILexicalBlockFile(scope: !51, file: !19, discriminator: 0)
!54 = !DILocation(line: 100, column: 8, scope: !53)
!55 = distinct !DISubprogram(name: "lib::set_token_controller.2", linkageName: "lib::set_token_controller.2", scope: null, file: !19, line: 105, type: !5, scopeLine: 105, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!56 = !DILocation(line: 105, column: 8, scope: !57)
!57 = !DILexicalBlockFile(scope: !55, file: !19, discriminator: 0)
!58 = !DILocation(line: 109, column: 8, scope: !57)
!59 = distinct !DISubprogram(name: "lib::pause.2", linkageName: "lib::pause.2", scope: null, file: !19, line: 112, type: !5, scopeLine: 112, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!60 = !DILocation(line: 112, column: 8, scope: !61)
!61 = !DILexicalBlockFile(scope: !59, file: !19, discriminator: 0)
!62 = !DILocation(line: 113, column: 8, scope: !61)
!63 = distinct !DISubprogram(name: "lib::unpause.2", linkageName: "lib::unpause.2", scope: null, file: !19, line: 116, type: !5, scopeLine: 116, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!64 = !DILocation(line: 116, column: 8, scope: !65)
!65 = !DILexicalBlockFile(scope: !63, file: !19, discriminator: 0)
!66 = !DILocation(line: 117, column: 8, scope: !65)
!67 = distinct !DISubprogram(name: "lib::update_pauser.2", linkageName: "lib::update_pauser.2", scope: null, file: !19, line: 120, type: !5, scopeLine: 120, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!68 = !DILocation(line: 120, column: 8, scope: !69)
!69 = !DILexicalBlockFile(scope: !67, file: !19, discriminator: 0)
!70 = !DILocation(line: 124, column: 8, scope: !69)
!71 = distinct !DISubprogram(name: "lib::set_max_burn_amount_per_message.2", linkageName: "lib::set_max_burn_amount_per_message.2", scope: null, file: !19, line: 127, type: !5, scopeLine: 127, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!72 = !DILocation(line: 127, column: 8, scope: !73)
!73 = !DILexicalBlockFile(scope: !71, file: !19, discriminator: 0)
!74 = !DILocation(line: 131, column: 8, scope: !73)
!75 = distinct !DISubprogram(name: "lib::add_local_token.2", linkageName: "lib::add_local_token.2", scope: null, file: !19, line: 134, type: !5, scopeLine: 134, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!76 = !DILocation(line: 134, column: 8, scope: !77)
!77 = !DILexicalBlockFile(scope: !75, file: !19, discriminator: 0)
!78 = !DILocation(line: 138, column: 8, scope: !77)
!79 = distinct !DISubprogram(name: "lib::remove_local_token.2", linkageName: "lib::remove_local_token.2", scope: null, file: !19, line: 141, type: !5, scopeLine: 141, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!80 = !DILocation(line: 141, column: 8, scope: !81)
!81 = !DILexicalBlockFile(scope: !79, file: !19, discriminator: 0)
!82 = !DILocation(line: 145, column: 8, scope: !81)
!83 = distinct !DISubprogram(name: "lib::link_token_pair.2", linkageName: "lib::link_token_pair.2", scope: null, file: !19, line: 148, type: !5, scopeLine: 148, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!84 = !DILocation(line: 148, column: 8, scope: !85)
!85 = !DILexicalBlockFile(scope: !83, file: !19, discriminator: 0)
!86 = !DILocation(line: 152, column: 8, scope: !85)
!87 = distinct !DISubprogram(name: "lib::unlink_token_pair.2", linkageName: "lib::unlink_token_pair.2", scope: null, file: !19, line: 155, type: !5, scopeLine: 155, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!88 = !DILocation(line: 155, column: 8, scope: !89)
!89 = !DILexicalBlockFile(scope: !87, file: !19, discriminator: 0)
!90 = !DILocation(line: 159, column: 8, scope: !89)
!91 = distinct !DISubprogram(name: "lib::burn_token_custody.2", linkageName: "lib::burn_token_custody.2", scope: null, file: !19, line: 162, type: !5, scopeLine: 162, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!92 = !DILocation(line: 162, column: 8, scope: !93)
!93 = !DILexicalBlockFile(scope: !91, file: !19, discriminator: 0)
!94 = !DILocation(line: 166, column: 8, scope: !93)
!95 = distinct !DISubprogram(name: "sol.model.anchor.program.token_messenger_minter", linkageName: "sol.model.anchor.program.token_messenger_minter", scope: null, file: !19, line: 37, type: !5, scopeLine: 37, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!96 = !DILocation(line: 37, scope: !97)
!97 = !DILexicalBlockFile(scope: !95, file: !19, discriminator: 0)
!98 = !DILocation(line: 43, column: 4, scope: !97)
!99 = !DILocation(line: 47, column: 4, scope: !97)
!100 = !DILocation(line: 54, column: 4, scope: !97)
!101 = !DILocation(line: 61, column: 4, scope: !97)
!102 = !DILocation(line: 68, column: 4, scope: !97)
!103 = !DILocation(line: 75, column: 4, scope: !97)
!104 = !DILocation(line: 82, column: 4, scope: !97)
!105 = !DILocation(line: 89, column: 4, scope: !97)
!106 = !DILocation(line: 96, column: 4, scope: !97)
!107 = !DILocation(line: 105, column: 4, scope: !97)
!108 = !DILocation(line: 112, column: 4, scope: !97)
!109 = !DILocation(line: 116, column: 4, scope: !97)
!110 = !DILocation(line: 120, column: 4, scope: !97)
!111 = !DILocation(line: 127, column: 4, scope: !97)
!112 = !DILocation(line: 134, column: 4, scope: !97)
!113 = !DILocation(line: 141, column: 4, scope: !97)
!114 = !DILocation(line: 148, column: 4, scope: !97)
!115 = !DILocation(line: 155, column: 4, scope: !97)
!116 = !DILocation(line: 162, column: 4, scope: !97)
!117 = distinct !DISubprogram(name: "main", linkageName: "main", scope: null, file: !19, line: 37, type: !5, scopeLine: 37, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!118 = !DILocation(line: 37, scope: !119)
!119 = !DILexicalBlockFile(scope: !117, file: !19, discriminator: 0)
!120 = distinct !DISubprogram(name: "sol.model.struct.DepositForBurnWithCallerParams", linkageName: "sol.model.struct.DepositForBurnWithCallerParams", scope: null, file: !121, line: 36, type: !5, scopeLine: 36, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!121 = !DIFile(filename: "/solana-cctp-contracts/programs/token-messenger-minter/src/token_messenger/instructions/deposit_for_burn_with_caller.rs", directory: "")
!122 = !DILocation(line: 36, column: 4, scope: !123)
!123 = !DILexicalBlockFile(scope: !120, file: !121, discriminator: 0)
!124 = !DILocation(line: 37, column: 8, scope: !123)
!125 = !DILocation(line: 38, column: 8, scope: !123)
!126 = !DILocation(line: 39, column: 8, scope: !123)
!127 = !DILocation(line: 40, column: 8, scope: !123)
!128 = distinct !DISubprogram(name: "deposit_for_burn_with_caller::deposit_for_burn_with_caller.2", linkageName: "deposit_for_burn_with_caller::deposit_for_burn_with_caller.2", scope: null, file: !121, line: 44, type: !5, scopeLine: 44, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!129 = !DILocation(line: 44, column: 4, scope: !130)
!130 = !DILexicalBlockFile(scope: !128, file: !121, discriminator: 0)
!131 = !DILocation(line: 48, column: 4, scope: !130)
!132 = !DILocation(line: 54, column: 4, scope: !130)
!133 = distinct !DISubprogram(name: "sol.model.struct.anchor.DepositForBurnContext", linkageName: "sol.model.struct.anchor.DepositForBurnContext", scope: null, file: !134, line: 45, type: !5, scopeLine: 45, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!134 = !DIFile(filename: "/solana-cctp-contracts/programs/token-messenger-minter/src/token_messenger/instructions/deposit_for_burn.rs", directory: "")
!135 = !DILocation(line: 45, column: 4, scope: !136)
!136 = !DILexicalBlockFile(scope: !133, file: !134, discriminator: 0)
!137 = !DILocation(line: 46, column: 6, scope: !136)
!138 = !DILocation(line: 47, column: 8, scope: !136)
!139 = !DILocation(line: 49, column: 6, scope: !136)
!140 = !DILocation(line: 50, column: 8, scope: !136)
!141 = !DILocation(line: 53, column: 6, scope: !136)
!142 = !DILocation(line: 57, column: 8, scope: !136)
!143 = !DILocation(line: 59, column: 6, scope: !136)
!144 = !DILocation(line: 64, column: 8, scope: !136)
!145 = !DILocation(line: 66, column: 6, scope: !136)
!146 = !DILocation(line: 67, column: 8, scope: !136)
!147 = !DILocation(line: 69, column: 6, scope: !136)
!148 = !DILocation(line: 70, column: 8, scope: !136)
!149 = !DILocation(line: 72, column: 6, scope: !136)
!150 = !DILocation(line: 75, column: 8, scope: !136)
!151 = !DILocation(line: 77, column: 6, scope: !136)
!152 = !DILocation(line: 78, column: 8, scope: !136)
!153 = !DILocation(line: 80, column: 6, scope: !136)
!154 = !DILocation(line: 88, column: 8, scope: !136)
!155 = !DILocation(line: 90, column: 6, scope: !136)
!156 = !DILocation(line: 91, column: 8, scope: !136)
!157 = !DILocation(line: 94, column: 6, scope: !136)
!158 = !DILocation(line: 95, column: 8, scope: !136)
!159 = !DILocation(line: 97, column: 8, scope: !136)
!160 = !DILocation(line: 100, column: 8, scope: !136)
!161 = !DILocation(line: 102, column: 8, scope: !136)
!162 = !DILocation(line: 104, column: 8, scope: !136)
!163 = distinct !DISubprogram(name: "sol.model.struct.DepositForBurnParams", linkageName: "sol.model.struct.DepositForBurnParams", scope: null, file: !134, line: 112, type: !5, scopeLine: 112, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!164 = !DILocation(line: 112, column: 4, scope: !165)
!165 = !DILexicalBlockFile(scope: !163, file: !134, discriminator: 0)
!166 = !DILocation(line: 113, column: 8, scope: !165)
!167 = !DILocation(line: 114, column: 8, scope: !165)
!168 = !DILocation(line: 115, column: 8, scope: !165)
!169 = distinct !DISubprogram(name: "deposit_for_burn::deposit_for_burn.2", linkageName: "deposit_for_burn::deposit_for_burn.2", scope: null, file: !134, line: 119, type: !5, scopeLine: 119, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!170 = !DILocation(line: 119, column: 4, scope: !171)
!171 = !DILexicalBlockFile(scope: !169, file: !134, discriminator: 0)
!172 = !DILocation(line: 128, column: 9, scope: !171)
!173 = !DILocation(line: 123, column: 4, scope: !171)
!174 = distinct !DISubprogram(name: "deposit_for_burn::deposit_for_burn_helper.anon.1", linkageName: "deposit_for_burn::deposit_for_burn_helper.anon.1", scope: null, file: !134, line: 192, type: !5, scopeLine: 192, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!175 = !DILocation(line: 192, column: 60, scope: !176)
!176 = !DILexicalBlockFile(scope: !174, file: !134, discriminator: 0)
!177 = !DILocation(line: 195, column: 12, scope: !176)
!178 = !DILocation(line: 196, column: 12, scope: !176)
!179 = !DILocation(line: 193, column: 25, scope: !176)
!180 = !DILocation(line: 193, column: 8, scope: !176)
!181 = !DILocation(line: 198, column: 8, scope: !176)
!182 = !DILocation(line: 198, column: 69, scope: !176)
!183 = distinct !DISubprogram(name: "deposit_for_burn::deposit_for_burn_helper.anon.2", linkageName: "deposit_for_burn::deposit_for_burn_helper.anon.2", scope: null, file: !134, line: 199, type: !5, scopeLine: 199, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!184 = !DILocation(line: 199, column: 11, scope: !185)
!185 = !DILexicalBlockFile(scope: !183, file: !134, discriminator: 0)
!186 = !DILocation(line: 202, column: 12, scope: !185)
!187 = !DILocation(line: 203, column: 12, scope: !185)
!188 = !DILocation(line: 204, column: 12, scope: !185)
!189 = !DILocation(line: 200, column: 25, scope: !185)
!190 = !DILocation(line: 200, column: 8, scope: !185)
!191 = !DILocation(line: 206, column: 8, scope: !185)
!192 = !DILocation(line: 206, column: 81, scope: !185)
!193 = distinct !DISubprogram(name: "deposit_for_burn::deposit_for_burn_helper.5", linkageName: "deposit_for_burn::deposit_for_burn_helper.5", scope: null, file: !134, line: 133, type: !5, scopeLine: 133, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!194 = !DILocation(line: 133, column: 4, scope: !195)
!195 = !DILexicalBlockFile(scope: !193, file: !134, discriminator: 0)
!196 = !DILocation(line: 140, column: 4, scope: !195)
!197 = !DILocation(line: 142, column: 4, scope: !195)
!198 = !DILocation(line: 150, column: 37, scope: !195)
!199 = !DILocation(line: 151, column: 40, scope: !195)
!200 = !DILocation(line: 152, column: 27, scope: !195)
!201 = !DILocation(line: 153, column: 35, scope: !195)
!202 = !DILocation(line: 154, column: 33, scope: !195)
!203 = !DILocation(line: 149, column: 30, scope: !195)
!204 = !DILocation(line: 161, column: 38, scope: !195)
!205 = !DILocation(line: 164, column: 28, scope: !195)
!206 = !DILocation(line: 159, column: 23, scope: !195)
!207 = !DILocation(line: 159, column: 4, scope: !195)
!208 = !DILocation(line: 168, column: 63, scope: !195)
!209 = !DILocation(line: 168, column: 4, scope: !195)
!210 = !DILocation(line: 173, column: 56, scope: !195)
!211 = !DILocation(line: 173, column: 8, scope: !195)
!212 = !DILocation(line: 174, column: 64, scope: !195)
!213 = !DILocation(line: 174, column: 8, scope: !195)
!214 = !DILocation(line: 175, column: 62, scope: !195)
!215 = !DILocation(line: 175, column: 8, scope: !195)
!216 = !DILocation(line: 176, column: 70, scope: !195)
!217 = !DILocation(line: 176, column: 8, scope: !195)
!218 = !DILocation(line: 180, column: 13, scope: !195)
!219 = !DILocation(line: 177, column: 8, scope: !195)
!220 = !DILocation(line: 181, column: 52, scope: !195)
!221 = !DILocation(line: 181, column: 8, scope: !195)
!222 = !DILocation(line: 172, column: 23, scope: !195)
!223 = !DILocation(line: 172, column: 4, scope: !195)
!224 = !DILocation(line: 184, column: 4, scope: !195)
!225 = !DILocation(line: 189, column: 18, scope: !195)
!226 = !DILocation(line: 189, column: 4, scope: !195)
!227 = !DILocation(line: 192, column: 42, scope: !195)
!228 = !DILocation(line: 192, column: 19, scope: !195)
!229 = !DILocation(line: 192, column: 16, scope: !195)
!230 = !DILocation(line: 192, column: 60, scope: !195)
!231 = !DILocation(line: 199, column: 11, scope: !195)
!232 = !DILocation(line: 192, column: 4, scope: !195)
!233 = !DILocation(line: 210, column: 4, scope: !195)
!234 = !DILocation(line: 221, column: 4, scope: !195)
!235 = distinct !DISubprogram(name: "sol.model.struct.anchor.InitializeContext", linkageName: "sol.model.struct.anchor.InitializeContext", scope: null, file: !236, line: 34, type: !5, scopeLine: 34, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!236 = !DIFile(filename: "/solana-cctp-contracts/programs/token-messenger-minter/src/token_messenger/instructions/initialize.rs", directory: "")
!237 = !DILocation(line: 34, column: 4, scope: !238)
!238 = !DILexicalBlockFile(scope: !235, file: !236, discriminator: 0)
!239 = !DILocation(line: 35, column: 6, scope: !238)
!240 = !DILocation(line: 36, column: 8, scope: !238)
!241 = !DILocation(line: 38, column: 6, scope: !238)
!242 = !DILocation(line: 39, column: 8, scope: !238)
!243 = !DILocation(line: 42, column: 6, scope: !238)
!244 = !DILocation(line: 46, column: 8, scope: !238)
!245 = !DILocation(line: 49, column: 6, scope: !238)
!246 = !DILocation(line: 56, column: 8, scope: !238)
!247 = !DILocation(line: 59, column: 6, scope: !238)
!248 = !DILocation(line: 66, column: 8, scope: !238)
!249 = !DILocation(line: 69, column: 6, scope: !238)
!250 = !DILocation(line: 70, column: 8, scope: !238)
!251 = !DILocation(line: 72, column: 8, scope: !238)
!252 = !DILocation(line: 74, column: 8, scope: !238)
!253 = distinct !DISubprogram(name: "sol.model.struct.InitializeParams", linkageName: "sol.model.struct.InitializeParams", scope: null, file: !236, line: 79, type: !5, scopeLine: 79, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!254 = !DILocation(line: 79, column: 4, scope: !255)
!255 = !DILexicalBlockFile(scope: !253, file: !236, discriminator: 0)
!256 = !DILocation(line: 80, column: 8, scope: !255)
!257 = !DILocation(line: 81, column: 8, scope: !255)
!258 = !DILocation(line: 82, column: 8, scope: !255)
!259 = distinct !DISubprogram(name: "initialize::initialize.2", linkageName: "initialize::initialize.2", scope: null, file: !236, line: 86, type: !5, scopeLine: 86, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!260 = !DILocation(line: 86, column: 4, scope: !261)
!261 = !DILexicalBlockFile(scope: !259, file: !236, discriminator: 0)
!262 = !DILocation(line: 88, column: 39, scope: !261)
!263 = !DILocation(line: 91, column: 13, scope: !261)
!264 = !DILocation(line: 94, column: 13, scope: !261)
!265 = !DILocation(line: 87, column: 4, scope: !261)
!266 = !DILocation(line: 98, column: 51, scope: !261)
!267 = !DILocation(line: 98, column: 4, scope: !261)
!268 = !DILocation(line: 99, column: 55, scope: !261)
!269 = !DILocation(line: 99, column: 4, scope: !261)
!270 = !DILocation(line: 100, column: 4, scope: !261)
!271 = !DILocation(line: 101, column: 36, scope: !261)
!272 = !DILocation(line: 101, column: 4, scope: !261)
!273 = !DILocation(line: 102, column: 4, scope: !261)
!274 = !DILocation(line: 103, column: 4, scope: !261)
!275 = !DILocation(line: 106, column: 9, scope: !261)
!276 = !DILocation(line: 107, column: 9, scope: !261)
!277 = !DILocation(line: 104, column: 4, scope: !261)
!278 = !DILocation(line: 110, column: 4, scope: !261)
!279 = !DILocation(line: 116, column: 49, scope: !261)
!280 = !DILocation(line: 116, column: 4, scope: !261)
!281 = !DILocation(line: 117, column: 4, scope: !261)
!282 = !DILocation(line: 118, column: 4, scope: !261)
!283 = !DILocation(line: 119, column: 4, scope: !261)
!284 = !DILocation(line: 122, column: 9, scope: !261)
!285 = !DILocation(line: 123, column: 9, scope: !261)
!286 = !DILocation(line: 120, column: 4, scope: !261)
!287 = !DILocation(line: 126, column: 4, scope: !261)
!288 = !DILocation(line: 131, column: 4, scope: !261)
!289 = !DILocation(line: 135, column: 4, scope: !261)
!290 = distinct !DISubprogram(name: "sol.model.struct.anchor.AddRemoteTokenMessengerContext", linkageName: "sol.model.struct.anchor.AddRemoteTokenMessengerContext", scope: null, file: !291, line: 35, type: !5, scopeLine: 35, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!291 = !DIFile(filename: "/solana-cctp-contracts/programs/token-messenger-minter/src/token_messenger/instructions/add_remote_token_messenger.rs", directory: "")
!292 = !DILocation(line: 35, column: 4, scope: !293)
!293 = !DILexicalBlockFile(scope: !290, file: !291, discriminator: 0)
!294 = !DILocation(line: 36, column: 6, scope: !293)
!295 = !DILocation(line: 37, column: 8, scope: !293)
!296 = !DILocation(line: 39, column: 6, scope: !293)
!297 = !DILocation(line: 40, column: 8, scope: !293)
!298 = !DILocation(line: 42, column: 6, scope: !293)
!299 = !DILocation(line: 45, column: 8, scope: !293)
!300 = !DILocation(line: 48, column: 6, scope: !293)
!301 = !DILocation(line: 58, column: 8, scope: !293)
!302 = !DILocation(line: 60, column: 8, scope: !293)
!303 = distinct !DISubprogram(name: "sol.model.struct.AddRemoteTokenMessengerParams", linkageName: "sol.model.struct.AddRemoteTokenMessengerParams", scope: null, file: !291, line: 65, type: !5, scopeLine: 65, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!304 = !DILocation(line: 65, column: 4, scope: !305)
!305 = !DILexicalBlockFile(scope: !303, file: !291, discriminator: 0)
!306 = !DILocation(line: 66, column: 8, scope: !305)
!307 = !DILocation(line: 67, column: 8, scope: !305)
!308 = distinct !DISubprogram(name: "add_remote_token_messenger::add_remote_token_messenger.2", linkageName: "add_remote_token_messenger::add_remote_token_messenger.2", scope: null, file: !291, line: 71, type: !5, scopeLine: 71, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!309 = !DILocation(line: 71, column: 4, scope: !310)
!310 = !DILexicalBlockFile(scope: !308, file: !291, discriminator: 0)
!311 = !DILocation(line: 75, column: 69, scope: !310)
!312 = !DILocation(line: 75, column: 4, scope: !310)
!313 = !DILocation(line: 77, column: 4, scope: !310)
!314 = !DILocation(line: 78, column: 4, scope: !310)
!315 = !DILocation(line: 81, column: 4, scope: !310)
!316 = !DILocation(line: 86, column: 4, scope: !310)
!317 = !DILocation(line: 91, column: 4, scope: !310)
!318 = distinct !DISubprogram(name: "sol.model.struct.anchor.ReplaceDepositForBurnContext", linkageName: "sol.model.struct.anchor.ReplaceDepositForBurnContext", scope: null, file: !319, line: 39, type: !5, scopeLine: 39, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!319 = !DIFile(filename: "/solana-cctp-contracts/programs/token-messenger-minter/src/token_messenger/instructions/replace_deposit_for_burn.rs", directory: "")
!320 = !DILocation(line: 39, column: 4, scope: !321)
!321 = !DILexicalBlockFile(scope: !318, file: !319, discriminator: 0)
!322 = !DILocation(line: 40, column: 6, scope: !321)
!323 = !DILocation(line: 41, column: 8, scope: !321)
!324 = !DILocation(line: 43, column: 6, scope: !321)
!325 = !DILocation(line: 44, column: 8, scope: !321)
!326 = !DILocation(line: 47, column: 6, scope: !321)
!327 = !DILocation(line: 51, column: 8, scope: !321)
!328 = !DILocation(line: 53, column: 6, scope: !321)
!329 = !DILocation(line: 54, column: 8, scope: !321)
!330 = !DILocation(line: 56, column: 6, scope: !321)
!331 = !DILocation(line: 57, column: 8, scope: !321)
!332 = !DILocation(line: 60, column: 6, scope: !321)
!333 = !DILocation(line: 61, column: 8, scope: !321)
!334 = !DILocation(line: 63, column: 8, scope: !321)
!335 = !DILocation(line: 66, column: 8, scope: !321)
!336 = !DILocation(line: 68, column: 8, scope: !321)
!337 = distinct !DISubprogram(name: "sol.model.struct.ReplaceDepositForBurnParams", linkageName: "sol.model.struct.ReplaceDepositForBurnParams", scope: null, file: !319, line: 73, type: !5, scopeLine: 73, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!338 = !DILocation(line: 73, column: 4, scope: !339)
!339 = !DILexicalBlockFile(scope: !337, file: !319, discriminator: 0)
!340 = !DILocation(line: 74, column: 8, scope: !339)
!341 = !DILocation(line: 75, column: 8, scope: !339)
!342 = !DILocation(line: 76, column: 8, scope: !339)
!343 = !DILocation(line: 77, column: 8, scope: !339)
!344 = distinct !DISubprogram(name: "replace_deposit_for_burn::replace_deposit_for_burn.2", linkageName: "replace_deposit_for_burn::replace_deposit_for_burn.2", scope: null, file: !319, line: 81, type: !5, scopeLine: 81, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!345 = !DILocation(line: 81, column: 4, scope: !346)
!346 = !DILexicalBlockFile(scope: !344, file: !319, discriminator: 0)
!347 = !DILocation(line: 85, column: 63, scope: !346)
!348 = !DILocation(line: 85, column: 4, scope: !346)
!349 = !DILocation(line: 86, column: 55, scope: !346)
!350 = !DILocation(line: 86, column: 4, scope: !346)
!351 = !DILocation(line: 89, column: 18, scope: !346)
!352 = !DILocation(line: 89, column: 4, scope: !346)
!353 = !DILocation(line: 93, column: 71, scope: !346)
!354 = !DILocation(line: 93, column: 8, scope: !346)
!355 = !DILocation(line: 92, column: 4, scope: !346)
!356 = !DILocation(line: 96, column: 47, scope: !346)
!357 = !DILocation(line: 96, column: 4, scope: !346)
!358 = !DILocation(line: 97, column: 4, scope: !346)
!359 = !DILocation(line: 103, column: 4, scope: !346)
!360 = !DILocation(line: 110, column: 34, scope: !346)
!361 = !DILocation(line: 110, column: 4, scope: !346)
!362 = !DILocation(line: 111, column: 30, scope: !346)
!363 = !DILocation(line: 111, column: 4, scope: !346)
!364 = !DILocation(line: 113, column: 27, scope: !346)
!365 = !DILocation(line: 113, column: 4, scope: !346)
!366 = !DILocation(line: 122, column: 63, scope: !346)
!367 = !DILocation(line: 122, column: 4, scope: !346)
!368 = !DILocation(line: 126, column: 56, scope: !346)
!369 = !DILocation(line: 126, column: 8, scope: !346)
!370 = !DILocation(line: 127, column: 64, scope: !346)
!371 = !DILocation(line: 127, column: 8, scope: !346)
!372 = !DILocation(line: 128, column: 62, scope: !346)
!373 = !DILocation(line: 128, column: 8, scope: !346)
!374 = !DILocation(line: 129, column: 70, scope: !346)
!375 = !DILocation(line: 129, column: 8, scope: !346)
!376 = !DILocation(line: 133, column: 13, scope: !346)
!377 = !DILocation(line: 130, column: 8, scope: !346)
!378 = !DILocation(line: 134, column: 52, scope: !346)
!379 = !DILocation(line: 134, column: 8, scope: !346)
!380 = !DILocation(line: 125, column: 23, scope: !346)
!381 = !DILocation(line: 125, column: 4, scope: !346)
!382 = !DILocation(line: 137, column: 4, scope: !346)
!383 = !DILocation(line: 142, column: 18, scope: !346)
!384 = !DILocation(line: 142, column: 4, scope: !346)
!385 = !DILocation(line: 146, column: 50, scope: !346)
!386 = !DILocation(line: 146, column: 8, scope: !346)
!387 = !DILocation(line: 147, column: 58, scope: !346)
!388 = !DILocation(line: 147, column: 8, scope: !346)
!389 = !DILocation(line: 149, column: 8, scope: !346)
!390 = !DILocation(line: 145, column: 21, scope: !346)
!391 = !DILocation(line: 145, column: 4, scope: !346)
!392 = !DILocation(line: 152, column: 16, scope: !346)
!393 = !DILocation(line: 152, column: 80, scope: !346)
!394 = !DILocation(line: 152, column: 4, scope: !346)
!395 = !DILocation(line: 155, column: 4, scope: !346)
!396 = !DILocation(line: 166, column: 4, scope: !346)
!397 = distinct !DISubprogram(name: "sol.model.struct.anchor.TransferOwnershipContext", linkageName: "sol.model.struct.anchor.TransferOwnershipContext", scope: null, file: !398, line: 31, type: !5, scopeLine: 31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!398 = !DIFile(filename: "/solana-cctp-contracts/programs/token-messenger-minter/src/token_messenger/instructions/transfer_ownership.rs", directory: "")
!399 = !DILocation(line: 31, column: 4, scope: !400)
!400 = !DILexicalBlockFile(scope: !397, file: !398, discriminator: 0)
!401 = !DILocation(line: 32, column: 6, scope: !400)
!402 = !DILocation(line: 33, column: 8, scope: !400)
!403 = !DILocation(line: 35, column: 6, scope: !400)
!404 = !DILocation(line: 39, column: 8, scope: !400)
!405 = distinct !DISubprogram(name: "sol.model.struct.TransferOwnershipParams", linkageName: "sol.model.struct.TransferOwnershipParams", scope: null, file: !398, line: 44, type: !5, scopeLine: 44, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!406 = !DILocation(line: 44, column: 4, scope: !407)
!407 = !DILexicalBlockFile(scope: !405, file: !398, discriminator: 0)
!408 = !DILocation(line: 45, column: 8, scope: !407)
!409 = distinct !DISubprogram(name: "transfer_ownership::transfer_ownership.anon.1", linkageName: "transfer_ownership::transfer_ownership.anon.1", scope: null, file: !398, line: 59, type: !5, scopeLine: 59, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!410 = !DILocation(line: 59, column: 4, scope: !411)
!411 = !DILexicalBlockFile(scope: !409, file: !398, discriminator: 0)
!412 = !DILocation(line: 60, column: 15, scope: !411)
!413 = !DILocation(line: 60, column: 8, scope: !411)
!414 = distinct !DISubprogram(name: "transfer_ownership::transfer_ownership.2", linkageName: "transfer_ownership::transfer_ownership.2", scope: null, file: !398, line: 49, type: !5, scopeLine: 49, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!415 = !DILocation(line: 49, column: 4, scope: !416)
!416 = !DILexicalBlockFile(scope: !414, file: !398, discriminator: 0)
!417 = !DILocation(line: 58, column: 5, scope: !416)
!418 = !DILocation(line: 53, column: 4, scope: !416)
!419 = !DILocation(line: 59, column: 4, scope: !416)
!420 = !DILocation(line: 63, column: 55, scope: !416)
!421 = !DILocation(line: 63, column: 4, scope: !416)
!422 = !DILocation(line: 65, column: 4, scope: !416)
!423 = !DILocation(line: 67, column: 4, scope: !416)
!424 = !DILocation(line: 72, column: 4, scope: !416)
!425 = distinct !DISubprogram(name: "sol.model.struct.anchor.HandleReceiveMessageContext", linkageName: "sol.model.struct.anchor.HandleReceiveMessageContext", scope: null, file: !426, line: 49, type: !5, scopeLine: 49, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!426 = !DIFile(filename: "/solana-cctp-contracts/programs/token-messenger-minter/src/token_messenger/instructions/handle_receive_message.rs", directory: "")
!427 = !DILocation(line: 49, column: 4, scope: !428)
!428 = !DILexicalBlockFile(scope: !425, file: !426, discriminator: 0)
!429 = !DILocation(line: 52, column: 6, scope: !428)
!430 = !DILocation(line: 57, column: 8, scope: !428)
!431 = !DILocation(line: 59, column: 6, scope: !428)
!432 = !DILocation(line: 60, column: 8, scope: !428)
!433 = !DILocation(line: 62, column: 6, scope: !428)
!434 = !DILocation(line: 65, column: 8, scope: !428)
!435 = !DILocation(line: 67, column: 6, scope: !428)
!436 = !DILocation(line: 68, column: 8, scope: !428)
!437 = !DILocation(line: 70, column: 6, scope: !428)
!438 = !DILocation(line: 78, column: 8, scope: !428)
!439 = !DILocation(line: 80, column: 6, scope: !428)
!440 = !DILocation(line: 89, column: 8, scope: !428)
!441 = !DILocation(line: 92, column: 6, scope: !428)
!442 = !DILocation(line: 96, column: 8, scope: !428)
!443 = !DILocation(line: 99, column: 6, scope: !428)
!444 = !DILocation(line: 108, column: 8, scope: !428)
!445 = !DILocation(line: 111, column: 8, scope: !428)
!446 = distinct !DISubprogram(name: "sol.model.struct.HandleReceiveMessageParams", linkageName: "sol.model.struct.HandleReceiveMessageParams", scope: null, file: !426, line: 116, type: !5, scopeLine: 116, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!447 = !DILocation(line: 116, column: 4, scope: !448)
!448 = !DILexicalBlockFile(scope: !446, file: !426, discriminator: 0)
!449 = !DILocation(line: 117, column: 8, scope: !448)
!450 = !DILocation(line: 118, column: 8, scope: !448)
!451 = !DILocation(line: 119, column: 8, scope: !448)
!452 = !DILocation(line: 120, column: 8, scope: !448)
!453 = distinct !DISubprogram(name: "handle_receive_message::handle_receive_message.2", linkageName: "handle_receive_message::handle_receive_message.2", scope: null, file: !426, line: 124, type: !5, scopeLine: 124, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!454 = !DILocation(line: 124, column: 4, scope: !455)
!455 = !DILexicalBlockFile(scope: !453, file: !426, discriminator: 0)
!456 = !DILocation(line: 128, column: 4, scope: !455)
!457 = !DILocation(line: 136, column: 23, scope: !455)
!458 = !DILocation(line: 136, column: 4, scope: !455)
!459 = !DILocation(line: 142, column: 38, scope: !455)
!460 = !DILocation(line: 142, column: 4, scope: !455)
!461 = !DILocation(line: 143, column: 30, scope: !455)
!462 = !DILocation(line: 143, column: 4, scope: !455)
!463 = !DILocation(line: 145, column: 4, scope: !455)
!464 = !DILocation(line: 153, column: 43, scope: !455)
!465 = !DILocation(line: 154, column: 45, scope: !455)
!466 = !DILocation(line: 155, column: 34, scope: !455)
!467 = !DILocation(line: 156, column: 35, scope: !455)
!468 = !DILocation(line: 157, column: 33, scope: !455)
!469 = !DILocation(line: 152, column: 30, scope: !455)
!470 = !DILocation(line: 162, column: 4, scope: !455)
!471 = !DILocation(line: 168, column: 4, scope: !455)
!472 = distinct !DISubprogram(name: "sol.model.struct.anchor.RemoveRemoteTokenMessengerContext", linkageName: "sol.model.struct.anchor.RemoveRemoteTokenMessengerContext", scope: null, file: !473, line: 33, type: !5, scopeLine: 33, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!473 = !DIFile(filename: "/solana-cctp-contracts/programs/token-messenger-minter/src/token_messenger/instructions/remove_remote_token_messenger.rs", directory: "")
!474 = !DILocation(line: 33, column: 4, scope: !475)
!475 = !DILexicalBlockFile(scope: !472, file: !473, discriminator: 0)
!476 = !DILocation(line: 34, column: 6, scope: !475)
!477 = !DILocation(line: 35, column: 8, scope: !475)
!478 = !DILocation(line: 37, column: 6, scope: !475)
!479 = !DILocation(line: 38, column: 8, scope: !475)
!480 = !DILocation(line: 40, column: 6, scope: !475)
!481 = !DILocation(line: 43, column: 8, scope: !475)
!482 = !DILocation(line: 45, column: 6, scope: !475)
!483 = !DILocation(line: 54, column: 8, scope: !475)
!484 = distinct !DISubprogram(name: "sol.model.struct.RemoveRemoteTokenMessengerParams", linkageName: "sol.model.struct.RemoveRemoteTokenMessengerParams", scope: null, file: !473, line: 59, type: !5, scopeLine: 59, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!485 = !DILocation(line: 59, column: 4, scope: !486)
!486 = !DILexicalBlockFile(scope: !484, file: !473, discriminator: 0)
!487 = distinct !DISubprogram(name: "remove_remote_token_messenger::remove_remote_token_messenger.2", linkageName: "remove_remote_token_messenger::remove_remote_token_messenger.2", scope: null, file: !473, line: 62, type: !5, scopeLine: 62, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!488 = !DILocation(line: 62, column: 4, scope: !489)
!489 = !DILexicalBlockFile(scope: !487, file: !473, discriminator: 0)
!490 = !DILocation(line: 66, column: 4, scope: !489)
!491 = !DILocation(line: 71, column: 4, scope: !489)
!492 = distinct !DISubprogram(name: "sol.model.struct.anchor.AcceptOwnershipContext", linkageName: "sol.model.struct.anchor.AcceptOwnershipContext", scope: null, file: !493, line: 31, type: !5, scopeLine: 31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!493 = !DIFile(filename: "/solana-cctp-contracts/programs/token-messenger-minter/src/token_messenger/instructions/accept_ownership.rs", directory: "")
!494 = !DILocation(line: 31, column: 4, scope: !495)
!495 = !DILexicalBlockFile(scope: !492, file: !493, discriminator: 0)
!496 = !DILocation(line: 32, column: 6, scope: !495)
!497 = !DILocation(line: 33, column: 8, scope: !495)
!498 = !DILocation(line: 35, column: 6, scope: !495)
!499 = !DILocation(line: 39, column: 8, scope: !495)
!500 = distinct !DISubprogram(name: "sol.model.struct.AcceptOwnershipParams", linkageName: "sol.model.struct.AcceptOwnershipParams", scope: null, file: !493, line: 44, type: !5, scopeLine: 44, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!501 = !DILocation(line: 44, column: 4, scope: !502)
!502 = !DILexicalBlockFile(scope: !500, file: !493, discriminator: 0)
!503 = distinct !DISubprogram(name: "accept_ownership::accept_ownership.2", linkageName: "accept_ownership::accept_ownership.2", scope: null, file: !493, line: 47, type: !5, scopeLine: 47, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!504 = !DILocation(line: 47, column: 4, scope: !505)
!505 = !DILexicalBlockFile(scope: !503, file: !493, discriminator: 0)
!506 = !DILocation(line: 51, column: 55, scope: !505)
!507 = !DILocation(line: 51, column: 4, scope: !505)
!508 = !DILocation(line: 53, column: 4, scope: !505)
!509 = !DILocation(line: 56, column: 4, scope: !505)
!510 = !DILocation(line: 57, column: 36, scope: !505)
!511 = !DILocation(line: 57, column: 4, scope: !505)
!512 = !DILocation(line: 59, column: 4, scope: !505)
!513 = !DILocation(line: 64, column: 4, scope: !505)
!514 = distinct !DISubprogram(name: "sol.model.struct.anchor.TokenMessenger", linkageName: "sol.model.struct.anchor.TokenMessenger", scope: null, file: !515, line: 25, type: !5, scopeLine: 25, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!515 = !DIFile(filename: "/solana-cctp-contracts/programs/token-messenger-minter/src/token_messenger/state.rs", directory: "")
!516 = !DILocation(line: 25, column: 4, scope: !517)
!517 = !DILexicalBlockFile(scope: !514, file: !515, discriminator: 0)
!518 = !DILocation(line: 26, column: 8, scope: !517)
!519 = !DILocation(line: 27, column: 8, scope: !517)
!520 = !DILocation(line: 28, column: 8, scope: !517)
!521 = !DILocation(line: 29, column: 8, scope: !517)
!522 = !DILocation(line: 30, column: 8, scope: !517)
!523 = distinct !DISubprogram(name: "sol.model.struct.TokenMessenger", linkageName: "sol.model.struct.TokenMessenger", scope: null, file: !515, line: 25, type: !5, scopeLine: 25, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!524 = !DILocation(line: 25, column: 4, scope: !525)
!525 = !DILexicalBlockFile(scope: !523, file: !515, discriminator: 0)
!526 = !DILocation(line: 26, column: 8, scope: !525)
!527 = !DILocation(line: 27, column: 8, scope: !525)
!528 = !DILocation(line: 28, column: 8, scope: !525)
!529 = !DILocation(line: 29, column: 8, scope: !525)
!530 = !DILocation(line: 30, column: 8, scope: !525)
!531 = distinct !DISubprogram(name: "sol.model.struct.anchor.RemoteTokenMessenger", linkageName: "sol.model.struct.anchor.RemoteTokenMessenger", scope: null, file: !515, line: 35, type: !5, scopeLine: 35, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!532 = !DILocation(line: 35, column: 4, scope: !533)
!533 = !DILexicalBlockFile(scope: !531, file: !515, discriminator: 0)
!534 = !DILocation(line: 36, column: 8, scope: !533)
!535 = !DILocation(line: 37, column: 8, scope: !533)
!536 = distinct !DISubprogram(name: "sol.model.struct.RemoteTokenMessenger", linkageName: "sol.model.struct.RemoteTokenMessenger", scope: null, file: !515, line: 35, type: !5, scopeLine: 35, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!537 = !DILocation(line: 35, column: 4, scope: !538)
!538 = !DILexicalBlockFile(scope: !536, file: !515, discriminator: 0)
!539 = !DILocation(line: 36, column: 8, scope: !538)
!540 = !DILocation(line: 37, column: 8, scope: !538)
!541 = distinct !DISubprogram(name: "state::TokenMessenger::validate.1", linkageName: "state::TokenMessenger::validate.1", scope: null, file: !515, line: 41, type: !5, scopeLine: 41, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!542 = !DILocation(line: 41, column: 8, scope: !543)
!543 = !DILexicalBlockFile(scope: !541, file: !515, discriminator: 0)
!544 = !DILocation(line: 42, column: 22, scope: !543)
!545 = !DILocation(line: 42, column: 8, scope: !543)
!546 = !DILocation(line: 42, column: 77, scope: !543)
!547 = !DILocation(line: 42, column: 43, scope: !543)
!548 = distinct !DISubprogram(name: "state::RemoteTokenMessenger::validate.1", linkageName: "state::RemoteTokenMessenger::validate.1", scope: null, file: !515, line: 47, type: !5, scopeLine: 47, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!549 = !DILocation(line: 47, column: 8, scope: !550)
!550 = !DILexicalBlockFile(scope: !548, file: !515, discriminator: 0)
!551 = !DILocation(line: 48, column: 32, scope: !550)
!552 = !DILocation(line: 48, column: 8, scope: !550)
!553 = distinct !DISubprogram(name: "sol.model.struct.BurnMessage", linkageName: "sol.model.struct.BurnMessage", scope: null, file: !554, line: 27, type: !5, scopeLine: 27, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!554 = !DIFile(filename: "/solana-cctp-contracts/programs/token-messenger-minter/src/token_messenger/burn_message.rs", directory: "")
!555 = !DILocation(line: 27, column: 4, scope: !556)
!556 = !DILexicalBlockFile(scope: !553, file: !554, discriminator: 0)
!557 = !DILocation(line: 28, column: 4, scope: !556)
!558 = distinct !DISubprogram(name: "burn_message::BurnMessage::new.2", linkageName: "burn_message::BurnMessage::new.2", scope: null, file: !554, line: 44, type: !5, scopeLine: 44, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!559 = !DILocation(line: 44, column: 8, scope: !560)
!560 = !DILexicalBlockFile(scope: !558, file: !554, discriminator: 0)
!561 = !DILocation(line: 45, column: 8, scope: !560)
!562 = !DILocation(line: 51, column: 12, scope: !560)
!563 = !DILocation(line: 50, column: 22, scope: !560)
!564 = !DILocation(line: 50, column: 8, scope: !560)
!565 = !DILocation(line: 53, column: 8, scope: !560)
!566 = !DILocation(line: 58, column: 8, scope: !560)
!567 = distinct !DISubprogram(name: "burn_message::BurnMessage::format_message.5", linkageName: "burn_message::BurnMessage::format_message.5", scope: null, file: !554, line: 63, type: !5, scopeLine: 63, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!568 = !DILocation(line: 63, column: 8, scope: !569)
!569 = !DILexicalBlockFile(scope: !567, file: !554, discriminator: 0)
!570 = !DILocation(line: 70, column: 25, scope: !569)
!571 = !DILocation(line: 70, column: 8, scope: !569)
!572 = !DILocation(line: 72, column: 85, scope: !569)
!573 = !DILocation(line: 72, column: 60, scope: !569)
!574 = !DILocation(line: 74, column: 40, scope: !569)
!575 = !DILocation(line: 74, column: 13, scope: !569)
!576 = !DILocation(line: 76, column: 44, scope: !569)
!577 = !DILocation(line: 76, column: 13, scope: !569)
!578 = !DILocation(line: 78, column: 37, scope: !569)
!579 = !DILocation(line: 78, column: 13, scope: !569)
!580 = !DILocation(line: 80, column: 44, scope: !569)
!581 = !DILocation(line: 80, column: 13, scope: !569)
!582 = !DILocation(line: 82, column: 8, scope: !569)
!583 = distinct !DISubprogram(name: "burn_message::BurnMessage::version.1", linkageName: "burn_message::BurnMessage::version.1", scope: null, file: !554, line: 86, type: !5, scopeLine: 86, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!584 = !DILocation(line: 86, column: 8, scope: !585)
!585 = !DILexicalBlockFile(scope: !583, file: !554, discriminator: 0)
!586 = !DILocation(line: 87, column: 13, scope: !585)
!587 = distinct !DISubprogram(name: "burn_message::BurnMessage::burn_token.1", linkageName: "burn_message::BurnMessage::burn_token.1", scope: null, file: !554, line: 91, type: !5, scopeLine: 91, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!588 = !DILocation(line: 91, column: 8, scope: !589)
!589 = !DILexicalBlockFile(scope: !587, file: !554, discriminator: 0)
!590 = !DILocation(line: 92, column: 13, scope: !589)
!591 = distinct !DISubprogram(name: "burn_message::BurnMessage::mint_recipient.1", linkageName: "burn_message::BurnMessage::mint_recipient.1", scope: null, file: !554, line: 96, type: !5, scopeLine: 96, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!592 = !DILocation(line: 96, column: 8, scope: !593)
!593 = !DILexicalBlockFile(scope: !591, file: !554, discriminator: 0)
!594 = !DILocation(line: 97, column: 13, scope: !593)
!595 = distinct !DISubprogram(name: "burn_message::BurnMessage::amount.1", linkageName: "burn_message::BurnMessage::amount.1", scope: null, file: !554, line: 101, type: !5, scopeLine: 101, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!596 = !DILocation(line: 101, column: 8, scope: !597)
!597 = !DILexicalBlockFile(scope: !595, file: !554, discriminator: 0)
!598 = !DILocation(line: 102, column: 8, scope: !597)
!599 = !DILocation(line: 108, column: 33, scope: !597)
!600 = !DILocation(line: 108, column: 13, scope: !597)
!601 = distinct !DISubprogram(name: "burn_message::BurnMessage::message_sender.1", linkageName: "burn_message::BurnMessage::message_sender.1", scope: null, file: !554, line: 112, type: !5, scopeLine: 112, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!602 = !DILocation(line: 112, column: 8, scope: !603)
!603 = !DILexicalBlockFile(scope: !601, file: !554, discriminator: 0)
!604 = !DILocation(line: 113, column: 13, scope: !603)
!605 = distinct !DISubprogram(name: "burn_message::BurnMessage::read_integer.2", linkageName: "burn_message::BurnMessage::read_integer.2", scope: null, file: !554, line: 120, type: !5, scopeLine: 120, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!606 = !DILocation(line: 120, column: 4, scope: !607)
!607 = !DILexicalBlockFile(scope: !605, file: !554, discriminator: 0)
!608 = !DILocation(line: 127, column: 17, scope: !607)
!609 = !DILocation(line: 128, column: 17, scope: !607)
!610 = !DILocation(line: 125, column: 11, scope: !607)
!611 = !DILocation(line: 125, column: 8, scope: !607)
!612 = distinct !DISubprogram(name: "burn_message::BurnMessage::read_pubkey.2", linkageName: "burn_message::BurnMessage::read_pubkey.2", scope: null, file: !554, line: 133, type: !5, scopeLine: 133, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!613 = !DILocation(line: 133, column: 4, scope: !614)
!614 = !DILexicalBlockFile(scope: !612, file: !554, discriminator: 0)
!615 = !DILocation(line: 134, column: 11, scope: !614)
!616 = !DILocation(line: 137, column: 9, scope: !614)
!617 = !DILocation(line: 134, column: 8, scope: !614)
!618 = distinct !DISubprogram(name: "sol.model.struct.anchor.SetTokenControllerContext", linkageName: "sol.model.struct.anchor.SetTokenControllerContext", scope: null, file: !619, line: 32, type: !5, scopeLine: 32, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!619 = !DIFile(filename: "/solana-cctp-contracts/programs/token-messenger-minter/src/token_minter/instructions/set_token_controller.rs", directory: "")
!620 = !DILocation(line: 32, column: 4, scope: !621)
!621 = !DILexicalBlockFile(scope: !618, file: !619, discriminator: 0)
!622 = !DILocation(line: 33, column: 6, scope: !621)
!623 = !DILocation(line: 34, column: 8, scope: !621)
!624 = !DILocation(line: 36, column: 6, scope: !621)
!625 = !DILocation(line: 39, column: 8, scope: !621)
!626 = !DILocation(line: 41, column: 6, scope: !621)
!627 = !DILocation(line: 42, column: 8, scope: !621)
!628 = distinct !DISubprogram(name: "sol.model.struct.SetTokenControllerParams", linkageName: "sol.model.struct.SetTokenControllerParams", scope: null, file: !619, line: 47, type: !5, scopeLine: 47, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!629 = !DILocation(line: 47, column: 4, scope: !630)
!630 = !DILexicalBlockFile(scope: !628, file: !619, discriminator: 0)
!631 = !DILocation(line: 48, column: 8, scope: !630)
!632 = distinct !DISubprogram(name: "set_token_controller::set_token_controller.2", linkageName: "set_token_controller::set_token_controller.2", scope: null, file: !619, line: 52, type: !5, scopeLine: 52, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!633 = !DILocation(line: 52, column: 4, scope: !634)
!634 = !DILexicalBlockFile(scope: !632, file: !619, discriminator: 0)
!635 = !DILocation(line: 56, column: 4, scope: !634)
!636 = !DILocation(line: 62, column: 4, scope: !634)
!637 = !DILocation(line: 64, column: 4, scope: !634)
!638 = !DILocation(line: 68, column: 4, scope: !634)
!639 = distinct !DISubprogram(name: "sol.model.struct.anchor.RemoveLocalTokenContext", linkageName: "sol.model.struct.anchor.RemoveLocalTokenContext", scope: null, file: !640, line: 34, type: !5, scopeLine: 34, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!640 = !DIFile(filename: "/solana-cctp-contracts/programs/token-messenger-minter/src/token_minter/instructions/remove_local_token.rs", directory: "")
!641 = !DILocation(line: 34, column: 4, scope: !642)
!642 = !DILexicalBlockFile(scope: !639, file: !640, discriminator: 0)
!643 = !DILocation(line: 35, column: 6, scope: !642)
!644 = !DILocation(line: 36, column: 8, scope: !642)
!645 = !DILocation(line: 38, column: 6, scope: !642)
!646 = !DILocation(line: 39, column: 8, scope: !642)
!647 = !DILocation(line: 41, column: 6, scope: !642)
!648 = !DILocation(line: 44, column: 8, scope: !642)
!649 = !DILocation(line: 46, column: 6, scope: !642)
!650 = !DILocation(line: 55, column: 8, scope: !642)
!651 = !DILocation(line: 57, column: 6, scope: !642)
!652 = !DILocation(line: 65, column: 8, scope: !642)
!653 = !DILocation(line: 67, column: 8, scope: !642)
!654 = distinct !DISubprogram(name: "sol.model.struct.RemoveLocalTokenParams", linkageName: "sol.model.struct.RemoveLocalTokenParams", scope: null, file: !640, line: 72, type: !5, scopeLine: 72, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!655 = !DILocation(line: 72, column: 4, scope: !656)
!656 = !DILexicalBlockFile(scope: !654, file: !640, discriminator: 0)
!657 = distinct !DISubprogram(name: "remove_local_token::remove_local_token.2", linkageName: "remove_local_token::remove_local_token.2", scope: null, file: !640, line: 75, type: !5, scopeLine: 75, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!658 = !DILocation(line: 75, column: 4, scope: !659)
!659 = !DILexicalBlockFile(scope: !657, file: !640, discriminator: 0)
!660 = !DILocation(line: 79, column: 47, scope: !659)
!661 = !DILocation(line: 79, column: 4, scope: !659)
!662 = !DILocation(line: 82, column: 27, scope: !659)
!663 = !DILocation(line: 83, column: 43, scope: !659)
!664 = !DILocation(line: 84, column: 35, scope: !659)
!665 = !DILocation(line: 85, column: 34, scope: !659)
!666 = !DILocation(line: 81, column: 30, scope: !659)
!667 = !DILocation(line: 88, column: 4, scope: !659)
!668 = !DILocation(line: 93, column: 4, scope: !659)
!669 = distinct !DISubprogram(name: "sol.model.struct.anchor.UpdatePauserContext", linkageName: "sol.model.struct.anchor.UpdatePauserContext", scope: null, file: !670, line: 32, type: !5, scopeLine: 32, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!670 = !DIFile(filename: "/solana-cctp-contracts/programs/token-messenger-minter/src/token_minter/instructions/update_pauser.rs", directory: "")
!671 = !DILocation(line: 32, column: 4, scope: !672)
!672 = !DILexicalBlockFile(scope: !669, file: !670, discriminator: 0)
!673 = !DILocation(line: 33, column: 6, scope: !672)
!674 = !DILocation(line: 34, column: 8, scope: !672)
!675 = !DILocation(line: 36, column: 6, scope: !672)
!676 = !DILocation(line: 39, column: 8, scope: !672)
!677 = !DILocation(line: 41, column: 6, scope: !672)
!678 = !DILocation(line: 42, column: 8, scope: !672)
!679 = distinct !DISubprogram(name: "sol.model.struct.UpdatePauserParams", linkageName: "sol.model.struct.UpdatePauserParams", scope: null, file: !670, line: 47, type: !5, scopeLine: 47, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!680 = !DILocation(line: 47, column: 4, scope: !681)
!681 = !DILexicalBlockFile(scope: !679, file: !670, discriminator: 0)
!682 = !DILocation(line: 48, column: 8, scope: !681)
!683 = distinct !DISubprogram(name: "update_pauser::update_pauser.2", linkageName: "update_pauser::update_pauser.2", scope: null, file: !670, line: 52, type: !5, scopeLine: 52, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!684 = !DILocation(line: 52, column: 4, scope: !685)
!685 = !DILexicalBlockFile(scope: !683, file: !670, discriminator: 0)
!686 = !DILocation(line: 53, column: 4, scope: !685)
!687 = !DILocation(line: 59, column: 4, scope: !685)
!688 = !DILocation(line: 61, column: 4, scope: !685)
!689 = !DILocation(line: 65, column: 4, scope: !685)
!690 = distinct !DISubprogram(name: "sol.model.struct.anchor.UnpauseContext", linkageName: "sol.model.struct.anchor.UnpauseContext", scope: null, file: !691, line: 29, type: !5, scopeLine: 29, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!691 = !DIFile(filename: "/solana-cctp-contracts/programs/token-messenger-minter/src/token_minter/instructions/unpause.rs", directory: "")
!692 = !DILocation(line: 29, column: 4, scope: !693)
!693 = !DILexicalBlockFile(scope: !690, file: !691, discriminator: 0)
!694 = !DILocation(line: 30, column: 6, scope: !693)
!695 = !DILocation(line: 31, column: 8, scope: !693)
!696 = !DILocation(line: 33, column: 6, scope: !693)
!697 = !DILocation(line: 37, column: 8, scope: !693)
!698 = distinct !DISubprogram(name: "sol.model.struct.UnpauseParams", linkageName: "sol.model.struct.UnpauseParams", scope: null, file: !691, line: 42, type: !5, scopeLine: 42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!699 = !DILocation(line: 42, column: 4, scope: !700)
!700 = !DILexicalBlockFile(scope: !698, file: !691, discriminator: 0)
!701 = distinct !DISubprogram(name: "unpause::unpause.2", linkageName: "unpause::unpause.2", scope: null, file: !691, line: 45, type: !5, scopeLine: 45, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!702 = !DILocation(line: 45, column: 4, scope: !703)
!703 = !DILexicalBlockFile(scope: !701, file: !691, discriminator: 0)
!704 = !DILocation(line: 46, column: 4, scope: !703)
!705 = !DILocation(line: 48, column: 4, scope: !703)
!706 = !DILocation(line: 50, column: 4, scope: !703)
!707 = distinct !DISubprogram(name: "sol.model.struct.anchor.UnlinkTokenPairContext", linkageName: "sol.model.struct.anchor.UnlinkTokenPairContext", scope: null, file: !708, line: 33, type: !5, scopeLine: 33, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!708 = !DIFile(filename: "/solana-cctp-contracts/programs/token-messenger-minter/src/token_minter/instructions/unlink_token_pair.rs", directory: "")
!709 = !DILocation(line: 33, column: 4, scope: !710)
!710 = !DILexicalBlockFile(scope: !707, file: !708, discriminator: 0)
!711 = !DILocation(line: 34, column: 6, scope: !710)
!712 = !DILocation(line: 35, column: 8, scope: !710)
!713 = !DILocation(line: 37, column: 6, scope: !710)
!714 = !DILocation(line: 38, column: 8, scope: !710)
!715 = !DILocation(line: 40, column: 6, scope: !710)
!716 = !DILocation(line: 43, column: 8, scope: !710)
!717 = !DILocation(line: 45, column: 6, scope: !710)
!718 = !DILocation(line: 55, column: 8, scope: !710)
!719 = distinct !DISubprogram(name: "sol.model.struct.UninkTokenPairParams", linkageName: "sol.model.struct.UninkTokenPairParams", scope: null, file: !708, line: 60, type: !5, scopeLine: 60, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!720 = !DILocation(line: 60, column: 4, scope: !721)
!721 = !DILexicalBlockFile(scope: !719, file: !708, discriminator: 0)
!722 = distinct !DISubprogram(name: "unlink_token_pair::unlink_token_pair.2", linkageName: "unlink_token_pair::unlink_token_pair.2", scope: null, file: !708, line: 63, type: !5, scopeLine: 63, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!723 = !DILocation(line: 63, column: 4, scope: !724)
!724 = !DILexicalBlockFile(scope: !722, file: !708, discriminator: 0)
!725 = !DILocation(line: 67, column: 45, scope: !724)
!726 = !DILocation(line: 67, column: 4, scope: !724)
!727 = !DILocation(line: 69, column: 4, scope: !724)
!728 = !DILocation(line: 75, column: 4, scope: !724)
!729 = distinct !DISubprogram(name: "sol.model.struct.anchor.AddLocalTokenContext", linkageName: "sol.model.struct.anchor.AddLocalTokenContext", scope: null, file: !730, line: 35, type: !5, scopeLine: 35, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!730 = !DIFile(filename: "/solana-cctp-contracts/programs/token-messenger-minter/src/token_minter/instructions/add_local_token.rs", directory: "")
!731 = !DILocation(line: 35, column: 4, scope: !732)
!732 = !DILexicalBlockFile(scope: !729, file: !730, discriminator: 0)
!733 = !DILocation(line: 36, column: 6, scope: !732)
!734 = !DILocation(line: 37, column: 8, scope: !732)
!735 = !DILocation(line: 39, column: 6, scope: !732)
!736 = !DILocation(line: 40, column: 8, scope: !732)
!737 = !DILocation(line: 42, column: 6, scope: !732)
!738 = !DILocation(line: 45, column: 8, scope: !732)
!739 = !DILocation(line: 48, column: 6, scope: !732)
!740 = !DILocation(line: 58, column: 8, scope: !732)
!741 = !DILocation(line: 60, column: 6, scope: !732)
!742 = !DILocation(line: 71, column: 8, scope: !732)
!743 = !DILocation(line: 73, column: 6, scope: !732)
!744 = !DILocation(line: 74, column: 8, scope: !732)
!745 = !DILocation(line: 76, column: 8, scope: !732)
!746 = !DILocation(line: 77, column: 8, scope: !732)
!747 = distinct !DISubprogram(name: "sol.model.struct.AddLocalTokenParams", linkageName: "sol.model.struct.AddLocalTokenParams", scope: null, file: !730, line: 82, type: !5, scopeLine: 82, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!748 = !DILocation(line: 82, column: 4, scope: !749)
!749 = !DILexicalBlockFile(scope: !747, file: !730, discriminator: 0)
!750 = distinct !DISubprogram(name: "add_local_token::add_local_token.2", linkageName: "add_local_token::add_local_token.2", scope: null, file: !730, line: 85, type: !5, scopeLine: 85, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!751 = !DILocation(line: 85, column: 4, scope: !752)
!752 = !DILexicalBlockFile(scope: !750, file: !730, discriminator: 0)
!753 = !DILocation(line: 89, column: 47, scope: !752)
!754 = !DILocation(line: 89, column: 4, scope: !752)
!755 = !DILocation(line: 91, column: 61, scope: !752)
!756 = !DILocation(line: 91, column: 4, scope: !752)
!757 = !DILocation(line: 92, column: 53, scope: !752)
!758 = !DILocation(line: 92, column: 4, scope: !752)
!759 = !DILocation(line: 95, column: 9, scope: !752)
!760 = !DILocation(line: 96, column: 9, scope: !752)
!761 = !DILocation(line: 93, column: 4, scope: !752)
!762 = !DILocation(line: 99, column: 9, scope: !752)
!763 = !DILocation(line: 100, column: 9, scope: !752)
!764 = !DILocation(line: 97, column: 4, scope: !752)
!765 = !DILocation(line: 103, column: 4, scope: !752)
!766 = !DILocation(line: 108, column: 4, scope: !752)
!767 = !DILocation(line: 113, column: 4, scope: !752)
!768 = distinct !DISubprogram(name: "sol.model.struct.anchor.LinkTokenPairContext", linkageName: "sol.model.struct.anchor.LinkTokenPairContext", scope: null, file: !769, line: 35, type: !5, scopeLine: 35, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!769 = !DIFile(filename: "/solana-cctp-contracts/programs/token-messenger-minter/src/token_minter/instructions/link_token_pair.rs", directory: "")
!770 = !DILocation(line: 35, column: 4, scope: !771)
!771 = !DILexicalBlockFile(scope: !768, file: !769, discriminator: 0)
!772 = !DILocation(line: 36, column: 6, scope: !771)
!773 = !DILocation(line: 37, column: 8, scope: !771)
!774 = !DILocation(line: 39, column: 6, scope: !771)
!775 = !DILocation(line: 40, column: 8, scope: !771)
!776 = !DILocation(line: 42, column: 6, scope: !771)
!777 = !DILocation(line: 45, column: 8, scope: !771)
!778 = !DILocation(line: 48, column: 6, scope: !771)
!779 = !DILocation(line: 59, column: 8, scope: !771)
!780 = !DILocation(line: 61, column: 8, scope: !771)
!781 = distinct !DISubprogram(name: "sol.model.struct.LinkTokenPairParams", linkageName: "sol.model.struct.LinkTokenPairParams", scope: null, file: !769, line: 66, type: !5, scopeLine: 66, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!782 = !DILocation(line: 66, column: 4, scope: !783)
!783 = !DILexicalBlockFile(scope: !781, file: !769, discriminator: 0)
!784 = !DILocation(line: 67, column: 8, scope: !783)
!785 = !DILocation(line: 68, column: 8, scope: !783)
!786 = !DILocation(line: 69, column: 8, scope: !783)
!787 = distinct !DISubprogram(name: "link_token_pair::link_token_pair.2", linkageName: "link_token_pair::link_token_pair.2", scope: null, file: !769, line: 73, type: !5, scopeLine: 73, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!788 = !DILocation(line: 73, column: 4, scope: !789)
!789 = !DILexicalBlockFile(scope: !787, file: !769, discriminator: 0)
!790 = !DILocation(line: 77, column: 45, scope: !789)
!791 = !DILocation(line: 77, column: 4, scope: !789)
!792 = !DILocation(line: 79, column: 4, scope: !789)
!793 = !DILocation(line: 80, column: 4, scope: !789)
!794 = !DILocation(line: 81, column: 4, scope: !789)
!795 = !DILocation(line: 84, column: 9, scope: !789)
!796 = !DILocation(line: 85, column: 9, scope: !789)
!797 = !DILocation(line: 82, column: 4, scope: !789)
!798 = !DILocation(line: 88, column: 4, scope: !789)
!799 = !DILocation(line: 93, column: 4, scope: !789)
!800 = !DILocation(line: 99, column: 4, scope: !789)
!801 = distinct !DISubprogram(name: "sol.model.struct.anchor.SetMaxBurnAmountPerMessageContext", linkageName: "sol.model.struct.anchor.SetMaxBurnAmountPerMessageContext", scope: null, file: !802, line: 33, type: !5, scopeLine: 33, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!802 = !DIFile(filename: "/solana-cctp-contracts/programs/token-messenger-minter/src/token_minter/instructions/set_max_burn_amount_per_message.rs", directory: "")
!803 = !DILocation(line: 33, column: 4, scope: !804)
!804 = !DILexicalBlockFile(scope: !801, file: !802, discriminator: 0)
!805 = !DILocation(line: 34, column: 6, scope: !804)
!806 = !DILocation(line: 35, column: 8, scope: !804)
!807 = !DILocation(line: 37, column: 6, scope: !804)
!808 = !DILocation(line: 40, column: 8, scope: !804)
!809 = !DILocation(line: 42, column: 6, scope: !804)
!810 = !DILocation(line: 50, column: 8, scope: !804)
!811 = distinct !DISubprogram(name: "sol.model.struct.SetMaxBurnAmountPerMessageParams", linkageName: "sol.model.struct.SetMaxBurnAmountPerMessageParams", scope: null, file: !802, line: 55, type: !5, scopeLine: 55, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!812 = !DILocation(line: 55, column: 4, scope: !813)
!813 = !DILexicalBlockFile(scope: !811, file: !802, discriminator: 0)
!814 = !DILocation(line: 56, column: 8, scope: !813)
!815 = distinct !DISubprogram(name: "set_max_burn_amount_per_message::set_max_burn_amount_per_message.2", linkageName: "set_max_burn_amount_per_message::set_max_burn_amount_per_message.2", scope: null, file: !802, line: 60, type: !5, scopeLine: 60, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!816 = !DILocation(line: 60, column: 4, scope: !817)
!817 = !DILexicalBlockFile(scope: !815, file: !802, discriminator: 0)
!818 = !DILocation(line: 64, column: 47, scope: !817)
!819 = !DILocation(line: 64, column: 4, scope: !817)
!820 = !DILocation(line: 66, column: 4, scope: !817)
!821 = !DILocation(line: 68, column: 4, scope: !817)
!822 = !DILocation(line: 73, column: 4, scope: !817)
!823 = distinct !DISubprogram(name: "sol.model.struct.anchor.BurnTokenCustodyContext", linkageName: "sol.model.struct.anchor.BurnTokenCustodyContext", scope: null, file: !824, line: 34, type: !5, scopeLine: 34, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!824 = !DIFile(filename: "/solana-cctp-contracts/programs/token-messenger-minter/src/token_minter/instructions/burn_token_custody.rs", directory: "")
!825 = !DILocation(line: 34, column: 4, scope: !826)
!826 = !DILexicalBlockFile(scope: !823, file: !824, discriminator: 0)
!827 = !DILocation(line: 35, column: 6, scope: !826)
!828 = !DILocation(line: 36, column: 8, scope: !826)
!829 = !DILocation(line: 38, column: 6, scope: !826)
!830 = !DILocation(line: 39, column: 8, scope: !826)
!831 = !DILocation(line: 41, column: 6, scope: !826)
!832 = !DILocation(line: 44, column: 8, scope: !826)
!833 = !DILocation(line: 46, column: 6, scope: !826)
!834 = !DILocation(line: 53, column: 8, scope: !826)
!835 = !DILocation(line: 55, column: 6, scope: !826)
!836 = !DILocation(line: 64, column: 8, scope: !826)
!837 = !DILocation(line: 66, column: 6, scope: !826)
!838 = !DILocation(line: 70, column: 8, scope: !826)
!839 = !DILocation(line: 72, column: 8, scope: !826)
!840 = distinct !DISubprogram(name: "sol.model.struct.BurnTokenCustodyParams", linkageName: "sol.model.struct.BurnTokenCustodyParams", scope: null, file: !824, line: 77, type: !5, scopeLine: 77, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!841 = !DILocation(line: 77, column: 4, scope: !842)
!842 = !DILexicalBlockFile(scope: !840, file: !824, discriminator: 0)
!843 = !DILocation(line: 78, column: 4, scope: !842)
!844 = distinct !DISubprogram(name: "burn_token_custody::burn_token_custody.anon.1", linkageName: "burn_token_custody::burn_token_custody.anon.1", scope: null, file: !824, line: 86, type: !5, scopeLine: 86, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!845 = !DILocation(line: 86, column: 84, scope: !846)
!846 = !DILexicalBlockFile(scope: !844, file: !824, discriminator: 0)
!847 = distinct !DISubprogram(name: "burn_token_custody::burn_token_custody.anon.2", linkageName: "burn_token_custody::burn_token_custody.anon.2", scope: null, file: !824, line: 88, type: !5, scopeLine: 88, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!848 = !DILocation(line: 88, column: 11, scope: !849)
!849 = !DILexicalBlockFile(scope: !847, file: !824, discriminator: 0)
!850 = distinct !DISubprogram(name: "burn_token_custody::burn_token_custody.2", linkageName: "burn_token_custody::burn_token_custody.2", scope: null, file: !824, line: 82, type: !5, scopeLine: 82, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!851 = !DILocation(line: 82, column: 4, scope: !852)
!852 = !DILexicalBlockFile(scope: !850, file: !824, discriminator: 0)
!853 = !DILocation(line: 86, column: 25, scope: !852)
!854 = !DILocation(line: 86, column: 22, scope: !852)
!855 = !DILocation(line: 86, column: 84, scope: !852)
!856 = !DILocation(line: 88, column: 11, scope: !852)
!857 = !DILocation(line: 86, column: 4, scope: !852)
!858 = !DILocation(line: 92, column: 4, scope: !852)
!859 = !DILocation(line: 94, column: 4, scope: !852)
!860 = !DILocation(line: 97, column: 35, scope: !852)
!861 = !DILocation(line: 99, column: 50, scope: !852)
!862 = !DILocation(line: 99, column: 12, scope: !852)
!863 = !DILocation(line: 100, column: 53, scope: !852)
!864 = !DILocation(line: 100, column: 12, scope: !852)
!865 = !DILocation(line: 101, column: 49, scope: !852)
!866 = !DILocation(line: 101, column: 12, scope: !852)
!867 = !DILocation(line: 98, column: 8, scope: !852)
!868 = !DILocation(line: 96, column: 18, scope: !852)
!869 = !DILocation(line: 104, column: 5, scope: !852)
!870 = !DILocation(line: 96, column: 4, scope: !852)
!871 = !DILocation(line: 106, column: 4, scope: !852)
!872 = !DILocation(line: 108, column: 4, scope: !852)
!873 = !DILocation(line: 113, column: 4, scope: !852)
!874 = distinct !DISubprogram(name: "sol.model.struct.anchor.PauseContext", linkageName: "sol.model.struct.anchor.PauseContext", scope: null, file: !875, line: 29, type: !5, scopeLine: 29, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!875 = !DIFile(filename: "/solana-cctp-contracts/programs/token-messenger-minter/src/token_minter/instructions/pause.rs", directory: "")
!876 = !DILocation(line: 29, column: 4, scope: !877)
!877 = !DILexicalBlockFile(scope: !874, file: !875, discriminator: 0)
!878 = !DILocation(line: 30, column: 6, scope: !877)
!879 = !DILocation(line: 31, column: 8, scope: !877)
!880 = !DILocation(line: 33, column: 6, scope: !877)
!881 = !DILocation(line: 37, column: 8, scope: !877)
!882 = distinct !DISubprogram(name: "sol.model.struct.PauseParams", linkageName: "sol.model.struct.PauseParams", scope: null, file: !875, line: 42, type: !5, scopeLine: 42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!883 = !DILocation(line: 42, column: 4, scope: !884)
!884 = !DILexicalBlockFile(scope: !882, file: !875, discriminator: 0)
!885 = distinct !DISubprogram(name: "pause::pause.2", linkageName: "pause::pause.2", scope: null, file: !875, line: 45, type: !5, scopeLine: 45, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!886 = !DILocation(line: 45, column: 4, scope: !887)
!887 = !DILexicalBlockFile(scope: !885, file: !875, discriminator: 0)
!888 = !DILocation(line: 46, column: 4, scope: !887)
!889 = !DILocation(line: 48, column: 4, scope: !887)
!890 = !DILocation(line: 50, column: 4, scope: !887)
!891 = distinct !DISubprogram(name: "sol.model.struct.anchor.TokenMinter", linkageName: "sol.model.struct.anchor.TokenMinter", scope: null, file: !892, line: 29, type: !5, scopeLine: 29, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!892 = !DIFile(filename: "/solana-cctp-contracts/programs/token-messenger-minter/src/token_minter/state.rs", directory: "")
!893 = !DILocation(line: 29, column: 4, scope: !894)
!894 = !DILexicalBlockFile(scope: !891, file: !892, discriminator: 0)
!895 = !DILocation(line: 30, column: 8, scope: !894)
!896 = !DILocation(line: 31, column: 8, scope: !894)
!897 = !DILocation(line: 32, column: 8, scope: !894)
!898 = !DILocation(line: 33, column: 8, scope: !894)
!899 = distinct !DISubprogram(name: "sol.model.struct.TokenMinter", linkageName: "sol.model.struct.TokenMinter", scope: null, file: !892, line: 29, type: !5, scopeLine: 29, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!900 = !DILocation(line: 29, column: 4, scope: !901)
!901 = !DILexicalBlockFile(scope: !899, file: !892, discriminator: 0)
!902 = !DILocation(line: 30, column: 8, scope: !901)
!903 = !DILocation(line: 31, column: 8, scope: !901)
!904 = !DILocation(line: 32, column: 8, scope: !901)
!905 = !DILocation(line: 33, column: 8, scope: !901)
!906 = distinct !DISubprogram(name: "sol.model.struct.anchor.TokenPair", linkageName: "sol.model.struct.anchor.TokenPair", scope: null, file: !892, line: 38, type: !5, scopeLine: 38, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!907 = !DILocation(line: 38, column: 4, scope: !908)
!908 = !DILexicalBlockFile(scope: !906, file: !892, discriminator: 0)
!909 = !DILocation(line: 39, column: 8, scope: !908)
!910 = !DILocation(line: 40, column: 8, scope: !908)
!911 = !DILocation(line: 41, column: 8, scope: !908)
!912 = !DILocation(line: 42, column: 8, scope: !908)
!913 = distinct !DISubprogram(name: "sol.model.struct.TokenPair", linkageName: "sol.model.struct.TokenPair", scope: null, file: !892, line: 38, type: !5, scopeLine: 38, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!914 = !DILocation(line: 38, column: 4, scope: !915)
!915 = !DILexicalBlockFile(scope: !913, file: !892, discriminator: 0)
!916 = !DILocation(line: 39, column: 8, scope: !915)
!917 = !DILocation(line: 40, column: 8, scope: !915)
!918 = !DILocation(line: 41, column: 8, scope: !915)
!919 = !DILocation(line: 42, column: 8, scope: !915)
!920 = distinct !DISubprogram(name: "sol.model.struct.anchor.LocalToken", linkageName: "sol.model.struct.anchor.LocalToken", scope: null, file: !892, line: 47, type: !5, scopeLine: 47, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!921 = !DILocation(line: 47, column: 4, scope: !922)
!922 = !DILexicalBlockFile(scope: !920, file: !892, discriminator: 0)
!923 = !DILocation(line: 48, column: 8, scope: !922)
!924 = !DILocation(line: 49, column: 8, scope: !922)
!925 = !DILocation(line: 50, column: 8, scope: !922)
!926 = !DILocation(line: 51, column: 8, scope: !922)
!927 = !DILocation(line: 52, column: 8, scope: !922)
!928 = !DILocation(line: 53, column: 8, scope: !922)
!929 = !DILocation(line: 54, column: 8, scope: !922)
!930 = !DILocation(line: 55, column: 8, scope: !922)
!931 = !DILocation(line: 56, column: 8, scope: !922)
!932 = distinct !DISubprogram(name: "sol.model.struct.LocalToken", linkageName: "sol.model.struct.LocalToken", scope: null, file: !892, line: 47, type: !5, scopeLine: 47, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!933 = !DILocation(line: 47, column: 4, scope: !934)
!934 = !DILexicalBlockFile(scope: !932, file: !892, discriminator: 0)
!935 = !DILocation(line: 48, column: 8, scope: !934)
!936 = !DILocation(line: 49, column: 8, scope: !934)
!937 = !DILocation(line: 50, column: 8, scope: !934)
!938 = !DILocation(line: 51, column: 8, scope: !934)
!939 = !DILocation(line: 52, column: 8, scope: !934)
!940 = !DILocation(line: 53, column: 8, scope: !934)
!941 = !DILocation(line: 54, column: 8, scope: !934)
!942 = !DILocation(line: 55, column: 8, scope: !934)
!943 = !DILocation(line: 56, column: 8, scope: !934)
!944 = distinct !DISubprogram(name: "state::TokenMinter::validate.1", linkageName: "state::TokenMinter::validate.1", scope: null, file: !892, line: 60, type: !5, scopeLine: 60, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!945 = !DILocation(line: 60, column: 8, scope: !946)
!946 = !DILexicalBlockFile(scope: !944, file: !892, discriminator: 0)
!947 = !DILocation(line: 61, column: 33, scope: !946)
!948 = !DILocation(line: 61, column: 8, scope: !946)
!949 = !DILocation(line: 61, column: 69, scope: !946)
!950 = !DILocation(line: 61, column: 54, scope: !946)
!951 = distinct !DISubprogram(name: "state::TokenMinter::burn.7", linkageName: "state::TokenMinter::burn.7", scope: null, file: !892, line: 64, type: !5, scopeLine: 64, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!952 = !DILocation(line: 64, column: 8, scope: !953)
!953 = !DILexicalBlockFile(scope: !951, file: !892, discriminator: 0)
!954 = !DILocation(line: 73, column: 8, scope: !953)
!955 = !DILocation(line: 74, column: 8, scope: !953)
!956 = !DILocation(line: 80, column: 62, scope: !953)
!957 = !DILocation(line: 80, column: 8, scope: !953)
!958 = !DILocation(line: 81, column: 73, scope: !953)
!959 = !DILocation(line: 81, column: 58, scope: !953)
!960 = !DILocation(line: 81, column: 8, scope: !953)
!961 = !DILocation(line: 85, column: 12, scope: !953)
!962 = !DILocation(line: 83, column: 60, scope: !953)
!963 = !DILocation(line: 83, column: 8, scope: !953)
!964 = !DILocation(line: 92, column: 8, scope: !953)
!965 = distinct !DISubprogram(name: "state::TokenMinter::transfer.7", linkageName: "state::TokenMinter::transfer.7", scope: null, file: !892, line: 95, type: !5, scopeLine: 95, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!966 = !DILocation(line: 95, column: 8, scope: !967)
!967 = !DILexicalBlockFile(scope: !965, file: !892, discriminator: 0)
!968 = !DILocation(line: 104, column: 8, scope: !967)
!969 = !DILocation(line: 106, column: 70, scope: !967)
!970 = !DILocation(line: 106, column: 8, scope: !967)
!971 = !DILocation(line: 107, column: 81, scope: !967)
!972 = !DILocation(line: 107, column: 66, scope: !967)
!973 = !DILocation(line: 107, column: 8, scope: !967)
!974 = !DILocation(line: 109, column: 8, scope: !967)
!975 = !DILocation(line: 113, column: 12, scope: !967)
!976 = !DILocation(line: 111, column: 22, scope: !967)
!977 = !DILocation(line: 119, column: 9, scope: !967)
!978 = !DILocation(line: 111, column: 8, scope: !967)
!979 = !DILocation(line: 121, column: 8, scope: !967)
!980 = distinct !DISubprogram(name: "state::TokenMinter::close_token_account.5", linkageName: "state::TokenMinter::close_token_account.5", scope: null, file: !892, line: 124, type: !5, scopeLine: 124, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!981 = !DILocation(line: 124, column: 8, scope: !982)
!982 = !DILexicalBlockFile(scope: !980, file: !892, discriminator: 0)
!983 = !DILocation(line: 131, column: 8, scope: !982)
!984 = !DILocation(line: 133, column: 8, scope: !982)
!985 = !DILocation(line: 136, column: 12, scope: !982)
!986 = !DILocation(line: 137, column: 12, scope: !982)
!987 = !DILocation(line: 135, column: 27, scope: !982)
!988 = !DILocation(line: 135, column: 8, scope: !982)
!989 = !DILocation(line: 140, column: 26, scope: !982)
!990 = !DILocation(line: 140, column: 8, scope: !982)
!991 = !DILocation(line: 142, column: 53, scope: !982)
!992 = !DILocation(line: 142, column: 8, scope: !982)
!993 = distinct !DISubprogram(name: "state::TokenPair::validate.1", linkageName: "state::TokenPair::validate.1", scope: null, file: !892, line: 147, type: !5, scopeLine: 147, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!994 = !DILocation(line: 147, column: 8, scope: !995)
!995 = !DILexicalBlockFile(scope: !993, file: !892, discriminator: 0)
!996 = !DILocation(line: 148, column: 29, scope: !995)
!997 = !DILocation(line: 148, column: 8, scope: !995)
!998 = !DILocation(line: 148, column: 70, scope: !995)
!999 = !DILocation(line: 148, column: 50, scope: !995)
!1000 = distinct !DISubprogram(name: "state::LocalToken::validate.1", linkageName: "state::LocalToken::validate.1", scope: null, file: !892, line: 153, type: !5, scopeLine: 153, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1001 = !DILocation(line: 153, column: 8, scope: !1002)
!1002 = !DILexicalBlockFile(scope: !1000, file: !892, discriminator: 0)
!1003 = !DILocation(line: 154, column: 24, scope: !1002)
!1004 = !DILocation(line: 154, column: 8, scope: !1002)
!1005 = !DILocation(line: 154, column: 58, scope: !1002)
!1006 = !DILocation(line: 154, column: 45, scope: !1002)
