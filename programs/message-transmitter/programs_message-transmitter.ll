; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

@"arg1.checked_mul(&arg2)" = internal constant [23 x i8] c"arg1.checked_mul(&arg2)"
@"\22Error: Overflow in {} * {}\22" = internal constant [28 x i8] c"\22Error: Overflow in {} * {}\22"
@"arg1.checked_div(&arg2)" = internal constant [23 x i8] c"arg1.checked_div(&arg2)"
@"(MathError::ErrorInDivision)" = internal constant [28 x i8] c"(MathError::ErrorInDivision)"
@"\22Error: Error in {} / {}\22" = internal constant [25 x i8] c"\22Error: Error in {} / {}\22"
@"arg1.checked_sub(&arg2)" = internal constant [23 x i8] c"arg1.checked_sub(&arg2)"
@"(MathError::MathUnderflow)" = internal constant [26 x i8] c"(MathError::MathUnderflow)"
@"\22Error: Underflow in {} - {}\22" = internal constant [29 x i8] c"\22Error: Underflow in {} - {}\22"
@"arg1.checked_add(&arg2)" = internal constant [23 x i8] c"arg1.checked_add(&arg2)"
@arg2 = internal constant [4 x i8] c"arg2"
@T = internal constant [1 x i8] c"T"
@arg1 = internal constant [4 x i8] c"arg1"
@"(MathError::MathOverflow)" = internal constant [25 x i8] c"(MathError::MathOverflow)"
@"arg1,arg2" = internal constant [9 x i8] c"arg1,arg2"
@"\22Error: Overflow in {} + {}\22" = internal constant [28 x i8] c"\22Error: Overflow in {} + {}\22"
@res = internal constant [3 x i8] c"res"
@"program.programdata_address()?" = internal constant [30 x i8] c"program.programdata_address()?"
@program = internal constant [7 x i8] c"program"
@"&AccountInfo" = internal constant [12 x i8] c"&AccountInfo"
@expected_upgrade_authority = internal constant [26 x i8] c"expected_upgrade_authority"
@program_data.upgrade_authority_address = internal constant [38 x i8] c"program_data.upgrade_authority_address"
@program_data = internal constant [12 x i8] c"program_data"
@"ErrorCode::InvalidProgramExecutable" = internal constant [35 x i8] c"ErrorCode::InvalidProgramExecutable"
@"program_data.key()" = internal constant [18 x i8] c"program_data.key()"
@programdata_address = internal constant [19 x i8] c"programdata_address"
@"expected_upgrade_authority,ErrorCode::ConstraintOwner" = internal constant [53 x i8] c"expected_upgrade_authority,ErrorCode::ConstraintOwner"
@current_upgrade_authority = internal constant [25 x i8] c"current_upgrade_authority"
@"entry,bit" = internal constant [9 x i8] c"entry,bit"
@entry = internal constant [5 x i8] c"entry"
@"64" = internal constant [2 x i8] c"64"
@position = internal constant [8 x i8] c"position"
@self.first_nonce = internal constant [16 x i8] c"self.first_nonce"
@"MessageTransmitterError::InvalidNonce" = internal constant [37 x i8] c"MessageTransmitterError::InvalidNonce"
@"nonce>=self.first_nonce&&nonce<utils::checked_add(self.first_nonce,Self::MAX_NONCESasu64)?" = internal constant [90 x i8] c"nonce>=self.first_nonce&&nonce<utils::checked_add(self.first_nonce,Self::MAX_NONCESasu64)?"
@bit = internal constant [3 x i8] c"bit"
@self.used_nonces = internal constant [16 x i8] c"self.used_nonces"
@"MessageTransmitterError::NonceAlreadyUsed" = internal constant [41 x i8] c"MessageTransmitterError::NonceAlreadyUsed"
@"self.used_nonces[entry]&bit==0" = internal constant [30 x i8] c"self.used_nonces[entry]&bit==0"
@"(entry,bit)" = internal constant [11 x i8] c"(entry,bit)"
@"&mutself" = internal constant [8 x i8] c"&mutself"
@"Self::MAX_NONCES" = internal constant [16 x i8] c"Self::MAX_NONCES"
@"(MessageTransmitterError::InvalidNonce)" = internal constant [39 x i8] c"(MessageTransmitterError::InvalidNonce)"
@"*x" = internal constant [2 x i8] c"*x"
@address = internal constant [7 x i8] c"address"
@pubkey = internal constant [6 x i8] c"pubkey"
@"MessageTransmitterError::InvalidMessageHash" = internal constant [43 x i8] c"MessageTransmitterError::InvalidMessageHash"
@"27" = internal constant [2 x i8] c"27"
@"MessageTransmitterError::InvalidSignatureSValue" = internal constant [47 x i8] c"MessageTransmitterError::InvalidSignatureSValue"
@"!signature.s.is_high()" = internal constant [22 x i8] c"!signature.s.is_high()"
@"MessageTransmitterError::InvalidSignatureRecoveryId" = internal constant [51 x i8] c"MessageTransmitterError::InvalidSignatureRecoveryId"
@"(27..=30).contains(&recovery_id)" = internal constant [32 x i8] c"(27..=30).contains(&recovery_id)"
@recovery_id = internal constant [11 x i8] c"recovery_id"
@"65,MessageTransmitterError::InvalidAttesterSignature" = internal constant [52 x i8] c"65,MessageTransmitterError::InvalidAttesterSignature"
@"attestation_signature.len()" = internal constant [27 x i8] c"attestation_signature.len()"
@"32,MessageTransmitterError::InvalidMessageHash" = internal constant [46 x i8] c"32,MessageTransmitterError::InvalidMessageHash"
@"message_hash.len()" = internal constant [18 x i8] c"message_hash.len()"
@attestation_signature = internal constant [21 x i8] c"attestation_signature"
@"&[u8]" = internal constant [5 x i8] c"&[u8]"
@"state::MessageTransmitter::verify_attestation_signatures.anon.1.1" = internal constant [63 x i8] c"state::MessageTransmitter::verify_attestation_signatures.anon.1"
@"MessageTransmitterError::InvalidAttestationLength" = internal constant [49 x i8] c"MessageTransmitterError::InvalidAttestationLength"
@"utils::checked_mul(Self::ATTESTATION_SIGNATURE_LENGTH,self.signature_thresholdasusize)?" = internal constant [87 x i8] c"utils::checked_mul(Self::ATTESTATION_SIGNATURE_LENGTH,self.signature_thresholdasusize)?"
@"attestation.len()" = internal constant [17 x i8] c"attestation.len()"
@"&Hash" = internal constant [5 x i8] c"&Hash"
@"MessageTransmitterError::InvalidAttesterSignature" = internal constant [49 x i8] c"MessageTransmitterError::InvalidAttesterSignature"
@"self.is_enabled_attester(&recovered_attester)" = internal constant [45 x i8] c"self.is_enabled_attester(&recovered_attester)"
@last_attester = internal constant [13 x i8] c"last_attester"
@recovered_attester = internal constant [18 x i8] c"recovered_attester"
@message_hash = internal constant [12 x i8] c"message_hash"
@signature = internal constant [9 x i8] c"signature"
@"(MessageTransmitterError::InvalidSignatureOrderOrDupe)" = internal constant [54 x i8] c"(MessageTransmitterError::InvalidSignatureOrderOrDupe)"
@self.next_available_nonce = internal constant [25 x i8] c"self.next_available_nonce"
@self.enabled_attesters = internal constant [22 x i8] c"self.enabled_attesters"
@self.signature_threshold = internal constant [24 x i8] c"self.signature_threshold"
@self.pauser = internal constant [11 x i8] c"self.pauser"
@self.attester_manager = internal constant [21 x i8] c"self.attester_manager"
@self.owner = internal constant [10 x i8] c"self.owner"
@"[u64;100]" = internal constant [9 x i8] c"[u64;100]"
@next_available_nonce = internal constant [20 x i8] c"next_available_nonce"
@"Vec<Pubkey>" = internal constant [11 x i8] c"Vec<Pubkey>"
@enabled_attesters = internal constant [17 x i8] c"enabled_attesters"
@signature_threshold = internal constant [19 x i8] c"signature_threshold"
@bool = internal constant [4 x i8] c"bool"
@paused = internal constant [6 x i8] c"paused"
@"params:IsNonceUsedParams" = internal constant [24 x i8] c"params:IsNonceUsedParams"
@"ctx:Context<IsNonceUsedContext>" = internal constant [31 x i8] c"ctx:Context<IsNonceUsedContext>"
@"params:GetNoncePDAParams" = internal constant [24 x i8] c"params:GetNoncePDAParams"
@"ctx:Context<GetNoncePDAContext>" = internal constant [31 x i8] c"ctx:Context<GetNoncePDAContext>"
@"params:ReclaimEventAccountParams" = internal constant [32 x i8] c"params:ReclaimEventAccountParams"
@"ctx:Context<ReclaimEventAccountContext>" = internal constant [39 x i8] c"ctx:Context<ReclaimEventAccountContext>"
@"params:ReceiveMessageParams" = internal constant [27 x i8] c"params:ReceiveMessageParams"
@"ctx:Context<'_,'_,'_,'info,ReceiveMessageContext<'info>>" = internal constant [56 x i8] c"ctx:Context<'_,'_,'_,'info,ReceiveMessageContext<'info>>"
@"params:ReplaceMessageParams" = internal constant [27 x i8] c"params:ReplaceMessageParams"
@"ctx:Context<ReplaceMessageContext>" = internal constant [34 x i8] c"ctx:Context<ReplaceMessageContext>"
@"params:SendMessageWithCallerParams" = internal constant [34 x i8] c"params:SendMessageWithCallerParams"
@"params:SendMessageParams" = internal constant [24 x i8] c"params:SendMessageParams"
@"ctx:Context<SendMessageContext>" = internal constant [31 x i8] c"ctx:Context<SendMessageContext>"
@"params:SetSignatureThresholdParams" = internal constant [34 x i8] c"params:SetSignatureThresholdParams"
@"ctx:Context<SetSignatureThresholdContext>" = internal constant [41 x i8] c"ctx:Context<SetSignatureThresholdContext>"
@"params:DisableAttesterParams" = internal constant [28 x i8] c"params:DisableAttesterParams"
@"ctx:Context<DisableAttesterContext>" = internal constant [35 x i8] c"ctx:Context<DisableAttesterContext>"
@"params:EnableAttesterParams" = internal constant [27 x i8] c"params:EnableAttesterParams"
@"ctx:Context<EnableAttesterContext>" = internal constant [34 x i8] c"ctx:Context<EnableAttesterContext>"
@"params:SetMaxMessageBodySizeParams" = internal constant [34 x i8] c"params:SetMaxMessageBodySizeParams"
@"ctx:Context<SetMaxMessageBodySizeContext>" = internal constant [41 x i8] c"ctx:Context<SetMaxMessageBodySizeContext>"
@"params:UnpauseParams" = internal constant [20 x i8] c"params:UnpauseParams"
@"ctx:Context<UnpauseContext>" = internal constant [27 x i8] c"ctx:Context<UnpauseContext>"
@"params:PauseParams" = internal constant [18 x i8] c"params:PauseParams"
@"ctx:Context<PauseContext>" = internal constant [25 x i8] c"ctx:Context<PauseContext>"
@"params:UpdateAttesterManagerParams" = internal constant [34 x i8] c"params:UpdateAttesterManagerParams"
@"ctx:Context<UpdateAttesterManagerContext>" = internal constant [41 x i8] c"ctx:Context<UpdateAttesterManagerContext>"
@"params:UpdatePauserParams" = internal constant [25 x i8] c"params:UpdatePauserParams"
@"ctx:Context<UpdatePauserContext>" = internal constant [32 x i8] c"ctx:Context<UpdatePauserContext>"
@"params:AcceptOwnershipParams" = internal constant [28 x i8] c"params:AcceptOwnershipParams"
@"ctx:Context<AcceptOwnershipContext>" = internal constant [35 x i8] c"ctx:Context<AcceptOwnershipContext>"
@"params:TransferOwnershipParams" = internal constant [30 x i8] c"params:TransferOwnershipParams"
@"ctx:Context<TransferOwnershipContext>" = internal constant [37 x i8] c"ctx:Context<TransferOwnershipContext>"
@"params:InitializeParams" = internal constant [23 x i8] c"params:InitializeParams"
@"ctx:Context<InitializeContext>" = internal constant [30 x i8] c"ctx:Context<InitializeContext>"
@IsNonceUsedParams = internal constant [17 x i8] c"IsNonceUsedParams"
@GetNoncePDAParams = internal constant [17 x i8] c"GetNoncePDAParams"
@ReclaimEventAccountParams = internal constant [25 x i8] c"ReclaimEventAccountParams"
@ReceiveMessageParams = internal constant [20 x i8] c"ReceiveMessageParams"
@ReplaceMessageParams = internal constant [20 x i8] c"ReplaceMessageParams"
@SendMessageWithCallerParams = internal constant [27 x i8] c"SendMessageWithCallerParams"
@SendMessageParams = internal constant [17 x i8] c"SendMessageParams"
@SetSignatureThresholdParams = internal constant [27 x i8] c"SetSignatureThresholdParams"
@DisableAttesterParams = internal constant [21 x i8] c"DisableAttesterParams"
@EnableAttesterParams = internal constant [20 x i8] c"EnableAttesterParams"
@SetMaxMessageBodySizeParams = internal constant [27 x i8] c"SetMaxMessageBodySizeParams"
@UnpauseParams = internal constant [13 x i8] c"UnpauseParams"
@PauseParams = internal constant [11 x i8] c"PauseParams"
@UpdateAttesterManagerParams = internal constant [27 x i8] c"UpdateAttesterManagerParams"
@UpdatePauserParams = internal constant [18 x i8] c"UpdatePauserParams"
@AcceptOwnershipParams = internal constant [21 x i8] c"AcceptOwnershipParams"
@TransferOwnershipParams = internal constant [23 x i8] c"TransferOwnershipParams"
@InitializeParams = internal constant [16 x i8] c"InitializeParams"
@"MessageSent::INIT_SPACE" = internal constant [23 x i8] c"MessageSent::INIT_SPACE"
@"utils::DISCRIMINATOR_SIZE" = internal constant [25 x i8] c"utils::DISCRIMINATOR_SIZE"
@rent_payer = internal constant [10 x i8] c"rent_payer"
@"new_owner:message_transmitter.owner}" = internal constant [36 x i8] c"new_owner:message_transmitter.owner}"
@"OwnershipTransferred{previous_owner" = internal constant [35 x i8] c"OwnershipTransferred{previous_owner"
@previous_owner = internal constant [14 x i8] c"previous_owner"
@"&AcceptOwnershipParams" = internal constant [22 x i8] c"&AcceptOwnershipParams"
@"Context<AcceptOwnershipContext>" = internal constant [31 x i8] c"Context<AcceptOwnershipContext>"
@"mut,has_one=pending_owner@MessageTransmitterError::InvalidAuthority" = internal constant [67 x i8] c"mut,has_one=pending_owner@MessageTransmitterError::InvalidAuthority"
@pending_owner = internal constant [13 x i8] c"pending_owner"
@"AttesterEnabled{attester:params.new_attester}" = internal constant [45 x i8] c"AttesterEnabled{attester:params.new_attester}"
@"MessageTransmitterError::AttesterAlreadyEnabled" = internal constant [47 x i8] c"MessageTransmitterError::AttesterAlreadyEnabled"
@"!ctx.accounts.message_transmitter.is_enabled_attester(&params.new_attester)" = internal constant [75 x i8] c"!ctx.accounts.message_transmitter.is_enabled_attester(&params.new_attester)"
@"MessageTransmitterError::InvalidAttester" = internal constant [40 x i8] c"MessageTransmitterError::InvalidAttester"
@params.new_attester = internal constant [19 x i8] c"params.new_attester"
@"&EnableAttesterParams" = internal constant [21 x i8] c"&EnableAttesterParams"
@"Context<EnableAttesterContext>" = internal constant [30 x i8] c"Context<EnableAttesterContext>"
@new_attester = internal constant [12 x i8] c"new_attester"
@"mut,has_one=attester_manager@MessageTransmitterError::InvalidAuthority,realloc=utils::DISCRIMINATOR_SIZE+MessageTransmitter::INIT_SPACE+message_transmitter.enabled_attesters.len()*PUBKEY_BYTES,realloc::payer=payer,realloc::zero=false" = internal constant [233 x i8] c"mut,has_one=attester_manager@MessageTransmitterError::InvalidAuthority,realloc=utils::DISCRIMINATOR_SIZE+MessageTransmitter::INIT_SPACE+message_transmitter.enabled_attesters.len()*PUBKEY_BYTES,realloc::payer=payer,realloc::zero=false"
@"new_owner:message_transmitter.pending_owner}" = internal constant [44 x i8] c"new_owner:message_transmitter.pending_owner}"
@"OwnershipTransferStarted{previous_owner:message_transmitter.owner" = internal constant [65 x i8] c"OwnershipTransferStarted{previous_owner:message_transmitter.owner"
@params.new_owner = internal constant [16 x i8] c"params.new_owner"
@"[Pubkey::default(),ctx.accounts.owner.key(),ctx.accounts.message_transmitter.pending_owner,]" = internal constant [92 x i8] c"[Pubkey::default(),ctx.accounts.owner.key(),ctx.accounts.message_transmitter.pending_owner,]"
@"&TransferOwnershipParams" = internal constant [24 x i8] c"&TransferOwnershipParams"
@"Context<TransferOwnershipContext>" = internal constant [33 x i8] c"Context<TransferOwnershipContext>"
@"(MessageTransmitterError::InvalidOwner)" = internal constant [39 x i8] c"(MessageTransmitterError::InvalidOwner)"
@new_owner = internal constant [9 x i8] c"new_owner"
@"Pause{}" = internal constant [7 x i8] c"Pause{}"
@"!ctx.accounts.message_transmitter.paused" = internal constant [40 x i8] c"!ctx.accounts.message_transmitter.paused"
@"&PauseParams" = internal constant [12 x i8] c"&PauseParams"
@"Context<PauseContext>" = internal constant [21 x i8] c"Context<PauseContext>"
@"source_domain,nonce,sender,message_body:message.message_body().to_vec()}" = internal constant [72 x i8] c"source_domain,nonce,sender,message_body:message.message_body().to_vec()}"
@"MessageReceived{caller:ctx.accounts.caller.key()" = internal constant [48 x i8] c"MessageReceived{caller:ctx.accounts.caller.key()"
@"[&[ctx.accounts.authority_pda.to_account_info()],ctx.remaining_accounts,]" = internal constant [73 x i8] c"[&[ctx.accounts.authority_pda.to_account_info()],ctx.remaining_accounts,]"
@instruction = internal constant [11 x i8] c"instruction"
@program_id = internal constant [10 x i8] c"program_id"
@"\22global:handle_receive_message\22" = internal constant [31 x i8] c"\22global:handle_receive_message\22"
@"52" = internal constant [2 x i8] c"52"
@"receive_message::receive_message.anon.6.2" = internal constant [39 x i8] c"receive_message::receive_message.anon.6"
@true = internal constant [4 x i8] c"true"
@ctx.accounts.authority_pda = internal constant [26 x i8] c"ctx.accounts.authority_pda"
@ctx.remaining_accounts = internal constant [22 x i8] c"ctx.remaining_accounts"
@"2" = internal constant [1 x i8] c"2"
@authority_seeds = internal constant [15 x i8] c"authority_seeds"
@"[&[b\22message_transmitter_authority\22,receiver_key.as_ref(),&[authority_bump],]]" = internal constant [78 x i8] c"[&[b\22message_transmitter_authority\22,receiver_key.as_ref(),&[authority_bump],]]"
@"ProgramError::InvalidSeeds" = internal constant [26 x i8] c"ProgramError::InvalidSeeds"
@"\22authority_pda\22" = internal constant [15 x i8] c"\22authority_pda\22"
@ctx.bumps = internal constant [9 x i8] c"ctx.bumps"
@"receiver_key,MessageTransmitterError::InvalidRecipientProgram" = internal constant [61 x i8] c"receiver_key,MessageTransmitterError::InvalidRecipientProgram"
@"message.recipient()?" = internal constant [20 x i8] c"message.recipient()?"
@receiver_key = internal constant [12 x i8] c"receiver_key"
@ctx.accounts.receiver = internal constant [21 x i8] c"ctx.accounts.receiver"
@"0" = internal constant [1 x i8] c"0"
@"MessageTransmitterError::InvalidDestinationDomain" = internal constant [49 x i8] c"MessageTransmitterError::InvalidDestinationDomain"
@"message.destination_domain()?==message_transmitter.local_domain" = internal constant [63 x i8] c"message.destination_domain()?==message_transmitter.local_domain"
@params.message = internal constant [14 x i8] c"params.message"
@"&ReceiveMessageParams" = internal constant [21 x i8] c"&ReceiveMessageParams"
@"Context<'_,'_,'_,'info,ReceiveMessageContext<'info>>" = internal constant [52 x i8] c"Context<'_,'_,'_,'info,ReceiveMessageContext<'info>>"
@acc.is_writable = internal constant [15 x i8] c"acc.is_writable"
@acc.is_signer = internal constant [13 x i8] c"acc.is_signer"
@acc = internal constant [3 x i8] c"acc"
@accounts = internal constant [8 x i8] c"accounts"
@"first_nonce,MessageTransmitterError::InvalidUsedNoncesAccount" = internal constant [61 x i8] c"first_nonce,MessageTransmitterError::InvalidUsedNoncesAccount"
@"source_domain,MessageTransmitterError::InvalidUsedNoncesAccount" = internal constant [63 x i8] c"source_domain,MessageTransmitterError::InvalidUsedNoncesAccount"
@used_nonces.first_nonce = internal constant [23 x i8] c"used_nonces.first_nonce"
@first_nonce = internal constant [11 x i8] c"first_nonce"
@used_nonces.remote_domain = internal constant [25 x i8] c"used_nonces.remote_domain"
@"ctx.accounts.caller.key()" = internal constant [25 x i8] c"ctx.accounts.caller.key()"
@u8 = internal constant [2 x i8] c"u8"
@authority_bump = internal constant [14 x i8] c"authority_bump"
@remote_domain = internal constant [13 x i8] c"remote_domain"
@receiver = internal constant [8 x i8] c"receiver"
@"constraint=receiver.executable,constraint=receiver.key()!=crate::ID" = internal constant [67 x i8] c"constraint=receiver.executable,constraint=receiver.key()!=crate::ID"
@"Box<Account<'info,UsedNonces>>" = internal constant [30 x i8] c"Box<Account<'info,UsedNonces>>"
@"init_if_needed,payer=payer,space=utils::DISCRIMINATOR_SIZE+UsedNonces::INIT_SPACE,seeds=[b\22used_nonces\22,Message::new(message_transmitter.version,&params.message)?.source_domain()?.to_string().as_bytes(),UsedNonces::first_nonce(Message::new(message_transmitter.version,&params.message)?.nonce()?)?.to_string().as_bytes()],bump" = internal constant [325 x i8] c"init_if_needed,payer=payer,space=utils::DISCRIMINATOR_SIZE+UsedNonces::INIT_SPACE,seeds=[b\22used_nonces\22,Message::new(message_transmitter.version,&params.message)?.source_domain()?.to_string().as_bytes(),UsedNonces::first_nonce(Message::new(message_transmitter.version,&params.message)?.nonce()?)?.to_string().as_bytes()],bump"
@authority_pda = internal constant [13 x i8] c"authority_pda"
@"seeds=[b\22message_transmitter_authority\22,receiver.key().as_ref()],bump," = internal constant [70 x i8] c"seeds=[b\22message_transmitter_authority\22,receiver.key().as_ref()],bump,"
@caller = internal constant [6 x i8] c"caller"
@"ctx.accounts.message_transmitter.enabled_attesters.iter().position(|x|x==&params.attester)" = internal constant [90 x i8] c"ctx.accounts.message_transmitter.enabled_attesters.iter().position(|x|x==&params.attester)"
@x = internal constant [1 x i8] c"x"
@"message_transmitter.signature_thresholdasusize,MessageTransmitterError::SignatureThresholdTooLow" = internal constant [96 x i8] c"message_transmitter.signature_thresholdasusize,MessageTransmitterError::SignatureThresholdTooLow"
@"1,MessageTransmitterError::TooFewEnabledAttesters" = internal constant [49 x i8] c"1,MessageTransmitterError::TooFewEnabledAttesters"
@"&DisableAttesterParams" = internal constant [22 x i8] c"&DisableAttesterParams"
@"Context<DisableAttesterContext>" = internal constant [31 x i8] c"Context<DisableAttesterContext>"
@"(MessageTransmitterError::AttesterAlreadyDisabled)" = internal constant [50 x i8] c"(MessageTransmitterError::AttesterAlreadyDisabled)"
@"AttesterDisabled{attester:params.attester}" = internal constant [42 x i8] c"AttesterDisabled{attester:params.attester}"
@pos = internal constant [3 x i8] c"pos"
@ctx.accounts.message_transmitter.enabled_attesters = internal constant [50 x i8] c"ctx.accounts.message_transmitter.enabled_attesters"
@"mut,has_one=attester_manager@MessageTransmitterError::InvalidAuthority,realloc=utils::DISCRIMINATOR_SIZE+MessageTransmitter::INIT_SPACE+ifmessage_transmitter.enabled_attesters.len()<2{0}else{(message_transmitter.enabled_attesters.len()-2)*PUBKEY_BYTES},realloc::payer=payer,realloc::zero=false" = internal constant [293 x i8] c"mut,has_one=attester_manager@MessageTransmitterError::InvalidAuthority,realloc=utils::DISCRIMINATOR_SIZE+MessageTransmitter::INIT_SPACE+ifmessage_transmitter.enabled_attesters.len()<2{0}else{(message_transmitter.enabled_attesters.len()-2)*PUBKEY_BYTES},realloc::payer=payer,realloc::zero=false"
@"MaxMessageBodySizeUpdated{new_max_message_body_size:ctx.accounts.message_transmitter.max_message_body_size}" = internal constant [107 x i8] c"MaxMessageBodySizeUpdated{new_max_message_body_size:ctx.accounts.message_transmitter.max_message_body_size}"
@ctx.accounts.message_transmitter.max_message_body_size = internal constant [54 x i8] c"ctx.accounts.message_transmitter.max_message_body_size"
@params.new_max_message_body_size = internal constant [32 x i8] c"params.new_max_message_body_size"
@"&SetMaxMessageBodySizeParams" = internal constant [28 x i8] c"&SetMaxMessageBodySizeParams"
@"Context<SetMaxMessageBodySizeContext>" = internal constant [37 x i8] c"Context<SetMaxMessageBodySizeContext>"
@new_max_message_body_size = internal constant [25 x i8] c"new_max_message_body_size"
@"MessageTransmitterError::InvalidDestinationCaller" = internal constant [49 x i8] c"MessageTransmitterError::InvalidDestinationCaller"
@params.destination_caller = internal constant [25 x i8] c"params.destination_caller"
@"&SendMessageWithCallerParams" = internal constant [28 x i8] c"&SendMessageWithCallerParams"
@"crate::ID" = internal constant [9 x i8] c"crate::ID"
@"[b\22used_nonces\22,params.source_domain.to_string().as_bytes(),UsedNonces::first_nonce(params.nonce)?.to_string().as_bytes(),]" = internal constant [123 x i8] c"[b\22used_nonces\22,params.source_domain.to_string().as_bytes(),UsedNonces::first_nonce(params.nonce)?.to_string().as_bytes(),]"
@"&GetNoncePDAParams" = internal constant [18 x i8] c"&GetNoncePDAParams"
@"Context<GetNoncePDAContext>" = internal constant [27 x i8] c"Context<GetNoncePDAContext>"
@_ctx = internal constant [4 x i8] c"_ctx"
@source_domain = internal constant [13 x i8] c"source_domain"
@"new_attester_manager:params.new_attester_manager}" = internal constant [49 x i8] c"new_attester_manager:params.new_attester_manager}"
@"AttesterManagerUpdated{previous_attester_manager" = internal constant [48 x i8] c"AttesterManagerUpdated{previous_attester_manager"
@previous_attester_manager = internal constant [25 x i8] c"previous_attester_manager"
@ctx.accounts.message_transmitter.attester_manager = internal constant [49 x i8] c"ctx.accounts.message_transmitter.attester_manager"
@"ctx.accounts.message_transmitter.attester_manager,MessageTransmitterError::InvalidAttesterManager" = internal constant [97 x i8] c"ctx.accounts.message_transmitter.attester_manager,MessageTransmitterError::InvalidAttesterManager"
@"MessageTransmitterError::InvalidAttesterManager" = internal constant [47 x i8] c"MessageTransmitterError::InvalidAttesterManager"
@params.new_attester_manager = internal constant [27 x i8] c"params.new_attester_manager"
@"&UpdateAttesterManagerParams" = internal constant [28 x i8] c"&UpdateAttesterManagerParams"
@"Context<UpdateAttesterManagerContext>" = internal constant [37 x i8] c"Context<UpdateAttesterManagerContext>"
@new_attester_manager = internal constant [20 x i8] c"new_attester_manager"
@params.new_message_body = internal constant [23 x i8] c"params.new_message_body"
@params.new_destination_caller = internal constant [29 x i8] c"params.new_destination_caller"
@"MessageTransmitterError::SenderNotPermitted" = internal constant [43 x i8] c"MessageTransmitterError::SenderNotPermitted"
@"ctx.accounts.sender_program.key()" = internal constant [33 x i8] c"ctx.accounts.sender_program.key()"
@"message.sender()?" = internal constant [17 x i8] c"message.sender()?"
@params.original_attestation = internal constant [27 x i8] c"params.original_attestation"
@params.original_message = internal constant [23 x i8] c"params.original_message"
@"&ReplaceMessageParams" = internal constant [21 x i8] c"&ReplaceMessageParams"
@"Context<ReplaceMessageContext>" = internal constant [30 x i8] c"Context<ReplaceMessageContext>"
@new_destination_caller = internal constant [22 x i8] c"new_destination_caller"
@new_message_body = internal constant [16 x i8] c"new_message_body"
@original_attestation = internal constant [20 x i8] c"original_attestation"
@original_message = internal constant [16 x i8] c"original_message"
@"init,payer=event_rent_payer,space=MessageSent::len(params.new_message_body.len())?," = internal constant [83 x i8] c"init,payer=event_rent_payer,space=MessageSent::len(params.new_message_body.len())?,"
@"message_transmitter.local_domain,MessageTransmitterError::InvalidSourceDomain" = internal constant [77 x i8] c"message_transmitter.local_domain,MessageTransmitterError::InvalidSourceDomain"
@"message.source_domain()?" = internal constant [24 x i8] c"message.source_domain()?"
@params.attestation = internal constant [18 x i8] c"params.attestation"
@event_data.message = internal constant [18 x i8] c"event_data.message"
@event_data = internal constant [10 x i8] c"event_data"
@"&ReclaimEventAccountParams" = internal constant [26 x i8] c"&ReclaimEventAccountParams"
@"Context<ReclaimEventAccountContext>" = internal constant [35 x i8] c"Context<ReclaimEventAccountContext>"
@attestation = internal constant [11 x i8] c"attestation"
@"mut,constraint=message_sent_event_data.rent_payer==payee.key(),close=payee," = internal constant [75 x i8] c"mut,constraint=message_sent_event_data.rent_payer==payee.key(),close=payee,"
@payee = internal constant [5 x i8] c"payee"
@params.nonce = internal constant [12 x i8] c"params.nonce"
@"&IsNonceUsedParams" = internal constant [18 x i8] c"&IsNonceUsedParams"
@"Context<IsNonceUsedContext>" = internal constant [27 x i8] c"Context<IsNonceUsedContext>"
@ctx.accounts.used_nonces = internal constant [24 x i8] c"ctx.accounts.used_nonces"
@err = internal constant [3 x i8] c"err"
@used_nonces = internal constant [11 x i8] c"used_nonces"
@"new_attester_manager:authority}" = internal constant [31 x i8] c"new_attester_manager:authority}"
@"AttesterManagerUpdated{previous_attester_manager:Pubkey::default()" = internal constant [66 x i8] c"AttesterManagerUpdated{previous_attester_manager:Pubkey::default()"
@"AttesterEnabled{attester:params.attester}" = internal constant [41 x i8] c"AttesterEnabled{attester:params.attester}"
@"message_transmitter.validate()" = internal constant [30 x i8] c"message_transmitter.validate()"
@message_transmitter.max_message_body_size = internal constant [41 x i8] c"message_transmitter.max_message_body_size"
@params.max_message_body_size = internal constant [28 x i8] c"params.max_message_body_size"
@params.attester = internal constant [15 x i8] c"params.attester"
@message_transmitter.enabled_attesters = internal constant [37 x i8] c"message_transmitter.enabled_attesters"
@params.version = internal constant [14 x i8] c"params.version"
@params.local_domain = internal constant [19 x i8] c"params.local_domain"
@message_transmitter.paused = internal constant [26 x i8] c"message_transmitter.paused"
@message_transmitter.pauser = internal constant [26 x i8] c"message_transmitter.pauser"
@message_transmitter.attester_manager = internal constant [36 x i8] c"message_transmitter.attester_manager"
@message_transmitter.pending_owner = internal constant [33 x i8] c"message_transmitter.pending_owner"
@message_transmitter.owner = internal constant [25 x i8] c"message_transmitter.owner"
@authority = internal constant [9 x i8] c"authority"
@ctx.accounts.message_transmitter_program = internal constant [40 x i8] c"ctx.accounts.message_transmitter_program"
@ctx.accounts.message_transmitter_program_data = internal constant [45 x i8] c"ctx.accounts.message_transmitter_program_data"
@ctx.accounts.upgrade_authority = internal constant [30 x i8] c"ctx.accounts.upgrade_authority"
@"&InitializeParams" = internal constant [17 x i8] c"&InitializeParams"
@"Context<InitializeContext>" = internal constant [26 x i8] c"Context<InitializeContext>"
@max_message_body_size = internal constant [21 x i8] c"max_message_body_size"
@attester = internal constant [8 x i8] c"attester"
@"Program<'info,program::MessageTransmitter>" = internal constant [42 x i8] c"Program<'info,program::MessageTransmitter>"
@message_transmitter_program = internal constant [27 x i8] c"message_transmitter_program"
@"AccountInfo<'info>" = internal constant [18 x i8] c"AccountInfo<'info>"
@message_transmitter_program_data = internal constant [32 x i8] c"message_transmitter_program_data"
@"init,payer=payer,space=utils::DISCRIMINATOR_SIZE+MessageTransmitter::INIT_SPACE,seeds=[b\22message_transmitter\22],bump" = internal constant [115 x i8] c"init,payer=payer,space=utils::DISCRIMINATOR_SIZE+MessageTransmitter::INIT_SPACE,seeds=[b\22message_transmitter\22],bump"
@upgrade_authority = internal constant [17 x i8] c"upgrade_authority"
@payer = internal constant [5 x i8] c"payer"
@"Unpause{}" = internal constant [9 x i8] c"Unpause{}"
@false = internal constant [5 x i8] c"false"
@"MessageTransmitterError::InvalidMessageTransmitterState" = internal constant [55 x i8] c"MessageTransmitterError::InvalidMessageTransmitterState"
@ctx.accounts.message_transmitter.paused = internal constant [39 x i8] c"ctx.accounts.message_transmitter.paused"
@"&UnpauseParams" = internal constant [14 x i8] c"&UnpauseParams"
@_params = internal constant [7 x i8] c"_params"
@"Context<UnpauseContext>" = internal constant [23 x i8] c"Context<UnpauseContext>"
@"mut,has_one=pauser@MessageTransmitterError::InvalidAuthority" = internal constant [60 x i8] c"mut,has_one=pauser@MessageTransmitterError::InvalidAuthority"
@pauser = internal constant [6 x i8] c"pauser"
@"PauserChanged{new_address:ctx.accounts.message_transmitter.pauser}" = internal constant [66 x i8] c"PauserChanged{new_address:ctx.accounts.message_transmitter.pauser}"
@ctx.accounts.message_transmitter.pauser = internal constant [39 x i8] c"ctx.accounts.message_transmitter.pauser"
@"ctx.accounts.message_transmitter.pauser,MessageTransmitterError::InvalidPauser" = internal constant [78 x i8] c"ctx.accounts.message_transmitter.pauser,MessageTransmitterError::InvalidPauser"
@"MessageTransmitterError::InvalidPauser" = internal constant [38 x i8] c"MessageTransmitterError::InvalidPauser"
@params.new_pauser = internal constant [17 x i8] c"params.new_pauser"
@"&UpdatePauserParams" = internal constant [19 x i8] c"&UpdatePauserParams"
@"Context<UpdatePauserContext>" = internal constant [28 x i8] c"Context<UpdatePauserContext>"
@new_pauser = internal constant [10 x i8] c"new_pauser"
@"mut,has_one=owner@MessageTransmitterError::InvalidAuthority" = internal constant [59 x i8] c"mut,has_one=owner@MessageTransmitterError::InvalidAuthority"
@owner = internal constant [5 x i8] c"owner"
@"()" = internal constant [2 x i8] c"()"
@"new_signature_threshold:params.new_signature_threshold}" = internal constant [55 x i8] c"new_signature_threshold:params.new_signature_threshold}"
@"SignatureThresholdUpdated{old_signature_threshold" = internal constant [49 x i8] c"SignatureThresholdUpdated{old_signature_threshold"
@old_signature_threshold = internal constant [23 x i8] c"old_signature_threshold"
@"params.new_signature_threshold,MessageTransmitterError::SignatureThresholdAlreadySet" = internal constant [84 x i8] c"params.new_signature_threshold,MessageTransmitterError::SignatureThresholdAlreadySet"
@message_transmitter.signature_threshold = internal constant [39 x i8] c"message_transmitter.signature_threshold"
@"params.new_signature_thresholdasusize,MessageTransmitterError::InvalidSignatureThreshold" = internal constant [88 x i8] c"params.new_signature_thresholdasusize,MessageTransmitterError::InvalidSignatureThreshold"
@"message_transmitter.enabled_attesters.len()" = internal constant [43 x i8] c"message_transmitter.enabled_attesters.len()"
@"0,MessageTransmitterError::InvalidSignatureThreshold" = internal constant [52 x i8] c"0,MessageTransmitterError::InvalidSignatureThreshold"
@params.new_signature_threshold = internal constant [30 x i8] c"params.new_signature_threshold"
@"&SetSignatureThresholdParams" = internal constant [28 x i8] c"&SetSignatureThresholdParams"
@"Context<SetSignatureThresholdContext>" = internal constant [37 x i8] c"Context<SetSignatureThresholdContext>"
@new_signature_threshold = internal constant [23 x i8] c"new_signature_threshold"
@"mut,has_one=attester_manager@MessageTransmitterError::InvalidAuthority" = internal constant [70 x i8] c"mut,has_one=attester_manager@MessageTransmitterError::InvalidAuthority"
@attester_manager = internal constant [16 x i8] c"attester_manager"
@0 = internal constant [0 x i8] zeroinitializer
@message_sent_event_data.message = internal constant [31 x i8] c"message_sent_event_data.message"
@message_transmitter.local_domain = internal constant [32 x i8] c"message_transmitter.local_domain"
@message_transmitter.version = internal constant [27 x i8] c"message_transmitter.version"
@message_sent_event_data.rent_payer = internal constant [34 x i8] c"message_sent_event_data.rent_payer"
@"MessageTransmitterError::InvalidRecipient" = internal constant [41 x i8] c"MessageTransmitterError::InvalidRecipient"
@"Pubkey::default()" = internal constant [17 x i8] c"Pubkey::default()"
@"*recipient" = internal constant [10 x i8] c"*recipient"
@"MessageTransmitterError::MessageBodyLimitExceeded" = internal constant [49 x i8] c"MessageTransmitterError::MessageBodyLimitExceeded"
@"message_body.len()" = internal constant [18 x i8] c"message_body.len()"
@message_transmitter.max_message_body_sizeasusize = internal constant [48 x i8] c"message_transmitter.max_message_body_sizeasusize"
@"MessageTransmitterError::ProgramPaused" = internal constant [38 x i8] c"MessageTransmitterError::ProgramPaused"
@"!message_transmitter.paused" = internal constant [27 x i8] c"!message_transmitter.paused"
@"Option<u64>" = internal constant [11 x i8] c"Option<u64>"
@"&mutMessageSent" = internal constant [15 x i8] c"&mutMessageSent"
@"&mutMessageTransmitter" = internal constant [22 x i8] c"&mutMessageTransmitter"
@"1" = internal constant [1 x i8] c"1"
@message_transmitter.next_available_nonce = internal constant [40 x i8] c"message_transmitter.next_available_nonce"
@nonce_value = internal constant [11 x i8] c"nonce_value"
@params.message_body = internal constant [19 x i8] c"params.message_body"
@None = internal constant [4 x i8] c"None"
@ctx.accounts.sender_program = internal constant [27 x i8] c"ctx.accounts.sender_program"
@params.recipient = internal constant [16 x i8] c"params.recipient"
@params.destination_domain = internal constant [25 x i8] c"params.destination_domain"
@ctx.accounts.event_rent_payer = internal constant [29 x i8] c"ctx.accounts.event_rent_payer"
@ctx.accounts.message_sent_event_data = internal constant [36 x i8] c"ctx.accounts.message_sent_event_data"
@ctx.accounts.message_transmitter = internal constant [32 x i8] c"ctx.accounts.message_transmitter"
@"&SendMessageParams" = internal constant [18 x i8] c"&SendMessageParams"
@params = internal constant [6 x i8] c"params"
@"Context<SendMessageContext>" = internal constant [27 x i8] c"Context<SendMessageContext>"
@ctx = internal constant [3 x i8] c"ctx"
@"Vec<u8>" = internal constant [7 x i8] c"Vec<u8>"
@Pubkey = internal constant [6 x i8] c"Pubkey"
@"Program<'info,System>" = internal constant [21 x i8] c"Program<'info,System>"
@system_program = internal constant [14 x i8] c"system_program"
@"UncheckedAccount<'info>" = internal constant [23 x i8] c"UncheckedAccount<'info>"
@sender_program = internal constant [14 x i8] c"sender_program"
@"constraint=sender_program.executable" = internal constant [36 x i8] c"constraint=sender_program.executable"
@"Box<Account<'info,MessageSent>>" = internal constant [31 x i8] c"Box<Account<'info,MessageSent>>"
@message_sent_event_data = internal constant [23 x i8] c"message_sent_event_data"
@"init,payer=event_rent_payer,space=MessageSent::len(params.message_body.len())?," = internal constant [79 x i8] c"init,payer=event_rent_payer,space=MessageSent::len(params.message_body.len())?,"
@"Box<Account<'info,MessageTransmitter>>" = internal constant [38 x i8] c"Box<Account<'info,MessageTransmitter>>"
@message_transmitter = internal constant [19 x i8] c"message_transmitter"
@sender_authority_pda = internal constant [20 x i8] c"sender_authority_pda"
@"seeds=[b\22sender_authority\22],bump,seeds::program=sender_program.key()" = internal constant [68 x i8] c"seeds=[b\22sender_authority\22],bump,seeds::program=sender_program.key()"
@"Signer<'info>" = internal constant [13 x i8] c"Signer<'info>"
@event_rent_payer = internal constant [16 x i8] c"event_rent_payer"
@mut = internal constant [3 x i8] c"mut"
@"MessageTransmitterError::MalformedMessage" = internal constant [41 x i8] c"MessageTransmitterError::MalformedMessage"
@index = internal constant [5 x i8] c"index"
@"Self::NONCE_INDEX" = internal constant [17 x i8] c"Self::NONCE_INDEX"
@"Self::DESTINATION_CALLER_INDEX" = internal constant [30 x i8] c"Self::DESTINATION_CALLER_INDEX"
@"Self::DESTINATION_DOMAIN_INDEX" = internal constant [30 x i8] c"Self::DESTINATION_DOMAIN_INDEX"
@"Self::SOURCE_DOMAIN_INDEX" = internal constant [25 x i8] c"Self::SOURCE_DOMAIN_INDEX"
@"Self::RECIPIENT_INDEX" = internal constant [21 x i8] c"Self::RECIPIENT_INDEX"
@"Self::SENDER_INDEX" = internal constant [18 x i8] c"Self::SENDER_INDEX"
@"Self::VERSION_INDEX" = internal constant [19 x i8] c"Self::VERSION_INDEX"
@self = internal constant [4 x i8] c"self"
@self.data = internal constant [9 x i8] c"self.data"
@hasher = internal constant [6 x i8] c"hasher"
@"&self" = internal constant [5 x i8] c"&self"
@"[0;Message::serialized_len(message_body.len())?]" = internal constant [48 x i8] c"[0;Message::serialized_len(message_body.len())?]"
@"&Vec<u8>" = internal constant [8 x i8] c"&Vec<u8>"
@destination_caller = internal constant [18 x i8] c"destination_caller"
@recipient = internal constant [9 x i8] c"recipient"
@"&Pubkey" = internal constant [7 x i8] c"&Pubkey"
@sender = internal constant [6 x i8] c"sender"
@u64 = internal constant [3 x i8] c"u64"
@nonce = internal constant [5 x i8] c"nonce"
@destination_domain = internal constant [18 x i8] c"destination_domain"
@local_domain = internal constant [12 x i8] c"local_domain"
@version = internal constant [7 x i8] c"version"
@message_body = internal constant [12 x i8] c"message_body"
@output = internal constant [6 x i8] c"output"
@"Self::MESSAGE_BODY_INDEX" = internal constant [24 x i8] c"Self::MESSAGE_BODY_INDEX"
@usize = internal constant [5 x i8] c"usize"
@message_body_len = internal constant [16 x i8] c"message_body_len"
@"MessageTransmitterError::InvalidMessageVersion" = internal constant [46 x i8] c"MessageTransmitterError::InvalidMessageVersion"
@"message.version()?" = internal constant [18 x i8] c"message.version()?"
@message = internal constant [7 x i8] c"message"
@"Self::MESSAGE_BODY_INDEX,MessageTransmitterError::MalformedMessage" = internal constant [66 x i8] c"Self::MESSAGE_BODY_INDEX,MessageTransmitterError::MalformedMessage"
@"message_bytes.len()" = internal constant [19 x i8] c"message_bytes.len()"
@message_bytes = internal constant [13 x i8] c"message_bytes"
@u32 = internal constant [3 x i8] c"u32"
@expected_version = internal constant [16 x i8] c"expected_version"
@"&'a[u8]" = internal constant [7 x i8] c"&'a[u8]"
@data = internal constant [4 x i8] c"data"
@"*i8" = internal constant [3 x i8] c"*i8"
@parser.error = internal constant [12 x i8] c"parser.error"
@CCTPmbSD7gX1bxKPAmg77w8oFzNFpaQiQUWD43TKaecd = internal constant [44 x i8] c"CCTPmbSD7gX1bxKPAmg77w8oFzNFpaQiQUWD43TKaecd"
@"=1.16.9" = internal constant [7 x i8] c"=1.16.9"
@dependencies.solana_program.version = internal constant [35 x i8] c"dependencies.solana_program.version"
@dependencies.anchor-spl.version = internal constant [31 x i8] c"dependencies.anchor-spl.version"
@"=0.28.0" = internal constant [7 x i8] c"=0.28.0"
@dependencies.anchor-lang.version = internal constant [32 x i8] c"dependencies.anchor-lang.version"

declare i8* @malloc(i64)

declare void @free(i8*)

declare i8* @"sol.utils::checked_mul.anon.2"(i8*)

declare i8* @"sol.utils::checked_mul.anon.1"(i8*)

declare i8* @sol.checked_mul.2(i8*, i8*)

declare i8* @"sol.utils::checked_div.anon.2"(i8*)

declare i8* @"sol.utils::checked_div.anon.1"(i8*)

declare i8* @sol.checked_div.2(i8*, i8*)

declare i8* @"sol.utils::checked_sub.anon.2"(i8*)

declare i8* @"sol.utils::checked_sub.anon.1"(i8*)

declare i8* @sol.checked_sub.2(i8*, i8*)

declare i8* @"sol.utils::checked_add.anon.2"(i8*)

declare i8* @"sol.utils::checked_add.anon.1"(i8*)

declare i8* @sol.checked_add.2(i8*, i8*)

declare i8* @"sol.msg.!2"(i8*, i8*)

declare i8* @"sol.utils::validate_upgrade_authority.anon.1"(i8*)

declare i8* @sol.programdata_address.1(i8*)

declare i8* @"sol.Program::try_from.1"(i8*)

declare i8* @"sol.utils::validate_upgrade_authority.anon.2"(i8*)

declare i8* @"sol.Account::try_from.1"(i8*)

declare i8* @"sol.utils::validate_upgrade_authority.anon.3"(i8*)

declare i8* @"sol.<"(i8*, i8*)

declare i8* @"sol.<.1"(i8*)

declare i8* @"sol.%"(i8*, i8*)

declare i8* @"sol.&"(i8*, i8*)

declare i8* @"sol.|="(i8*, i8*)

declare i8* @sol.get_entry_bit.2(i8*, i8*)

declare i8* @"sol.utils::checked_mul.2"(i8*, i8*)

declare i8* @"sol.utils::checked_div.2"(i8*, i8*)

declare i8* @"sol.state::UsedNonces::first_nonce.anon.1"(i8*)

declare i8* @"sol.Pubkey::new_from_array.1"(i8*)

declare i8* @sol.for_each.2(i8*, i8*)

declare i8* @sol.iter_mut.1(i8*)

declare i8* @sol.match.3(i8*, i8*, i8*)

declare i8* @"sol.state::MessageTransmitter::recover_attester.anon.1"(i8*)

declare i8* @sol.secp256k1_recover.3(i8*, i8*, i8*)

declare i8* @sol.-(i8*, i8*)

declare i8* @"sol.EVMSignature::parse_standard_slice.1"(i8*)

declare i8* @"sol.state::MessageTransmitter::verify_attestation_signatures.anon.2"(i8*)

declare i8* @"sol.MessageTransmitter::recover_attester.2"(i8*, i8*)

declare i8* @"sol.>"(i8*, i8*)

declare i8* @"sol.<="(i8*, i8*)

declare i8* @sol.typecast(i8*, i8*)

declare i8* @"sol.&&"(i8*, i8*)

declare i8* @sol.get_nonce_pda.2(i8*, i8*)

declare i8* @sol.reclaim_event_account.2(i8*, i8*)

declare i8* @sol.receive_message.2(i8*, i8*)

declare i8* @sol.replace_message.2(i8*, i8*)

declare i8* @sol.send_message_with_caller.2(i8*, i8*)

declare i8* @sol.send_message.2(i8*, i8*)

declare i8* @sol.set_signature_threshold.2(i8*, i8*)

declare i8* @sol.disable_attester.2(i8*, i8*)

declare i8* @sol.enable_attester.2(i8*, i8*)

declare i8* @sol.set_max_message_body_size.2(i8*, i8*)

declare i8* @sol.unpause.2(i8*, i8*)

declare i8* @sol.pause.2(i8*, i8*)

declare i8* @sol.update_attester_manager.2(i8*, i8*)

declare i8* @sol.update_pauser.2(i8*, i8*)

declare i8* @sol.accept_ownership.2(i8*, i8*)

declare i8* @sol.transfer_ownership.2(i8*, i8*)

declare i8* @sol.initialize.2(i8*, i8*)

declare i8* @"sol.instructions::is_nonce_used.2"(i8*, i8*)

declare i8* @"sol.instructions::get_nonce_pda.2"(i8*, i8*)

declare i8* @"sol.instructions::reclaim_event_account.2"(i8*, i8*)

declare i8* @"sol.instructions::receive_message.2"(i8*, i8*)

declare i8* @"sol.instructions::replace_message.2"(i8*, i8*)

declare i8* @"sol.instructions::send_message_with_caller.2"(i8*, i8*)

declare i8* @"sol.instructions::send_message.2"(i8*, i8*)

declare i8* @"sol.instructions::set_signature_threshold.2"(i8*, i8*)

declare i8* @"sol.instructions::disable_attester.2"(i8*, i8*)

declare i8* @"sol.instructions::enable_attester.2"(i8*, i8*)

declare i8* @"sol.instructions::set_max_message_body_size.2"(i8*, i8*)

declare i8* @"sol.instructions::unpause.2"(i8*, i8*)

declare i8* @"sol.instructions::pause.2"(i8*, i8*)

declare i8* @"sol.instructions::update_attester_manager.2"(i8*, i8*)

declare i8* @"sol.instructions::update_pauser.2"(i8*, i8*)

declare i8* @"sol.instructions::accept_ownership.2"(i8*, i8*)

declare i8* @"sol.instructions::transfer_ownership.2"(i8*, i8*)

declare i8* @"sol.instructions::initialize.2"(i8*, i8*)

declare i8* @"sol.Message::serialized_len.1"(i8*)

declare i8* @"sol.utils::checked_sub.2"(i8*, i8*)

declare i8* @"sol.transfer_ownership::transfer_ownership.anon.1"(i8*)

declare i8* @sol.contains.2(i8*, i8*)

declare i8* @"sol.program::invoke_signed.3"(i8*, i8*, i8*)

declare i8* @sol.concat.1(i8*)

declare i8* @sol.model.struct.new.Instruction.3(i8*, i8*, i8*)

declare i8* @sol.try_to_vec.1(i8*)

declare i8* @sol.extend_from_slice.2(i8*, i8*)

declare i8* @sol.to_bytes.1(i8*)

declare i8* @"sol.anchor_lang::solana_program::hash::hash.1"(i8*)

declare i8* @sol.as_bytes.1(i8*)

declare i8* @sol.model.struct.new.HandleReceiveMessageParams.4(i8*, i8*, i8*, i8*)

declare i8* @sol.to_vec.1(i8*)

declare i8* @sol.message_body.1(i8*)

declare i8* @sol.model.loop.for.1(i8*)

declare i8* @"sol.Vec::with_capacity.1"(i8*)

declare i8* @"sol.+"(i8*, i8*)

declare i8* @sol.len.1(i8*)

declare i8* @sol.ok_or.2(i8*, i8*)

declare i8* @sol.get.2(i8*, i8*)

declare i8* @"sol.require_keys_eq.!2"(i8*, i8*)

declare i8* @sol.use_nonce.2(i8*, i8*)

declare i8* @"sol.receive_message::receive_message.anon.3"(i8*)

declare i8* @"sol.receive_message::receive_message.anon.2"(i8*)

declare i8* @"sol.UsedNonces::first_nonce.1"(i8*)

declare i8* @sol.sender.1(i8*)

declare i8* @sol.source_domain.1(i8*)

declare i8* @"sol.receive_message::receive_message.anon.1"(i8*)

declare i8* @"sol.!="(i8*, i8*)

declare i8* @sol.destination_caller.1(i8*)

declare i8* @"sol.receive_message::receive_message.anon.8"(i8*)

declare i8* @"sol.receive_message::receive_message.anon.7"(i8*)

declare i8* @"sol.AccountMeta::new_readonly.2"(i8*, i8*)

declare i8* @"sol.AccountMeta::new.2"(i8*, i8*)

declare i8* @"sol.disable_attester::disable_attester.anon.2"(i8*)

declare i8* @"sol.disable_attester::disable_attester.anon.1"(i8*)

declare i8* @sol.position.2(i8*, i8*)

declare i8* @"sol.=="(i8*, i8*)

declare i8* @sol.iter.1(i8*)

declare i8* @sol.return.1(i8*)

declare i8* @"sol.model.macro.err.!1"(i8*)

declare i8* @sol.remove.2(i8*, i8*)

declare i8* @"sol.Pubkey::find_program_address.2"(i8*, i8*)

declare i8* @"sol.crate::instructions::send_message_helper.9"(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)

declare i8* @sol.Some.1(i8*)

declare i8* @sol.nonce.1(i8*)

declare i8* @sol.recipient.1(i8*)

declare i8* @sol.destination_domain.1(i8*)

declare i8* @"sol.require_keys_eq.!3"(i8*, i8*, i8*)

declare i8* @"sol.require_eq.!2"(i8*, i8*)

declare i8* @sol.verify_attestation_signatures.3(i8*, i8*, i8*)

declare i8* @sol.hash.1(i8*)

declare i8* @"sol.Message::new.2"(i8*, i8*)

declare i8* @sol.match.2(i8*, i8*)

declare i8* @"sol.is_nonce_used::is_nonce_used.anon.3"(i8*)

declare i8* @"sol.is_nonce_used::is_nonce_used.anon.2"(i8*)

declare i8* @"sol.is_nonce_used::is_nonce_used.anon.1"(i8*)

declare i8* @sol.is_nonce_used.2(i8*, i8*)

declare i8* @"sol.is_nonce_used::is_nonce_used.anon.5"(i8*)

declare i8* @"sol.is_nonce_used::is_nonce_used.anon.4"(i8*)

declare i8* @sol.data_is_empty.1(i8*)

declare i8* @sol.Err.1(i8*)

declare i8* @sol.push.2(i8*, i8*)

declare i8* @"sol.utils::validate_upgrade_authority.3"(i8*, i8*, i8*)

declare i8* @sol.to_account_info.1(i8*)

declare i8* @"sol.emit_cpi.!1"(i8*)

declare i8* @"sol.require_keys_neq.!2"(i8*, i8*)

declare i8* @"sol.emit_cpi.!2"(i8*, i8*)

declare i8* @"sol.require_neq.!2"(i8*, i8*)

declare i8* @"sol.require_gt.!2"(i8*, i8*)

declare i8* @"sol.Message::format_message.8"(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)

declare i8* @sol.ifFalse.anon.(i8*)

declare i8* @"sol.send_message::send_message_helper.anon.2"(i8*)

declare i8* @"sol.send_message::send_message_helper.anon.1"(i8*)

declare i8* @"sol.require_keys_neq.!3"(i8*, i8*, i8*)

declare i8* @"sol.require_gte.!3"(i8*, i8*, i8*)

declare i8* @"sol.require.!2"(i8*, i8*)

declare i8* @sol.send_message_helper.9(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)

declare i8* @"sol.Pubkey::default.0"()

declare i8* @sol.key.1(i8*)

declare i8* @sol.as_mut.1(i8*)

declare i8* @sol.model.struct.constraint(i8*)

declare i8* @"sol.Pubkey::try_from.1"(i8*)

declare i8* @"sol.T::from_be_bytes.1"(i8*)

declare i8* @sol.map_err.2(i8*, i8*)

declare i8* @sol.try_into.1(i8*)

declare i8* @sol.read_pubkey.2(i8*, i8*)

declare i8* @sol.read_integer.2(i8*, i8*)

declare i8* @sol.result.1(i8*)

declare i8* @sol.hash.2(i8*, i8*)

declare i8* @"sol.Hasher::default.0"()

declare i8* @sol.ifTrue.anon.(i8*)

declare i8* @"sol.message::Message::format_message.anon.1"(i8*)

declare i8* @sol.if(i8*)

declare i8* @"sol.!"(i8*)

declare i8* @sol.is_empty.1(i8*)

declare i8* @sol.as_ref.1(i8*)

declare i8* @sol.to_be_bytes.1(i8*)

declare i8* @"sol.model.macro.vec.!1"(i8*)

declare i8* @sol.copy_from_slice.2(i8*, i8*)

declare i8* @sol.as_slice.1(i8*)

declare i8* @"sol.utils::checked_add.2"(i8*, i8*)

declare i8* @sol.Ok.1(i8*)

declare i8* @"sol.require_eq.!3"(i8*, i8*, i8*)

declare i8* @sol.model.struct.new.Self.1(i8*)

declare void @sol.model.opaqueAssign(i8*, i8*)

declare i8* @"sol.require_gte.!2"(i8*, i8*)

declare i8* @sol.model.struct.field(i8*, i8*)

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
  %2 = call i8* @sol.model.declare_id(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @CCTPmbSD7gX1bxKPAmg77w8oFzNFpaQiQUWD43TKaecd, i64 0, i64 0)), !dbg !13
  ret i64 0, !dbg !16
}

define i8* @sol.model.struct.Message(i8* %0) !dbg !18 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !20
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @data, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&'a[u8]", i64 0, i64 0)), !dbg !22
  ret i8* %0, !dbg !20
}

define i8* @"message::Message::new.2"(i8* %0, i8* %1) !dbg !23 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @expected_version, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u32, i64 0, i64 0)), !dbg !24
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @message_bytes, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&'a[u8]", i64 0, i64 0)), !dbg !24
  %5 = call i8* @"sol.require_gte.!2"(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"message_bytes.len()", i64 0, i64 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @"Self::MESSAGE_BODY_INDEX,MessageTransmitterError::MalformedMessage", i64 0, i64 0)), !dbg !26
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @data, i64 0, i64 0), i8* %1), !dbg !27
  %6 = call i8* @sol.model.struct.new.Self.1(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @data, i64 0, i64 0)), !dbg !28
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @message, i64 0, i64 0), i8* %6), !dbg !29
  %7 = call i8* @"sol.require_eq.!3"(i8* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"message.version()?", i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @"MessageTransmitterError::InvalidMessageVersion", i64 0, i64 0)), !dbg !30
  %8 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @message, i64 0, i64 0)), !dbg !31
  ret i8* %0, !dbg !24
}

define i8* @"message::Message::serialized_len.1"(i8* %0) !dbg !32 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @message_body_len, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @usize, i64 0, i64 0)), !dbg !33
  %3 = call i8* @"sol.utils::checked_add.2"(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @"Self::MESSAGE_BODY_INDEX", i64 0, i64 0), i8* %0), !dbg !35
  ret i8* %0, !dbg !33
}

define i8* @"message::Message::format_message.anon.1"(i8* %0) !dbg !36 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !37
  %3 = call i8* @sol.as_slice.1(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @message_body, i64 0, i64 0)), !dbg !39
  %4 = call i8* @sol.copy_from_slice.2(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @output, i64 0, i64 0), i8* %3), !dbg !40
  ret i8* %0, !dbg !37
}

define i8* @"message::Message::format_message.8"(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7) !dbg !41 {
  %9 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @version, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u32, i64 0, i64 0)), !dbg !42
  %10 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @local_domain, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u32, i64 0, i64 0)), !dbg !42
  %11 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @destination_domain, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u32, i64 0, i64 0)), !dbg !42
  %12 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @nonce, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u64, i64 0, i64 0)), !dbg !42
  %13 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @sender, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&Pubkey", i64 0, i64 0)), !dbg !42
  %14 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @recipient, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&Pubkey", i64 0, i64 0)), !dbg !42
  %15 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @destination_caller, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&Pubkey", i64 0, i64 0)), !dbg !42
  %16 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @message_body, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"&Vec<u8>", i64 0, i64 0)), !dbg !42
  %17 = call i8* @"sol.model.macro.vec.!1"(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @"[0;Message::serialized_len(message_body.len())?]", i64 0, i64 0)), !dbg !44
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @output, i64 0, i64 0), i8* %17), !dbg !45
  %18 = call i8* @sol.to_be_bytes.1(i8* %0), !dbg !46
  %19 = call i8* @sol.copy_from_slice.2(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @output, i64 0, i64 0), i8* %18), !dbg !47
  %20 = call i8* @sol.to_be_bytes.1(i8* %1), !dbg !48
  %21 = call i8* @sol.copy_from_slice.2(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @output, i64 0, i64 0), i8* %20), !dbg !49
  %22 = call i8* @sol.to_be_bytes.1(i8* %2), !dbg !50
  %23 = call i8* @sol.copy_from_slice.2(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @output, i64 0, i64 0), i8* %22), !dbg !51
  %24 = call i8* @sol.to_be_bytes.1(i8* %3), !dbg !52
  %25 = call i8* @sol.copy_from_slice.2(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @output, i64 0, i64 0), i8* %24), !dbg !53
  %26 = call i8* @sol.as_ref.1(i8* %4), !dbg !54
  %27 = call i8* @sol.copy_from_slice.2(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @output, i64 0, i64 0), i8* %26), !dbg !55
  %28 = call i8* @sol.as_ref.1(i8* %5), !dbg !56
  %29 = call i8* @sol.copy_from_slice.2(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @output, i64 0, i64 0), i8* %28), !dbg !57
  %30 = call i8* @sol.as_ref.1(i8* %6), !dbg !58
  %31 = call i8* @sol.copy_from_slice.2(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @output, i64 0, i64 0), i8* %30), !dbg !59
  %32 = call i8* @sol.is_empty.1(i8* %7), !dbg !60
  %33 = call i8* @"sol.!"(i8* %32), !dbg !61
  %34 = call i8* @sol.if(i8* %33), !dbg !62
  %35 = call i8* @"sol.message::Message::format_message.anon.1"(i8* %34), !dbg !63
  %36 = call i8* @sol.ifTrue.anon.(i8* %35), !dbg !63
  %37 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @output, i64 0, i64 0)), !dbg !64
  ret i8* %0, !dbg !42
}

define i8* @"message::Message::hash.1"(i8* %0) !dbg !65 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0)), !dbg !66
  %3 = call i8* @"sol.Hasher::default.0"(), !dbg !68
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @hasher, i64 0, i64 0), i8* %3), !dbg !69
  %4 = call i8* @sol.hash.2(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @hasher, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @self.data, i64 0, i64 0)), !dbg !70
  %5 = call i8* @sol.result.1(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @hasher, i64 0, i64 0)), !dbg !71
  ret i8* %0, !dbg !66
}

define i8* @"message::Message::version.1"(i8* %0) !dbg !72 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0)), !dbg !73
  %3 = call i8* @sol.read_integer.2(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @self, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"Self::VERSION_INDEX", i64 0, i64 0)), !dbg !75
  ret i8* %0, !dbg !73
}

define i8* @"message::Message::sender.1"(i8* %0) !dbg !76 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0)), !dbg !77
  %3 = call i8* @sol.read_pubkey.2(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @self, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"Self::SENDER_INDEX", i64 0, i64 0)), !dbg !79
  ret i8* %0, !dbg !77
}

define i8* @"message::Message::recipient.1"(i8* %0) !dbg !80 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0)), !dbg !81
  %3 = call i8* @sol.read_pubkey.2(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @self, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"Self::RECIPIENT_INDEX", i64 0, i64 0)), !dbg !83
  ret i8* %0, !dbg !81
}

define i8* @"message::Message::source_domain.1"(i8* %0) !dbg !84 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0)), !dbg !85
  %3 = call i8* @sol.read_integer.2(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @self, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @"Self::SOURCE_DOMAIN_INDEX", i64 0, i64 0)), !dbg !87
  ret i8* %0, !dbg !85
}

define i8* @"message::Message::destination_domain.1"(i8* %0) !dbg !88 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0)), !dbg !89
  %3 = call i8* @sol.read_integer.2(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @self, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"Self::DESTINATION_DOMAIN_INDEX", i64 0, i64 0)), !dbg !91
  ret i8* %0, !dbg !89
}

define i8* @"message::Message::destination_caller.1"(i8* %0) !dbg !92 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0)), !dbg !93
  %3 = call i8* @sol.read_pubkey.2(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @self, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"Self::DESTINATION_CALLER_INDEX", i64 0, i64 0)), !dbg !95
  ret i8* %0, !dbg !93
}

define i8* @"message::Message::nonce.1"(i8* %0) !dbg !96 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0)), !dbg !97
  %3 = call i8* @sol.read_integer.2(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @self, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"Self::NONCE_INDEX", i64 0, i64 0)), !dbg !99
  ret i8* %0, !dbg !97
}

define i8* @"message::Message::message_body.1"(i8* %0) !dbg !100 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0)), !dbg !101
  ret i8* %0, !dbg !101
}

define i8* @"message::Message::read_integer.2"(i8* %0, i8* %1) !dbg !103 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0)), !dbg !104
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @index, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @usize, i64 0, i64 0)), !dbg !104
  %5 = call i8* @sol.try_into.1(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @self.data, i64 0, i64 0)), !dbg !106
  %6 = call i8* @sol.map_err.2(i8* %5, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @"MessageTransmitterError::MalformedMessage", i64 0, i64 0)), !dbg !107
  %7 = call i8* @"sol.T::from_be_bytes.1"(i8* %6), !dbg !108
  %8 = call i8* @sol.Ok.1(i8* %7), !dbg !109
  ret i8* %0, !dbg !104
}

define i8* @"message::Message::read_pubkey.2"(i8* %0, i8* %1) !dbg !110 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0)), !dbg !111
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @index, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @usize, i64 0, i64 0)), !dbg !111
  %5 = call i8* @"sol.Pubkey::try_from.1"(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @self.data, i64 0, i64 0)), !dbg !113
  %6 = call i8* @sol.map_err.2(i8* %5, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @"MessageTransmitterError::MalformedMessage", i64 0, i64 0)), !dbg !114
  %7 = call i8* @sol.Ok.1(i8* %6), !dbg !115
  ret i8* %0, !dbg !111
}

define i8* @sol.model.struct.anchor.SendMessageContext(i8* %0) !dbg !116 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !118
  %3 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @mut, i64 0, i64 0)), !dbg !120
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @event_rent_payer, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"Signer<'info>", i64 0, i64 0)), !dbg !121
  %5 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @"seeds=[b\22sender_authority\22],bump,seeds::program=sender_program.key()", i64 0, i64 0)), !dbg !122
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @sender_authority_pda, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"Signer<'info>", i64 0, i64 0)), !dbg !123
  %7 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @mut, i64 0, i64 0)), !dbg !124
  %8 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @message_transmitter, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @"Box<Account<'info,MessageTransmitter>>", i64 0, i64 0)), !dbg !125
  %9 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @"init,payer=event_rent_payer,space=MessageSent::len(params.message_body.len())?,", i64 0, i64 0)), !dbg !126
  %10 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @message_sent_event_data, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"Box<Account<'info,MessageSent>>", i64 0, i64 0)), !dbg !127
  %11 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @"constraint=sender_program.executable", i64 0, i64 0)), !dbg !128
  %12 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @sender_program, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"UncheckedAccount<'info>", i64 0, i64 0)), !dbg !129
  %13 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @system_program, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"Program<'info,System>", i64 0, i64 0)), !dbg !130
  ret i8* %0, !dbg !118
}

define i8* @sol.model.struct.SendMessageParams(i8* %0) !dbg !131 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !132
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @destination_domain, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u32, i64 0, i64 0)), !dbg !134
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @recipient, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Pubkey, i64 0, i64 0)), !dbg !135
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @message_body, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"Vec<u8>", i64 0, i64 0)), !dbg !136
  ret i8* %0, !dbg !132
}

define i8* @"send_message::send_message.2"(i8* %0, i8* %1) !dbg !137 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"Context<SendMessageContext>", i64 0, i64 0)), !dbg !138
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"&SendMessageParams", i64 0, i64 0)), !dbg !138
  %5 = call i8* @sol.as_mut.1(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @ctx.accounts.message_transmitter, i64 0, i64 0)), !dbg !140
  %6 = call i8* @sol.as_mut.1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @ctx.accounts.message_sent_event_data, i64 0, i64 0)), !dbg !141
  %7 = call i8* @sol.key.1(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @ctx.accounts.event_rent_payer, i64 0, i64 0)), !dbg !142
  %8 = call i8* @"sol.Pubkey::default.0"(), !dbg !143
  %9 = call i8* @sol.key.1(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @ctx.accounts.sender_program, i64 0, i64 0)), !dbg !144
  %10 = call i8* @sol.send_message_helper.9(i8* %5, i8* %6, i8* %7, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @params.destination_domain, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @params.recipient, i64 0, i64 0), i8* %8, i8* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @None, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @params.message_body, i64 0, i64 0)), !dbg !145
  ret i8* %0, !dbg !138
}

define i8* @"send_message::send_message_helper.anon.1"(i8* %0) !dbg !146 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !147
  ret i8* %0, !dbg !147
}

define i8* @"send_message::send_message_helper.anon.2"(i8* %0) !dbg !149 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !150
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @nonce_value, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @message_transmitter.next_available_nonce, i64 0, i64 0)), !dbg !152
  %3 = call i8* @"sol.utils::checked_add.2"(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @message_transmitter.next_available_nonce, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"1", i64 0, i64 0)), !dbg !153
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @message_transmitter.next_available_nonce, i64 0, i64 0), i8* %3), !dbg !154
  ret i8* %0, !dbg !150
}

define i8* @"send_message::send_message_helper.9"(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8) !dbg !155 {
  %10 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @message_transmitter, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @"&mutMessageTransmitter", i64 0, i64 0)), !dbg !156
  %11 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @message_sent_event_data, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"&mutMessageSent", i64 0, i64 0)), !dbg !156
  %12 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @event_rent_payer, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&Pubkey", i64 0, i64 0)), !dbg !156
  %13 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @destination_domain, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u32, i64 0, i64 0)), !dbg !156
  %14 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @recipient, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&Pubkey", i64 0, i64 0)), !dbg !156
  %15 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @destination_caller, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&Pubkey", i64 0, i64 0)), !dbg !156
  %16 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @sender, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&Pubkey", i64 0, i64 0)), !dbg !156
  %17 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @nonce, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"Option<u64>", i64 0, i64 0)), !dbg !156
  %18 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @message_body, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"&Vec<u8>", i64 0, i64 0)), !dbg !156
  %19 = call i8* @"sol.require.!2"(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"!message_transmitter.paused", i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @"MessageTransmitterError::ProgramPaused", i64 0, i64 0)), !dbg !158
  %20 = call i8* @"sol.require_gte.!3"(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @message_transmitter.max_message_body_sizeasusize, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"message_body.len()", i64 0, i64 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @"MessageTransmitterError::MessageBodyLimitExceeded", i64 0, i64 0)), !dbg !159
  %21 = call i8* @"sol.require_keys_neq.!3"(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"*recipient", i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"Pubkey::default()", i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @"MessageTransmitterError::InvalidRecipient", i64 0, i64 0)), !dbg !160
  call void @sol.model.opaqueAssign(i8* %7, i8* %7), !dbg !161
  %22 = call i8* @"sol.send_message::send_message_helper.anon.1"(i8* %7), !dbg !162
  %23 = call i8* @sol.ifTrue.anon.(i8* %22), !dbg !162
  %24 = call i8* @"sol.send_message::send_message_helper.anon.2"(i8* %23), !dbg !163
  %25 = call i8* @sol.ifFalse.anon.(i8* %24), !dbg !163
  call void @sol.model.opaqueAssign(i8* %7, i8* %25), !dbg !164
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @message_sent_event_data.rent_payer, i64 0, i64 0), i8* %2), !dbg !165
  %26 = call i8* @"sol.Message::format_message.8"(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @message_transmitter.version, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @message_transmitter.local_domain, i64 0, i64 0), i8* %3, i8* %7, i8* %6, i8* %4, i8* %5, i8* %8), !dbg !166
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @message_sent_event_data.message, i64 0, i64 0), i8* %26), !dbg !167
  %27 = call i8* @sol.Ok.1(i8* %7), !dbg !168
  ret i8* %0, !dbg !156
}

define i8* @sol.model.struct.anchor.SetSignatureThresholdContext(i8* %0) !dbg !169 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !171
  %3 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @0, i64 0, i64 0)), !dbg !173
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @attester_manager, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"Signer<'info>", i64 0, i64 0)), !dbg !174
  %5 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @"mut,has_one=attester_manager@MessageTransmitterError::InvalidAuthority", i64 0, i64 0)), !dbg !175
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @message_transmitter, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @"Box<Account<'info,MessageTransmitter>>", i64 0, i64 0)), !dbg !176
  ret i8* %0, !dbg !171
}

define i8* @sol.model.struct.SetSignatureThresholdParams(i8* %0) !dbg !177 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !178
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @new_signature_threshold, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u32, i64 0, i64 0)), !dbg !180
  ret i8* %0, !dbg !178
}

define i8* @"set_signature_threshold::set_signature_threshold.2"(i8* %0, i8* %1) !dbg !181 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @"Context<SetSignatureThresholdContext>", i64 0, i64 0)), !dbg !182
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @"&SetSignatureThresholdParams", i64 0, i64 0)), !dbg !182
  %5 = call i8* @sol.as_mut.1(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @ctx.accounts.message_transmitter, i64 0, i64 0)), !dbg !184
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @message_transmitter, i64 0, i64 0), i8* %5), !dbg !185
  %6 = call i8* @"sol.require_gt.!2"(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @params.new_signature_threshold, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @"0,MessageTransmitterError::InvalidSignatureThreshold", i64 0, i64 0)), !dbg !186
  %7 = call i8* @"sol.require_gte.!2"(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @"message_transmitter.enabled_attesters.len()", i64 0, i64 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @"params.new_signature_thresholdasusize,MessageTransmitterError::InvalidSignatureThreshold", i64 0, i64 0)), !dbg !187
  %8 = call i8* @"sol.require_neq.!2"(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @message_transmitter.signature_threshold, i64 0, i64 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @"params.new_signature_threshold,MessageTransmitterError::SignatureThresholdAlreadySet", i64 0, i64 0)), !dbg !188
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @old_signature_threshold, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @message_transmitter.signature_threshold, i64 0, i64 0)), !dbg !189
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @message_transmitter.signature_threshold, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @params.new_signature_threshold, i64 0, i64 0)), !dbg !190
  %9 = call i8* @"sol.emit_cpi.!2"(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @"SignatureThresholdUpdated{old_signature_threshold", i64 0, i64 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @"new_signature_threshold:params.new_signature_threshold}", i64 0, i64 0)), !dbg !191
  %10 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"()", i64 0, i64 0)), !dbg !192
  ret i8* %0, !dbg !182
}

define i8* @sol.model.struct.anchor.UpdatePauserContext(i8* %0) !dbg !193 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !195
  %3 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @0, i64 0, i64 0)), !dbg !197
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @owner, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"Signer<'info>", i64 0, i64 0)), !dbg !198
  %5 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @"mut,has_one=owner@MessageTransmitterError::InvalidAuthority", i64 0, i64 0)), !dbg !199
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @message_transmitter, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @"Box<Account<'info,MessageTransmitter>>", i64 0, i64 0)), !dbg !200
  ret i8* %0, !dbg !195
}

define i8* @sol.model.struct.UpdatePauserParams(i8* %0) !dbg !201 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !202
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @new_pauser, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Pubkey, i64 0, i64 0)), !dbg !204
  ret i8* %0, !dbg !202
}

define i8* @"update_pauser::update_pauser.2"(i8* %0, i8* %1) !dbg !205 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @"Context<UpdatePauserContext>", i64 0, i64 0)), !dbg !206
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"&UpdatePauserParams", i64 0, i64 0)), !dbg !206
  %5 = call i8* @"sol.require_keys_neq.!3"(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @params.new_pauser, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"Pubkey::default()", i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @"MessageTransmitterError::InvalidPauser", i64 0, i64 0)), !dbg !208
  %6 = call i8* @"sol.require_keys_neq.!2"(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @params.new_pauser, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @"ctx.accounts.message_transmitter.pauser,MessageTransmitterError::InvalidPauser", i64 0, i64 0)), !dbg !209
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @ctx.accounts.message_transmitter.pauser, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @params.new_pauser, i64 0, i64 0)), !dbg !210
  %7 = call i8* @"sol.emit_cpi.!1"(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @"PauserChanged{new_address:ctx.accounts.message_transmitter.pauser}", i64 0, i64 0)), !dbg !211
  %8 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"()", i64 0, i64 0)), !dbg !212
  ret i8* %0, !dbg !206
}

define i8* @sol.model.struct.anchor.UnpauseContext(i8* %0) !dbg !213 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !215
  %3 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @0, i64 0, i64 0)), !dbg !217
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @pauser, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"Signer<'info>", i64 0, i64 0)), !dbg !218
  %5 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @"mut,has_one=pauser@MessageTransmitterError::InvalidAuthority", i64 0, i64 0)), !dbg !219
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @message_transmitter, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @"Box<Account<'info,MessageTransmitter>>", i64 0, i64 0)), !dbg !220
  ret i8* %0, !dbg !215
}

define i8* @sol.model.struct.UnpauseParams(i8* %0) !dbg !221 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !222
  ret i8* %0, !dbg !222
}

define i8* @"unpause::unpause.2"(i8* %0, i8* %1) !dbg !224 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"Context<UnpauseContext>", i64 0, i64 0)), !dbg !225
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_params, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"&UnpauseParams", i64 0, i64 0)), !dbg !225
  %5 = call i8* @"sol.require.!2"(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @ctx.accounts.message_transmitter.paused, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @"MessageTransmitterError::InvalidMessageTransmitterState", i64 0, i64 0)), !dbg !227
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @ctx.accounts.message_transmitter.paused, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @false, i64 0, i64 0)), !dbg !228
  %6 = call i8* @"sol.emit_cpi.!1"(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"Unpause{}", i64 0, i64 0)), !dbg !229
  %7 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"()", i64 0, i64 0)), !dbg !230
  ret i8* %0, !dbg !225
}

define i8* @sol.model.struct.anchor.InitializeContext(i8* %0) !dbg !231 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !233
  %3 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @mut, i64 0, i64 0)), !dbg !235
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @payer, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"Signer<'info>", i64 0, i64 0)), !dbg !236
  %5 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @0, i64 0, i64 0)), !dbg !237
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @upgrade_authority, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"Signer<'info>", i64 0, i64 0)), !dbg !238
  %7 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([115 x i8], [115 x i8]* @"init,payer=payer,space=utils::DISCRIMINATOR_SIZE+MessageTransmitter::INIT_SPACE,seeds=[b\22message_transmitter\22],bump", i64 0, i64 0)), !dbg !239
  %8 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @message_transmitter, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @"Box<Account<'info,MessageTransmitter>>", i64 0, i64 0)), !dbg !240
  %9 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @0, i64 0, i64 0)), !dbg !241
  %10 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @message_transmitter_program_data, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"AccountInfo<'info>", i64 0, i64 0)), !dbg !242
  %11 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @message_transmitter_program, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @"Program<'info,program::MessageTransmitter>", i64 0, i64 0)), !dbg !243
  %12 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @system_program, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"Program<'info,System>", i64 0, i64 0)), !dbg !244
  ret i8* %0, !dbg !233
}

define i8* @sol.model.struct.InitializeParams(i8* %0) !dbg !245 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !246
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @local_domain, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u32, i64 0, i64 0)), !dbg !248
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @attester, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Pubkey, i64 0, i64 0)), !dbg !249
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @max_message_body_size, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u64, i64 0, i64 0)), !dbg !250
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @version, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u32, i64 0, i64 0)), !dbg !251
  ret i8* %0, !dbg !246
}

define i8* @"initialize::initialize.2"(i8* %0, i8* %1) !dbg !252 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"Context<InitializeContext>", i64 0, i64 0)), !dbg !253
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"&InitializeParams", i64 0, i64 0)), !dbg !253
  %5 = call i8* @sol.key.1(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @ctx.accounts.upgrade_authority, i64 0, i64 0)), !dbg !255
  %6 = call i8* @sol.to_account_info.1(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @ctx.accounts.message_transmitter_program_data, i64 0, i64 0)), !dbg !256
  %7 = call i8* @sol.to_account_info.1(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @ctx.accounts.message_transmitter_program, i64 0, i64 0)), !dbg !257
  %8 = call i8* @"sol.utils::validate_upgrade_authority.3"(i8* %5, i8* %6, i8* %7), !dbg !258
  %9 = call i8* @sol.key.1(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @ctx.accounts.upgrade_authority, i64 0, i64 0)), !dbg !259
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @authority, i64 0, i64 0), i8* %9), !dbg !260
  %10 = call i8* @sol.as_mut.1(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @ctx.accounts.message_transmitter, i64 0, i64 0)), !dbg !261
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @message_transmitter, i64 0, i64 0), i8* %10), !dbg !262
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @message_transmitter.owner, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @authority, i64 0, i64 0)), !dbg !263
  %11 = call i8* @"sol.Pubkey::default.0"(), !dbg !264
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @message_transmitter.pending_owner, i64 0, i64 0), i8* %11), !dbg !265
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @message_transmitter.attester_manager, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @authority, i64 0, i64 0)), !dbg !266
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @message_transmitter.pauser, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @authority, i64 0, i64 0)), !dbg !267
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @message_transmitter.paused, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @false, i64 0, i64 0)), !dbg !268
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @message_transmitter.local_domain, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @params.local_domain, i64 0, i64 0)), !dbg !269
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @message_transmitter.version, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @params.version, i64 0, i64 0)), !dbg !270
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @message_transmitter.signature_threshold, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"1", i64 0, i64 0)), !dbg !271
  %12 = call i8* @sol.push.2(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @message_transmitter.enabled_attesters, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @params.attester, i64 0, i64 0)), !dbg !272
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @message_transmitter.max_message_body_size, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @params.max_message_body_size, i64 0, i64 0)), !dbg !273
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @message_transmitter.next_available_nonce, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"1", i64 0, i64 0)), !dbg !274
  %13 = call i8* @"sol.require.!2"(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"message_transmitter.validate()", i64 0, i64 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @"MessageTransmitterError::InvalidMessageTransmitterState", i64 0, i64 0)), !dbg !275
  %14 = call i8* @"sol.emit_cpi.!1"(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @"AttesterEnabled{attester:params.attester}", i64 0, i64 0)), !dbg !276
  %15 = call i8* @"sol.emit_cpi.!2"(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @"AttesterManagerUpdated{previous_attester_manager:Pubkey::default()", i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"new_attester_manager:authority}", i64 0, i64 0)), !dbg !277
  %16 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"()", i64 0, i64 0)), !dbg !278
  ret i8* %0, !dbg !253
}

define i8* @sol.model.struct.anchor.IsNonceUsedContext(i8* %0) !dbg !279 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !281
  %3 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @0, i64 0, i64 0)), !dbg !283
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @used_nonces, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"UncheckedAccount<'info>", i64 0, i64 0)), !dbg !284
  ret i8* %0, !dbg !281
}

define i8* @sol.model.struct.IsNonceUsedParams(i8* %0) !dbg !285 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !286
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @nonce, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u64, i64 0, i64 0)), !dbg !288
  ret i8* %0, !dbg !286
}

define i8* @"is_nonce_used::is_nonce_used.anon.1"(i8* %0) !dbg !289 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !290
  %3 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @false, i64 0, i64 0)), !dbg !292
  ret i8* %0, !dbg !290
}

define i8* @"is_nonce_used::is_nonce_used.anon.2"(i8* %0) !dbg !293 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !294
  %3 = call i8* @sol.Err.1(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @err, i64 0, i64 0)), !dbg !296
  ret i8* %0, !dbg !294
}

define i8* @"is_nonce_used::is_nonce_used.anon.4"(i8* %0) !dbg !297 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !298
  %3 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @false, i64 0, i64 0)), !dbg !300
  ret i8* %0, !dbg !298
}

define i8* @"is_nonce_used::is_nonce_used.anon.5"(i8* %0) !dbg !301 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !302
  %3 = call i8* @sol.Err.1(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @err, i64 0, i64 0)), !dbg !304
  ret i8* %0, !dbg !302
}

define i8* @"is_nonce_used::is_nonce_used.anon.3"(i8* %0) !dbg !305 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !306
  %3 = call i8* @sol.data_is_empty.1(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @ctx.accounts.used_nonces, i64 0, i64 0)), !dbg !308
  %4 = call i8* @sol.if(i8* %3), !dbg !309
  %5 = call i8* @"sol.is_nonce_used::is_nonce_used.anon.4"(i8* %4), !dbg !310
  %6 = call i8* @sol.ifTrue.anon.(i8* %5), !dbg !310
  %7 = call i8* @"sol.is_nonce_used::is_nonce_used.anon.5"(i8* %6), !dbg !311
  %8 = call i8* @sol.ifFalse.anon.(i8* %7), !dbg !311
  ret i8* %0, !dbg !306
}

define i8* @"is_nonce_used::is_nonce_used.2"(i8* %0, i8* %1) !dbg !312 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"Context<IsNonceUsedContext>", i64 0, i64 0)), !dbg !313
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"&IsNonceUsedParams", i64 0, i64 0)), !dbg !313
  %5 = call i8* @sol.is_nonce_used.2(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @used_nonces, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @params.nonce, i64 0, i64 0)), !dbg !315
  %6 = call i8* @sol.data_is_empty.1(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @ctx.accounts.used_nonces, i64 0, i64 0)), !dbg !316
  %7 = call i8* @sol.if(i8* %6), !dbg !317
  %8 = call i8* @"sol.is_nonce_used::is_nonce_used.anon.1"(i8* %7), !dbg !318
  %9 = call i8* @sol.ifTrue.anon.(i8* %8), !dbg !318
  %10 = call i8* @"sol.is_nonce_used::is_nonce_used.anon.2"(i8* %9), !dbg !319
  %11 = call i8* @sol.ifFalse.anon.(i8* %10), !dbg !319
  %12 = call i8* @"sol.is_nonce_used::is_nonce_used.anon.3"(i8* %11), !dbg !320
  %13 = call i8* @sol.ifTrue.anon.(i8* %12), !dbg !320
  %14 = call i8* @sol.match.2(i8* %5, i8* %13), !dbg !321
  ret i8* %0, !dbg !313
}

define i8* @sol.model.struct.anchor.ReclaimEventAccountContext(i8* %0) !dbg !322 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !324
  %3 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @mut, i64 0, i64 0)), !dbg !326
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @payee, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"Signer<'info>", i64 0, i64 0)), !dbg !327
  %5 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @mut, i64 0, i64 0)), !dbg !328
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @message_transmitter, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @"Box<Account<'info,MessageTransmitter>>", i64 0, i64 0)), !dbg !329
  %7 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @"mut,constraint=message_sent_event_data.rent_payer==payee.key(),close=payee,", i64 0, i64 0)), !dbg !330
  %8 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @message_sent_event_data, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"Box<Account<'info,MessageSent>>", i64 0, i64 0)), !dbg !331
  ret i8* %0, !dbg !324
}

define i8* @sol.model.struct.ReclaimEventAccountParams(i8* %0) !dbg !332 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !333
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @attestation, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"Vec<u8>", i64 0, i64 0)), !dbg !335
  ret i8* %0, !dbg !333
}

define i8* @"reclaim_event_account::reclaim_event_account.2"(i8* %0, i8* %1) !dbg !336 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"Context<ReclaimEventAccountContext>", i64 0, i64 0)), !dbg !337
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"&ReclaimEventAccountParams", i64 0, i64 0)), !dbg !337
  %5 = call i8* @sol.as_mut.1(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @ctx.accounts.message_transmitter, i64 0, i64 0)), !dbg !339
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @message_transmitter, i64 0, i64 0), i8* %5), !dbg !340
  %6 = call i8* @"sol.require.!2"(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"!message_transmitter.paused", i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @"MessageTransmitterError::ProgramPaused", i64 0, i64 0)), !dbg !341
  %7 = call i8* @sol.as_ref.1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @ctx.accounts.message_sent_event_data, i64 0, i64 0)), !dbg !342
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @event_data, i64 0, i64 0), i8* %7), !dbg !343
  %8 = call i8* @"sol.Message::new.2"(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @message_transmitter.version, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @event_data.message, i64 0, i64 0)), !dbg !344
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @message, i64 0, i64 0), i8* %8), !dbg !345
  %9 = call i8* @sol.hash.1(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @message, i64 0, i64 0)), !dbg !346
  %10 = call i8* @sol.verify_attestation_signatures.3(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @message_transmitter, i64 0, i64 0), i8* %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @params.attestation, i64 0, i64 0)), !dbg !347
  %11 = call i8* @"sol.require_eq.!2"(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @"message.source_domain()?", i64 0, i64 0), i8* getelementptr inbounds ([77 x i8], [77 x i8]* @"message_transmitter.local_domain,MessageTransmitterError::InvalidSourceDomain", i64 0, i64 0)), !dbg !348
  %12 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"()", i64 0, i64 0)), !dbg !349
  ret i8* %0, !dbg !337
}

define i8* @sol.model.struct.anchor.ReplaceMessageContext(i8* %0) !dbg !350 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !352
  %3 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @mut, i64 0, i64 0)), !dbg !354
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @event_rent_payer, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"Signer<'info>", i64 0, i64 0)), !dbg !355
  %5 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @"seeds=[b\22sender_authority\22],bump,seeds::program=sender_program.key()", i64 0, i64 0)), !dbg !356
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @sender_authority_pda, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"Signer<'info>", i64 0, i64 0)), !dbg !357
  %7 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @mut, i64 0, i64 0)), !dbg !358
  %8 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @message_transmitter, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @"Box<Account<'info,MessageTransmitter>>", i64 0, i64 0)), !dbg !359
  %9 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @"init,payer=event_rent_payer,space=MessageSent::len(params.new_message_body.len())?,", i64 0, i64 0)), !dbg !360
  %10 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @message_sent_event_data, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"Box<Account<'info,MessageSent>>", i64 0, i64 0)), !dbg !361
  %11 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @"constraint=sender_program.executable", i64 0, i64 0)), !dbg !362
  %12 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @sender_program, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"UncheckedAccount<'info>", i64 0, i64 0)), !dbg !363
  %13 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @system_program, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"Program<'info,System>", i64 0, i64 0)), !dbg !364
  ret i8* %0, !dbg !352
}

define i8* @sol.model.struct.ReplaceMessageParams(i8* %0) !dbg !365 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !366
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @original_message, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"Vec<u8>", i64 0, i64 0)), !dbg !368
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @original_attestation, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"Vec<u8>", i64 0, i64 0)), !dbg !369
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @new_message_body, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"Vec<u8>", i64 0, i64 0)), !dbg !370
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @new_destination_caller, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Pubkey, i64 0, i64 0)), !dbg !371
  ret i8* %0, !dbg !366
}

define i8* @"replace_message::replace_message.2"(i8* %0, i8* %1) !dbg !372 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"Context<ReplaceMessageContext>", i64 0, i64 0)), !dbg !373
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"&ReplaceMessageParams", i64 0, i64 0)), !dbg !373
  %5 = call i8* @sol.as_mut.1(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @ctx.accounts.message_transmitter, i64 0, i64 0)), !dbg !375
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @message_transmitter, i64 0, i64 0), i8* %5), !dbg !376
  %6 = call i8* @"sol.require.!2"(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"!message_transmitter.paused", i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @"MessageTransmitterError::ProgramPaused", i64 0, i64 0)), !dbg !377
  %7 = call i8* @"sol.Message::new.2"(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @message_transmitter.version, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @params.original_message, i64 0, i64 0)), !dbg !378
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @message, i64 0, i64 0), i8* %7), !dbg !379
  %8 = call i8* @sol.hash.1(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @message, i64 0, i64 0)), !dbg !380
  %9 = call i8* @sol.verify_attestation_signatures.3(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @message_transmitter, i64 0, i64 0), i8* %8, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @params.original_attestation, i64 0, i64 0)), !dbg !381
  %10 = call i8* @"sol.require_keys_eq.!3"(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"message.sender()?", i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @"ctx.accounts.sender_program.key()", i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @"MessageTransmitterError::SenderNotPermitted", i64 0, i64 0)), !dbg !382
  %11 = call i8* @"sol.require_eq.!2"(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @"message.source_domain()?", i64 0, i64 0), i8* getelementptr inbounds ([77 x i8], [77 x i8]* @"message_transmitter.local_domain,MessageTransmitterError::InvalidSourceDomain", i64 0, i64 0)), !dbg !383
  %12 = call i8* @sol.as_mut.1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @ctx.accounts.message_sent_event_data, i64 0, i64 0)), !dbg !384
  %13 = call i8* @sol.key.1(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @ctx.accounts.event_rent_payer, i64 0, i64 0)), !dbg !385
  %14 = call i8* @sol.destination_domain.1(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @message, i64 0, i64 0)), !dbg !386
  %15 = call i8* @sol.recipient.1(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @message, i64 0, i64 0)), !dbg !387
  %16 = call i8* @sol.key.1(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @ctx.accounts.sender_program, i64 0, i64 0)), !dbg !388
  %17 = call i8* @sol.nonce.1(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @message, i64 0, i64 0)), !dbg !389
  %18 = call i8* @sol.Some.1(i8* %17), !dbg !390
  %19 = call i8* @"sol.crate::instructions::send_message_helper.9"(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @message_transmitter, i64 0, i64 0), i8* %12, i8* %13, i8* %14, i8* %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @params.new_destination_caller, i64 0, i64 0), i8* %16, i8* %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @params.new_message_body, i64 0, i64 0)), !dbg !391
  ret i8* %0, !dbg !373
}

define i8* @sol.model.struct.anchor.UpdateAttesterManagerContext(i8* %0) !dbg !392 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !394
  %3 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @0, i64 0, i64 0)), !dbg !396
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @owner, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"Signer<'info>", i64 0, i64 0)), !dbg !397
  %5 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @"mut,has_one=owner@MessageTransmitterError::InvalidAuthority", i64 0, i64 0)), !dbg !398
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @message_transmitter, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @"Box<Account<'info,MessageTransmitter>>", i64 0, i64 0)), !dbg !399
  ret i8* %0, !dbg !394
}

define i8* @sol.model.struct.UpdateAttesterManagerParams(i8* %0) !dbg !400 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !401
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @new_attester_manager, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Pubkey, i64 0, i64 0)), !dbg !403
  ret i8* %0, !dbg !401
}

define i8* @"update_attester_manager::update_attester_manager.2"(i8* %0, i8* %1) !dbg !404 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @"Context<UpdateAttesterManagerContext>", i64 0, i64 0)), !dbg !405
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @"&UpdateAttesterManagerParams", i64 0, i64 0)), !dbg !405
  %5 = call i8* @"sol.require_keys_neq.!3"(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @params.new_attester_manager, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"Pubkey::default()", i64 0, i64 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @"MessageTransmitterError::InvalidAttesterManager", i64 0, i64 0)), !dbg !407
  %6 = call i8* @"sol.require_keys_neq.!2"(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @params.new_attester_manager, i64 0, i64 0), i8* getelementptr inbounds ([97 x i8], [97 x i8]* @"ctx.accounts.message_transmitter.attester_manager,MessageTransmitterError::InvalidAttesterManager", i64 0, i64 0)), !dbg !408
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @previous_attester_manager, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @ctx.accounts.message_transmitter.attester_manager, i64 0, i64 0)), !dbg !409
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @ctx.accounts.message_transmitter.attester_manager, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @params.new_attester_manager, i64 0, i64 0)), !dbg !410
  %7 = call i8* @"sol.emit_cpi.!2"(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @"AttesterManagerUpdated{previous_attester_manager", i64 0, i64 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @"new_attester_manager:params.new_attester_manager}", i64 0, i64 0)), !dbg !411
  %8 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"()", i64 0, i64 0)), !dbg !412
  ret i8* %0, !dbg !405
}

define i8* @sol.model.struct.anchor.GetNoncePDAContext(i8* %0) !dbg !413 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !415
  %3 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @0, i64 0, i64 0)), !dbg !417
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @message_transmitter, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @"Box<Account<'info,MessageTransmitter>>", i64 0, i64 0)), !dbg !418
  ret i8* %0, !dbg !415
}

define i8* @sol.model.struct.GetNoncePDAParams(i8* %0) !dbg !419 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !420
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @nonce, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u64, i64 0, i64 0)), !dbg !422
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @source_domain, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u32, i64 0, i64 0)), !dbg !423
  ret i8* %0, !dbg !420
}

define i8* @"get_nonce_pda::get_nonce_pda.2"(i8* %0, i8* %1) !dbg !424 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @_ctx, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"Context<GetNoncePDAContext>", i64 0, i64 0)), !dbg !425
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"&GetNoncePDAParams", i64 0, i64 0)), !dbg !425
  %5 = call i8* @"sol.Pubkey::find_program_address.2"(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @"[b\22used_nonces\22,params.source_domain.to_string().as_bytes(),UsedNonces::first_nonce(params.nonce)?.to_string().as_bytes(),]", i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"crate::ID", i64 0, i64 0)), !dbg !427
  %6 = call i8* @sol.Ok.1(i8* %5), !dbg !428
  ret i8* %0, !dbg !425
}

define i8* @sol.model.struct.SendMessageWithCallerParams(i8* %0) !dbg !429 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !431
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @destination_domain, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u32, i64 0, i64 0)), !dbg !433
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @recipient, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Pubkey, i64 0, i64 0)), !dbg !434
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @message_body, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"Vec<u8>", i64 0, i64 0)), !dbg !435
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @destination_caller, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Pubkey, i64 0, i64 0)), !dbg !436
  ret i8* %0, !dbg !431
}

define i8* @"send_message_with_caller::send_message_with_caller.2"(i8* %0, i8* %1) !dbg !437 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"Context<SendMessageContext>", i64 0, i64 0)), !dbg !438
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @"&SendMessageWithCallerParams", i64 0, i64 0)), !dbg !438
  %5 = call i8* @"sol.require_keys_neq.!3"(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @params.destination_caller, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"Pubkey::default()", i64 0, i64 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @"MessageTransmitterError::InvalidDestinationCaller", i64 0, i64 0)), !dbg !440
  %6 = call i8* @sol.as_mut.1(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @ctx.accounts.message_transmitter, i64 0, i64 0)), !dbg !441
  %7 = call i8* @sol.as_mut.1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @ctx.accounts.message_sent_event_data, i64 0, i64 0)), !dbg !442
  %8 = call i8* @sol.key.1(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @ctx.accounts.event_rent_payer, i64 0, i64 0)), !dbg !443
  %9 = call i8* @sol.key.1(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @ctx.accounts.sender_program, i64 0, i64 0)), !dbg !444
  %10 = call i8* @"sol.crate::instructions::send_message_helper.9"(i8* %6, i8* %7, i8* %8, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @params.destination_domain, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @params.recipient, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @params.destination_caller, i64 0, i64 0), i8* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @None, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @params.message_body, i64 0, i64 0)), !dbg !445
  ret i8* %0, !dbg !438
}

define i8* @sol.model.struct.anchor.SetMaxMessageBodySizeContext(i8* %0) !dbg !446 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !448
  %3 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @0, i64 0, i64 0)), !dbg !450
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @owner, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"Signer<'info>", i64 0, i64 0)), !dbg !451
  %5 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @"mut,has_one=owner@MessageTransmitterError::InvalidAuthority", i64 0, i64 0)), !dbg !452
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @message_transmitter, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @"Box<Account<'info,MessageTransmitter>>", i64 0, i64 0)), !dbg !453
  ret i8* %0, !dbg !448
}

define i8* @sol.model.struct.SetMaxMessageBodySizeParams(i8* %0) !dbg !454 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !455
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @new_max_message_body_size, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u64, i64 0, i64 0)), !dbg !457
  ret i8* %0, !dbg !455
}

define i8* @"set_max_message_body_size::set_max_message_body_size.2"(i8* %0, i8* %1) !dbg !458 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @"Context<SetMaxMessageBodySizeContext>", i64 0, i64 0)), !dbg !459
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @"&SetMaxMessageBodySizeParams", i64 0, i64 0)), !dbg !459
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @ctx.accounts.message_transmitter.max_message_body_size, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @params.new_max_message_body_size, i64 0, i64 0)), !dbg !461
  %5 = call i8* @"sol.emit_cpi.!1"(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @"MaxMessageBodySizeUpdated{new_max_message_body_size:ctx.accounts.message_transmitter.max_message_body_size}", i64 0, i64 0)), !dbg !462
  %6 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"()", i64 0, i64 0)), !dbg !463
  ret i8* %0, !dbg !459
}

define i8* @sol.model.struct.anchor.DisableAttesterContext(i8* %0) !dbg !464 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !466
  %3 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @mut, i64 0, i64 0)), !dbg !468
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @payer, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"Signer<'info>", i64 0, i64 0)), !dbg !469
  %5 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @0, i64 0, i64 0)), !dbg !470
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @attester_manager, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"Signer<'info>", i64 0, i64 0)), !dbg !471
  %7 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([293 x i8], [293 x i8]* @"mut,has_one=attester_manager@MessageTransmitterError::InvalidAuthority,realloc=utils::DISCRIMINATOR_SIZE+MessageTransmitter::INIT_SPACE+ifmessage_transmitter.enabled_attesters.len()<2{0}else{(message_transmitter.enabled_attesters.len()-2)*PUBKEY_BYTES},realloc::payer=payer,realloc::zero=false", i64 0, i64 0)), !dbg !472
  %8 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @message_transmitter, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @"Box<Account<'info,MessageTransmitter>>", i64 0, i64 0)), !dbg !473
  %9 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @system_program, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"Program<'info,System>", i64 0, i64 0)), !dbg !474
  ret i8* %0, !dbg !466
}

define i8* @sol.model.struct.DisableAttesterParams(i8* %0) !dbg !475 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !476
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @attester, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Pubkey, i64 0, i64 0)), !dbg !478
  ret i8* %0, !dbg !476
}

define i8* @"disable_attester::disable_attester.anon.1"(i8* %0) !dbg !479 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !480
  %3 = call i8* @sol.remove.2(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @ctx.accounts.message_transmitter.enabled_attesters, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @pos, i64 0, i64 0)), !dbg !482
  %4 = call i8* @"sol.emit_cpi.!1"(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @"AttesterDisabled{attester:params.attester}", i64 0, i64 0)), !dbg !483
  ret i8* %0, !dbg !480
}

define i8* @"disable_attester::disable_attester.anon.2"(i8* %0) !dbg !484 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !485
  %3 = call i8* @"sol.model.macro.err.!1"(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @"(MessageTransmitterError::AttesterAlreadyDisabled)", i64 0, i64 0)), !dbg !487
  %4 = call i8* @sol.return.1(i8* %3), !dbg !488
  ret i8* %0, !dbg !485
}

define i8* @"disable_attester::disable_attester.2"(i8* %0, i8* %1) !dbg !489 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"Context<DisableAttesterContext>", i64 0, i64 0)), !dbg !490
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @"&DisableAttesterParams", i64 0, i64 0)), !dbg !490
  %5 = call i8* @sol.as_mut.1(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @ctx.accounts.message_transmitter, i64 0, i64 0)), !dbg !492
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @message_transmitter, i64 0, i64 0), i8* %5), !dbg !493
  %6 = call i8* @"sol.require_gt.!2"(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @"message_transmitter.enabled_attesters.len()", i64 0, i64 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @"1,MessageTransmitterError::TooFewEnabledAttesters", i64 0, i64 0)), !dbg !494
  %7 = call i8* @"sol.require_gt.!2"(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @"message_transmitter.enabled_attesters.len()", i64 0, i64 0), i8* getelementptr inbounds ([96 x i8], [96 x i8]* @"message_transmitter.signature_thresholdasusize,MessageTransmitterError::SignatureThresholdTooLow", i64 0, i64 0)), !dbg !495
  %8 = call i8* @sol.iter.1(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @ctx.accounts.message_transmitter.enabled_attesters, i64 0, i64 0)), !dbg !496
  %9 = call i8* @"sol.=="(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @x, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @params.attester, i64 0, i64 0)), !dbg !497
  %10 = call i8* @sol.position.2(i8* %8, i8* %9), !dbg !498
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @"ctx.accounts.message_transmitter.enabled_attesters.iter().position(|x|x==&params.attester)", i64 0, i64 0), i8* %10), !dbg !499
  %11 = call i8* @"sol.disable_attester::disable_attester.anon.1"(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @"ctx.accounts.message_transmitter.enabled_attesters.iter().position(|x|x==&params.attester)", i64 0, i64 0)), !dbg !500
  %12 = call i8* @sol.ifTrue.anon.(i8* %11), !dbg !500
  %13 = call i8* @"sol.disable_attester::disable_attester.anon.2"(i8* %12), !dbg !501
  %14 = call i8* @sol.ifFalse.anon.(i8* %13), !dbg !501
  %15 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"()", i64 0, i64 0)), !dbg !502
  ret i8* %0, !dbg !490
}

define i8* @sol.model.struct.anchor.ReceiveMessageContext(i8* %0) !dbg !503 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !505
  %3 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @mut, i64 0, i64 0)), !dbg !507
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @payer, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"Signer<'info>", i64 0, i64 0)), !dbg !508
  %5 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @0, i64 0, i64 0)), !dbg !509
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @caller, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"Signer<'info>", i64 0, i64 0)), !dbg !510
  %7 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @"seeds=[b\22message_transmitter_authority\22,receiver.key().as_ref()],bump,", i64 0, i64 0)), !dbg !511
  %8 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @authority_pda, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"UncheckedAccount<'info>", i64 0, i64 0)), !dbg !512
  %9 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @0, i64 0, i64 0)), !dbg !513
  %10 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @message_transmitter, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @"Box<Account<'info,MessageTransmitter>>", i64 0, i64 0)), !dbg !514
  %11 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([325 x i8], [325 x i8]* @"init_if_needed,payer=payer,space=utils::DISCRIMINATOR_SIZE+UsedNonces::INIT_SPACE,seeds=[b\22used_nonces\22,Message::new(message_transmitter.version,&params.message)?.source_domain()?.to_string().as_bytes(),UsedNonces::first_nonce(Message::new(message_transmitter.version,&params.message)?.nonce()?)?.to_string().as_bytes()],bump", i64 0, i64 0)), !dbg !515
  %12 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @used_nonces, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"Box<Account<'info,UsedNonces>>", i64 0, i64 0)), !dbg !516
  %13 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @"constraint=receiver.executable,constraint=receiver.key()!=crate::ID", i64 0, i64 0)), !dbg !517
  %14 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @receiver, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"UncheckedAccount<'info>", i64 0, i64 0)), !dbg !518
  %15 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @system_program, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"Program<'info,System>", i64 0, i64 0)), !dbg !519
  ret i8* %0, !dbg !505
}

define i8* @sol.model.struct.ReceiveMessageParams(i8* %0) !dbg !520 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !521
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @message, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"Vec<u8>", i64 0, i64 0)), !dbg !523
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @attestation, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"Vec<u8>", i64 0, i64 0)), !dbg !524
  ret i8* %0, !dbg !521
}

define i8* @sol.model.struct.HandleReceiveMessageParams(i8* %0) !dbg !525 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !526
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @remote_domain, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u32, i64 0, i64 0)), !dbg !528
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @sender, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Pubkey, i64 0, i64 0)), !dbg !529
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @message_body, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"Vec<u8>", i64 0, i64 0)), !dbg !530
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @authority_bump, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @u8, i64 0, i64 0)), !dbg !531
  ret i8* %0, !dbg !526
}

define i8* @"receive_message::receive_message.anon.1"(i8* %0) !dbg !532 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !533
  %3 = call i8* @"sol.require_keys_eq.!3"(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @destination_caller, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @"ctx.accounts.caller.key()", i64 0, i64 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @"MessageTransmitterError::InvalidDestinationCaller", i64 0, i64 0)), !dbg !535
  ret i8* %0, !dbg !533
}

define i8* @"receive_message::receive_message.anon.2"(i8* %0) !dbg !536 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !537
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @used_nonces.remote_domain, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @source_domain, i64 0, i64 0)), !dbg !539
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @used_nonces.first_nonce, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @first_nonce, i64 0, i64 0)), !dbg !540
  ret i8* %0, !dbg !537
}

define i8* @"receive_message::receive_message.anon.3"(i8* %0) !dbg !541 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !542
  %3 = call i8* @"sol.require_eq.!2"(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @used_nonces.remote_domain, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @"source_domain,MessageTransmitterError::InvalidUsedNoncesAccount", i64 0, i64 0)), !dbg !544
  %4 = call i8* @"sol.require_eq.!2"(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @used_nonces.first_nonce, i64 0, i64 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @"first_nonce,MessageTransmitterError::InvalidUsedNoncesAccount", i64 0, i64 0)), !dbg !545
  ret i8* %0, !dbg !542
}

define i8* @"receive_message::receive_message.anon.4"(i8* %0) !dbg !546 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !547
  %3 = call i8* @sol.key.1(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @acc, i64 0, i64 0)), !dbg !549
  %4 = call i8* @"sol.AccountMeta::new.2"(i8* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @acc.is_signer, i64 0, i64 0)), !dbg !550
  %5 = call i8* @sol.push.2(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @accounts, i64 0, i64 0), i8* %4), !dbg !551
  ret i8* %0, !dbg !547
}

define i8* @"receive_message::receive_message.anon.5"(i8* %0) !dbg !552 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !553
  %3 = call i8* @sol.key.1(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @acc, i64 0, i64 0)), !dbg !555
  %4 = call i8* @"sol.AccountMeta::new_readonly.2"(i8* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @acc.is_signer, i64 0, i64 0)), !dbg !556
  %5 = call i8* @sol.push.2(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @accounts, i64 0, i64 0), i8* %4), !dbg !557
  ret i8* %0, !dbg !553
}

define i8* @"receive_message::receive_message.anon.7"(i8* %0) !dbg !558 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !559
  %3 = call i8* @sol.key.1(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @acc, i64 0, i64 0)), !dbg !561
  %4 = call i8* @"sol.AccountMeta::new.2"(i8* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @acc.is_signer, i64 0, i64 0)), !dbg !562
  %5 = call i8* @sol.push.2(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @accounts, i64 0, i64 0), i8* %4), !dbg !563
  ret i8* %0, !dbg !559
}

define i8* @"receive_message::receive_message.anon.8"(i8* %0) !dbg !564 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !565
  %3 = call i8* @sol.key.1(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @acc, i64 0, i64 0)), !dbg !567
  %4 = call i8* @"sol.AccountMeta::new_readonly.2"(i8* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @acc.is_signer, i64 0, i64 0)), !dbg !568
  %5 = call i8* @sol.push.2(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @accounts, i64 0, i64 0), i8* %4), !dbg !569
  ret i8* %0, !dbg !565
}

define i8* @"receive_message::receive_message.anon.6"(i8* %0) !dbg !570 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !571
  %3 = call i8* @sol.if(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @acc.is_writable, i64 0, i64 0)), !dbg !573
  %4 = call i8* @"sol.receive_message::receive_message.anon.7"(i8* %3), !dbg !574
  %5 = call i8* @sol.ifTrue.anon.(i8* %4), !dbg !574
  %6 = call i8* @"sol.receive_message::receive_message.anon.8"(i8* %5), !dbg !575
  %7 = call i8* @sol.ifFalse.anon.(i8* %6), !dbg !575
  ret i8* %0, !dbg !571
}

define i8* @"receive_message::receive_message.2"(i8* %0, i8* %1) !dbg !576 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @"Context<'_,'_,'_,'info,ReceiveMessageContext<'info>>", i64 0, i64 0)), !dbg !577
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"&ReceiveMessageParams", i64 0, i64 0)), !dbg !577
  %5 = call i8* @sol.as_ref.1(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @ctx.accounts.message_transmitter, i64 0, i64 0)), !dbg !579
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @message_transmitter, i64 0, i64 0), i8* %5), !dbg !580
  %6 = call i8* @"sol.require.!2"(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"!message_transmitter.paused", i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @"MessageTransmitterError::ProgramPaused", i64 0, i64 0)), !dbg !581
  %7 = call i8* @"sol.Message::new.2"(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @message_transmitter.version, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @params.message, i64 0, i64 0)), !dbg !582
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @message, i64 0, i64 0), i8* %7), !dbg !583
  %8 = call i8* @sol.hash.1(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @message, i64 0, i64 0)), !dbg !584
  %9 = call i8* @sol.verify_attestation_signatures.3(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @message_transmitter, i64 0, i64 0), i8* %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @params.attestation, i64 0, i64 0)), !dbg !585
  %10 = call i8* @"sol.require.!2"(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @"message.destination_domain()?==message_transmitter.local_domain", i64 0, i64 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @"MessageTransmitterError::InvalidDestinationDomain", i64 0, i64 0)), !dbg !586
  %11 = call i8* @sol.destination_caller.1(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @message, i64 0, i64 0)), !dbg !587
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @destination_caller, i64 0, i64 0), i8* %11), !dbg !588
  %12 = call i8* @"sol.Pubkey::default.0"(), !dbg !589
  %13 = call i8* @"sol.!="(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @destination_caller, i64 0, i64 0), i8* %12), !dbg !590
  %14 = call i8* @sol.if(i8* %13), !dbg !591
  %15 = call i8* @"sol.receive_message::receive_message.anon.1"(i8* %14), !dbg !592
  %16 = call i8* @sol.ifTrue.anon.(i8* %15), !dbg !592
  %17 = call i8* @sol.as_mut.1(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @ctx.accounts.used_nonces, i64 0, i64 0)), !dbg !593
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @used_nonces, i64 0, i64 0), i8* %17), !dbg !594
  %18 = call i8* @sol.source_domain.1(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @message, i64 0, i64 0)), !dbg !595
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @source_domain, i64 0, i64 0), i8* %18), !dbg !596
  %19 = call i8* @sol.sender.1(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @message, i64 0, i64 0)), !dbg !597
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @sender, i64 0, i64 0), i8* %19), !dbg !598
  %20 = call i8* @sol.nonce.1(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @message, i64 0, i64 0)), !dbg !599
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @nonce, i64 0, i64 0), i8* %20), !dbg !600
  %21 = call i8* @"sol.UsedNonces::first_nonce.1"(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @nonce, i64 0, i64 0)), !dbg !601
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @first_nonce, i64 0, i64 0), i8* %21), !dbg !602
  %22 = call i8* @"sol.=="(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @used_nonces.first_nonce, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"0", i64 0, i64 0)), !dbg !603
  %23 = call i8* @sol.if(i8* %22), !dbg !604
  %24 = call i8* @"sol.receive_message::receive_message.anon.2"(i8* %23), !dbg !605
  %25 = call i8* @sol.ifTrue.anon.(i8* %24), !dbg !605
  %26 = call i8* @"sol.receive_message::receive_message.anon.3"(i8* %25), !dbg !606
  %27 = call i8* @sol.ifFalse.anon.(i8* %26), !dbg !606
  %28 = call i8* @sol.use_nonce.2(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @used_nonces, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @nonce, i64 0, i64 0)), !dbg !607
  %29 = call i8* @sol.key.1(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @ctx.accounts.receiver, i64 0, i64 0)), !dbg !608
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @receiver_key, i64 0, i64 0), i8* %29), !dbg !609
  %30 = call i8* @"sol.require_keys_eq.!2"(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"message.recipient()?", i64 0, i64 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @"receiver_key,MessageTransmitterError::InvalidRecipientProgram", i64 0, i64 0)), !dbg !610
  %31 = call i8* @sol.get.2(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @ctx.bumps, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"\22authority_pda\22", i64 0, i64 0)), !dbg !611
  %32 = call i8* @sol.ok_or.2(i8* %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"ProgramError::InvalidSeeds", i64 0, i64 0)), !dbg !612
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @authority_bump, i64 0, i64 0), i8* %32), !dbg !613
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @authority_seeds, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @"[&[b\22message_transmitter_authority\22,receiver_key.as_ref(),&[authority_bump],]]", i64 0, i64 0)), !dbg !614
  %33 = call i8* @sol.len.1(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @ctx.remaining_accounts, i64 0, i64 0)), !dbg !615
  %34 = call i8* @"sol.+"(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"2", i64 0, i64 0), i8* %33), !dbg !616
  %35 = call i8* @"sol.Vec::with_capacity.1"(i8* %34), !dbg !617
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @accounts, i64 0, i64 0), i8* %35), !dbg !618
  %36 = call i8* @sol.key.1(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @ctx.accounts.authority_pda, i64 0, i64 0)), !dbg !619
  %37 = call i8* @"sol.AccountMeta::new_readonly.2"(i8* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @true, i64 0, i64 0)), !dbg !620
  %38 = call i8* @sol.push.2(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @accounts, i64 0, i64 0), i8* %37), !dbg !621
  %39 = call i8* @sol.model.loop.for.1(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @"receive_message::receive_message.anon.6.2", i64 0, i64 0)), !dbg !622
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @remote_domain, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @source_domain, i64 0, i64 0)), !dbg !623
  %40 = call i8* @sol.message_body.1(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @message, i64 0, i64 0)), !dbg !624
  %41 = call i8* @sol.to_vec.1(i8* %40), !dbg !625
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @message_body, i64 0, i64 0), i8* %41), !dbg !626
  %42 = call i8* @sol.model.struct.new.HandleReceiveMessageParams.4(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @remote_domain, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @sender, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @message_body, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @authority_bump, i64 0, i64 0)), !dbg !627
  call void @sol.model.opaqueAssign(i8* %1, i8* %42), !dbg !628
  %43 = call i8* @sol.message_body.1(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @message, i64 0, i64 0)), !dbg !629
  %44 = call i8* @sol.len.1(i8* %43), !dbg !630
  %45 = call i8* @"sol.+"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"52", i64 0, i64 0), i8* %44), !dbg !631
  %46 = call i8* @"sol.Vec::with_capacity.1"(i8* %45), !dbg !632
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @data, i64 0, i64 0), i8* %46), !dbg !633
  %47 = call i8* @sol.as_bytes.1(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"\22global:handle_receive_message\22", i64 0, i64 0)), !dbg !634
  %48 = call i8* @"sol.anchor_lang::solana_program::hash::hash.1"(i8* %47), !dbg !635
  %49 = call i8* @sol.to_bytes.1(i8* %48), !dbg !636
  %50 = call i8* @sol.extend_from_slice.2(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @data, i64 0, i64 0), i8* %49), !dbg !637
  %51 = call i8* @sol.try_to_vec.1(i8* %1), !dbg !638
  %52 = call i8* @sol.extend_from_slice.2(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @data, i64 0, i64 0), i8* %51), !dbg !639
  %53 = call i8* @sol.key.1(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @ctx.accounts.receiver, i64 0, i64 0)), !dbg !640
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @program_id, i64 0, i64 0), i8* %53), !dbg !641
  %54 = call i8* @sol.model.struct.new.Instruction.3(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @program_id, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @accounts, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @data, i64 0, i64 0)), !dbg !642
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @instruction, i64 0, i64 0), i8* %54), !dbg !643
  %55 = call i8* @sol.concat.1(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @"[&[ctx.accounts.authority_pda.to_account_info()],ctx.remaining_accounts,]", i64 0, i64 0)), !dbg !644
  %56 = call i8* @"sol.program::invoke_signed.3"(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @instruction, i64 0, i64 0), i8* %55, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @authority_seeds, i64 0, i64 0)), !dbg !645
  %57 = call i8* @"sol.emit_cpi.!2"(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @"MessageReceived{caller:ctx.accounts.caller.key()", i64 0, i64 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @"source_domain,nonce,sender,message_body:message.message_body().to_vec()}", i64 0, i64 0)), !dbg !646
  %58 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"()", i64 0, i64 0)), !dbg !647
  ret i8* %0, !dbg !577
}

define i8* @sol.model.struct.anchor.PauseContext(i8* %0) !dbg !648 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !650
  %3 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @0, i64 0, i64 0)), !dbg !652
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @pauser, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"Signer<'info>", i64 0, i64 0)), !dbg !653
  %5 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @"mut,has_one=pauser@MessageTransmitterError::InvalidAuthority", i64 0, i64 0)), !dbg !654
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @message_transmitter, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @"Box<Account<'info,MessageTransmitter>>", i64 0, i64 0)), !dbg !655
  ret i8* %0, !dbg !650
}

define i8* @sol.model.struct.PauseParams(i8* %0) !dbg !656 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !657
  ret i8* %0, !dbg !657
}

define i8* @"pause::pause.2"(i8* %0, i8* %1) !dbg !659 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"Context<PauseContext>", i64 0, i64 0)), !dbg !660
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_params, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"&PauseParams", i64 0, i64 0)), !dbg !660
  %5 = call i8* @"sol.require.!2"(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @"!ctx.accounts.message_transmitter.paused", i64 0, i64 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @"MessageTransmitterError::InvalidMessageTransmitterState", i64 0, i64 0)), !dbg !662
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @ctx.accounts.message_transmitter.paused, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @true, i64 0, i64 0)), !dbg !663
  %6 = call i8* @"sol.emit_cpi.!1"(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"Pause{}", i64 0, i64 0)), !dbg !664
  %7 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"()", i64 0, i64 0)), !dbg !665
  ret i8* %0, !dbg !660
}

define i8* @sol.model.struct.anchor.TransferOwnershipContext(i8* %0) !dbg !666 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !668
  %3 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @0, i64 0, i64 0)), !dbg !670
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @owner, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"Signer<'info>", i64 0, i64 0)), !dbg !671
  %5 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @"mut,has_one=owner@MessageTransmitterError::InvalidAuthority", i64 0, i64 0)), !dbg !672
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @message_transmitter, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @"Box<Account<'info,MessageTransmitter>>", i64 0, i64 0)), !dbg !673
  ret i8* %0, !dbg !668
}

define i8* @sol.model.struct.TransferOwnershipParams(i8* %0) !dbg !674 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !675
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @new_owner, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Pubkey, i64 0, i64 0)), !dbg !677
  ret i8* %0, !dbg !675
}

define i8* @"transfer_ownership::transfer_ownership.anon.1"(i8* %0) !dbg !678 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !679
  %3 = call i8* @"sol.model.macro.err.!1"(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @"(MessageTransmitterError::InvalidOwner)", i64 0, i64 0)), !dbg !681
  %4 = call i8* @sol.return.1(i8* %3), !dbg !682
  ret i8* %0, !dbg !679
}

define i8* @"transfer_ownership::transfer_ownership.2"(i8* %0, i8* %1) !dbg !683 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @"Context<TransferOwnershipContext>", i64 0, i64 0)), !dbg !684
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @"&TransferOwnershipParams", i64 0, i64 0)), !dbg !684
  %5 = call i8* @sol.contains.2(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @"[Pubkey::default(),ctx.accounts.owner.key(),ctx.accounts.message_transmitter.pending_owner,]", i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @params.new_owner, i64 0, i64 0)), !dbg !686
  %6 = call i8* @sol.if(i8* %5), !dbg !687
  %7 = call i8* @"sol.transfer_ownership::transfer_ownership.anon.1"(i8* %6), !dbg !688
  %8 = call i8* @sol.ifTrue.anon.(i8* %7), !dbg !688
  %9 = call i8* @sol.as_mut.1(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @ctx.accounts.message_transmitter, i64 0, i64 0)), !dbg !689
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @message_transmitter, i64 0, i64 0), i8* %9), !dbg !690
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @message_transmitter.pending_owner, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @params.new_owner, i64 0, i64 0)), !dbg !691
  %10 = call i8* @"sol.emit_cpi.!2"(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @"OwnershipTransferStarted{previous_owner:message_transmitter.owner", i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @"new_owner:message_transmitter.pending_owner}", i64 0, i64 0)), !dbg !692
  %11 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"()", i64 0, i64 0)), !dbg !693
  ret i8* %0, !dbg !684
}

define i8* @sol.model.struct.anchor.EnableAttesterContext(i8* %0) !dbg !694 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !696
  %3 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @mut, i64 0, i64 0)), !dbg !698
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @payer, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"Signer<'info>", i64 0, i64 0)), !dbg !699
  %5 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @0, i64 0, i64 0)), !dbg !700
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @attester_manager, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"Signer<'info>", i64 0, i64 0)), !dbg !701
  %7 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([233 x i8], [233 x i8]* @"mut,has_one=attester_manager@MessageTransmitterError::InvalidAuthority,realloc=utils::DISCRIMINATOR_SIZE+MessageTransmitter::INIT_SPACE+message_transmitter.enabled_attesters.len()*PUBKEY_BYTES,realloc::payer=payer,realloc::zero=false", i64 0, i64 0)), !dbg !702
  %8 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @message_transmitter, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @"Box<Account<'info,MessageTransmitter>>", i64 0, i64 0)), !dbg !703
  %9 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @system_program, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"Program<'info,System>", i64 0, i64 0)), !dbg !704
  ret i8* %0, !dbg !696
}

define i8* @sol.model.struct.EnableAttesterParams(i8* %0) !dbg !705 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !706
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @new_attester, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Pubkey, i64 0, i64 0)), !dbg !708
  ret i8* %0, !dbg !706
}

define i8* @"enable_attester::enable_attester.2"(i8* %0, i8* %1) !dbg !709 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"Context<EnableAttesterContext>", i64 0, i64 0)), !dbg !710
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"&EnableAttesterParams", i64 0, i64 0)), !dbg !710
  %5 = call i8* @"sol.require_keys_neq.!3"(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @params.new_attester, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"Pubkey::default()", i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @"MessageTransmitterError::InvalidAttester", i64 0, i64 0)), !dbg !712
  %6 = call i8* @"sol.require.!2"(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @"!ctx.accounts.message_transmitter.is_enabled_attester(&params.new_attester)", i64 0, i64 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @"MessageTransmitterError::AttesterAlreadyEnabled", i64 0, i64 0)), !dbg !713
  %7 = call i8* @sol.push.2(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @ctx.accounts.message_transmitter.enabled_attesters, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @params.new_attester, i64 0, i64 0)), !dbg !714
  %8 = call i8* @"sol.emit_cpi.!1"(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @"AttesterEnabled{attester:params.new_attester}", i64 0, i64 0)), !dbg !715
  %9 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"()", i64 0, i64 0)), !dbg !716
  ret i8* %0, !dbg !710
}

define i8* @sol.model.struct.anchor.AcceptOwnershipContext(i8* %0) !dbg !717 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !719
  %3 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @0, i64 0, i64 0)), !dbg !721
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @pending_owner, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"Signer<'info>", i64 0, i64 0)), !dbg !722
  %5 = call i8* @sol.model.struct.constraint(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @"mut,has_one=pending_owner@MessageTransmitterError::InvalidAuthority", i64 0, i64 0)), !dbg !723
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @message_transmitter, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @"Box<Account<'info,MessageTransmitter>>", i64 0, i64 0)), !dbg !724
  ret i8* %0, !dbg !719
}

define i8* @sol.model.struct.AcceptOwnershipParams(i8* %0) !dbg !725 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !726
  ret i8* %0, !dbg !726
}

define i8* @"accept_ownership::accept_ownership.2"(i8* %0, i8* %1) !dbg !728 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"Context<AcceptOwnershipContext>", i64 0, i64 0)), !dbg !729
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_params, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @"&AcceptOwnershipParams", i64 0, i64 0)), !dbg !729
  %5 = call i8* @sol.as_mut.1(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @ctx.accounts.message_transmitter, i64 0, i64 0)), !dbg !731
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @message_transmitter, i64 0, i64 0), i8* %5), !dbg !732
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @previous_owner, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @message_transmitter.owner, i64 0, i64 0)), !dbg !733
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @message_transmitter.owner, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @message_transmitter.pending_owner, i64 0, i64 0)), !dbg !734
  %6 = call i8* @"sol.Pubkey::default.0"(), !dbg !735
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @message_transmitter.pending_owner, i64 0, i64 0), i8* %6), !dbg !736
  %7 = call i8* @"sol.emit_cpi.!2"(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"OwnershipTransferred{previous_owner", i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @"new_owner:message_transmitter.owner}", i64 0, i64 0)), !dbg !737
  %8 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"()", i64 0, i64 0)), !dbg !738
  ret i8* %0, !dbg !729
}

define i8* @sol.model.struct.anchor.MessageSent(i8* %0) !dbg !739 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !741
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @rent_payer, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Pubkey, i64 0, i64 0)), !dbg !743
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @message, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"Vec<u8>", i64 0, i64 0)), !dbg !744
  ret i8* %0, !dbg !741
}

define i8* @sol.model.struct.MessageSent(i8* %0) !dbg !745 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !746
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @rent_payer, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Pubkey, i64 0, i64 0)), !dbg !748
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @message, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"Vec<u8>", i64 0, i64 0)), !dbg !749
  ret i8* %0, !dbg !746
}

define i8* @"events::MessageSent::len.1"(i8* %0) !dbg !750 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @message_body_len, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @usize, i64 0, i64 0)), !dbg !751
  %3 = call i8* @"sol.utils::checked_add.2"(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @"utils::DISCRIMINATOR_SIZE", i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"MessageSent::INIT_SPACE", i64 0, i64 0)), !dbg !753
  %4 = call i8* @"sol.utils::checked_sub.2"(i8* %3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"1", i64 0, i64 0)), !dbg !754
  %5 = call i8* @"sol.Message::serialized_len.1"(i8* %0), !dbg !755
  %6 = call i8* @"sol.utils::checked_add.2"(i8* %4, i8* %5), !dbg !756
  ret i8* %0, !dbg !751
}

define i8* @"lib::initialize.2"(i8* %0, i8* %1) !dbg !757 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"Context<InitializeContext>", i64 0, i64 0)), !dbg !759
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @InitializeParams, i64 0, i64 0)), !dbg !759
  %5 = call i8* @"sol.instructions::initialize.2"(i8* %0, i8* %1), !dbg !761
  ret i8* %0, !dbg !759
}

define i8* @"lib::transfer_ownership.2"(i8* %0, i8* %1) !dbg !762 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @"Context<TransferOwnershipContext>", i64 0, i64 0)), !dbg !763
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @TransferOwnershipParams, i64 0, i64 0)), !dbg !763
  %5 = call i8* @"sol.instructions::transfer_ownership.2"(i8* %0, i8* %1), !dbg !765
  ret i8* %0, !dbg !763
}

define i8* @"lib::accept_ownership.2"(i8* %0, i8* %1) !dbg !766 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"Context<AcceptOwnershipContext>", i64 0, i64 0)), !dbg !767
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @AcceptOwnershipParams, i64 0, i64 0)), !dbg !767
  %5 = call i8* @"sol.instructions::accept_ownership.2"(i8* %0, i8* %1), !dbg !769
  ret i8* %0, !dbg !767
}

define i8* @"lib::update_pauser.2"(i8* %0, i8* %1) !dbg !770 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @"Context<UpdatePauserContext>", i64 0, i64 0)), !dbg !771
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @UpdatePauserParams, i64 0, i64 0)), !dbg !771
  %5 = call i8* @"sol.instructions::update_pauser.2"(i8* %0, i8* %1), !dbg !773
  ret i8* %0, !dbg !771
}

define i8* @"lib::update_attester_manager.2"(i8* %0, i8* %1) !dbg !774 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @"Context<UpdateAttesterManagerContext>", i64 0, i64 0)), !dbg !775
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @UpdateAttesterManagerParams, i64 0, i64 0)), !dbg !775
  %5 = call i8* @"sol.instructions::update_attester_manager.2"(i8* %0, i8* %1), !dbg !777
  ret i8* %0, !dbg !775
}

define i8* @"lib::pause.2"(i8* %0, i8* %1) !dbg !778 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"Context<PauseContext>", i64 0, i64 0)), !dbg !779
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @PauseParams, i64 0, i64 0)), !dbg !779
  %5 = call i8* @"sol.instructions::pause.2"(i8* %0, i8* %1), !dbg !781
  ret i8* %0, !dbg !779
}

define i8* @"lib::unpause.2"(i8* %0, i8* %1) !dbg !782 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"Context<UnpauseContext>", i64 0, i64 0)), !dbg !783
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @UnpauseParams, i64 0, i64 0)), !dbg !783
  %5 = call i8* @"sol.instructions::unpause.2"(i8* %0, i8* %1), !dbg !785
  ret i8* %0, !dbg !783
}

define i8* @"lib::set_max_message_body_size.2"(i8* %0, i8* %1) !dbg !786 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @"Context<SetMaxMessageBodySizeContext>", i64 0, i64 0)), !dbg !787
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @SetMaxMessageBodySizeParams, i64 0, i64 0)), !dbg !787
  %5 = call i8* @"sol.instructions::set_max_message_body_size.2"(i8* %0, i8* %1), !dbg !789
  ret i8* %0, !dbg !787
}

define i8* @"lib::enable_attester.2"(i8* %0, i8* %1) !dbg !790 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"Context<EnableAttesterContext>", i64 0, i64 0)), !dbg !791
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @EnableAttesterParams, i64 0, i64 0)), !dbg !791
  %5 = call i8* @"sol.instructions::enable_attester.2"(i8* %0, i8* %1), !dbg !793
  ret i8* %0, !dbg !791
}

define i8* @"lib::disable_attester.2"(i8* %0, i8* %1) !dbg !794 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"Context<DisableAttesterContext>", i64 0, i64 0)), !dbg !795
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @DisableAttesterParams, i64 0, i64 0)), !dbg !795
  %5 = call i8* @"sol.instructions::disable_attester.2"(i8* %0, i8* %1), !dbg !797
  ret i8* %0, !dbg !795
}

define i8* @"lib::set_signature_threshold.2"(i8* %0, i8* %1) !dbg !798 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @"Context<SetSignatureThresholdContext>", i64 0, i64 0)), !dbg !799
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @SetSignatureThresholdParams, i64 0, i64 0)), !dbg !799
  %5 = call i8* @"sol.instructions::set_signature_threshold.2"(i8* %0, i8* %1), !dbg !801
  ret i8* %0, !dbg !799
}

define i8* @"lib::send_message.2"(i8* %0, i8* %1) !dbg !802 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"Context<SendMessageContext>", i64 0, i64 0)), !dbg !803
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @SendMessageParams, i64 0, i64 0)), !dbg !803
  %5 = call i8* @"sol.instructions::send_message.2"(i8* %0, i8* %1), !dbg !805
  ret i8* %0, !dbg !803
}

define i8* @"lib::send_message_with_caller.2"(i8* %0, i8* %1) !dbg !806 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"Context<SendMessageContext>", i64 0, i64 0)), !dbg !807
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @SendMessageWithCallerParams, i64 0, i64 0)), !dbg !807
  %5 = call i8* @"sol.instructions::send_message_with_caller.2"(i8* %0, i8* %1), !dbg !809
  ret i8* %0, !dbg !807
}

define i8* @"lib::replace_message.2"(i8* %0, i8* %1) !dbg !810 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"Context<ReplaceMessageContext>", i64 0, i64 0)), !dbg !811
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @ReplaceMessageParams, i64 0, i64 0)), !dbg !811
  %5 = call i8* @"sol.instructions::replace_message.2"(i8* %0, i8* %1), !dbg !813
  ret i8* %0, !dbg !811
}

define i8* @"lib::receive_message.2"(i8* %0, i8* %1) !dbg !814 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @"Context<'_,'_,'_,'info,ReceiveMessageContext<'info>>", i64 0, i64 0)), !dbg !815
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @ReceiveMessageParams, i64 0, i64 0)), !dbg !815
  %5 = call i8* @"sol.instructions::receive_message.2"(i8* %0, i8* %1), !dbg !817
  ret i8* %0, !dbg !815
}

define i8* @"lib::reclaim_event_account.2"(i8* %0, i8* %1) !dbg !818 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"Context<ReclaimEventAccountContext>", i64 0, i64 0)), !dbg !819
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @ReclaimEventAccountParams, i64 0, i64 0)), !dbg !819
  %5 = call i8* @"sol.instructions::reclaim_event_account.2"(i8* %0, i8* %1), !dbg !821
  ret i8* %0, !dbg !819
}

define i8* @"lib::get_nonce_pda.2"(i8* %0, i8* %1) !dbg !822 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"Context<GetNoncePDAContext>", i64 0, i64 0)), !dbg !823
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @GetNoncePDAParams, i64 0, i64 0)), !dbg !823
  %5 = call i8* @"sol.instructions::get_nonce_pda.2"(i8* %0, i8* %1), !dbg !825
  ret i8* %0, !dbg !823
}

define i8* @"lib::is_nonce_used.2"(i8* %0, i8* %1) !dbg !826 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctx, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"Context<IsNonceUsedContext>", i64 0, i64 0)), !dbg !827
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @params, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @IsNonceUsedParams, i64 0, i64 0)), !dbg !827
  %5 = call i8* @"sol.instructions::is_nonce_used.2"(i8* %0, i8* %1), !dbg !829
  ret i8* %0, !dbg !827
}

define i8* @sol.model.anchor.program.message_transmitter(i8* %0) !dbg !830 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !831
  %3 = call i8* @sol.initialize.2(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"ctx:Context<InitializeContext>", i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"params:InitializeParams", i64 0, i64 0)), !dbg !833
  %4 = call i8* @sol.transfer_ownership.2(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @"ctx:Context<TransferOwnershipContext>", i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"params:TransferOwnershipParams", i64 0, i64 0)), !dbg !834
  %5 = call i8* @sol.accept_ownership.2(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"ctx:Context<AcceptOwnershipContext>", i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @"params:AcceptOwnershipParams", i64 0, i64 0)), !dbg !835
  %6 = call i8* @sol.update_pauser.2(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @"ctx:Context<UpdatePauserContext>", i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @"params:UpdatePauserParams", i64 0, i64 0)), !dbg !836
  %7 = call i8* @sol.update_attester_manager.2(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @"ctx:Context<UpdateAttesterManagerContext>", i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @"params:UpdateAttesterManagerParams", i64 0, i64 0)), !dbg !837
  %8 = call i8* @sol.pause.2(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @"ctx:Context<PauseContext>", i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"params:PauseParams", i64 0, i64 0)), !dbg !838
  %9 = call i8* @sol.unpause.2(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"ctx:Context<UnpauseContext>", i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"params:UnpauseParams", i64 0, i64 0)), !dbg !839
  %10 = call i8* @sol.set_max_message_body_size.2(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @"ctx:Context<SetMaxMessageBodySizeContext>", i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @"params:SetMaxMessageBodySizeParams", i64 0, i64 0)), !dbg !840
  %11 = call i8* @sol.enable_attester.2(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @"ctx:Context<EnableAttesterContext>", i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"params:EnableAttesterParams", i64 0, i64 0)), !dbg !841
  %12 = call i8* @sol.disable_attester.2(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"ctx:Context<DisableAttesterContext>", i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @"params:DisableAttesterParams", i64 0, i64 0)), !dbg !842
  %13 = call i8* @sol.set_signature_threshold.2(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @"ctx:Context<SetSignatureThresholdContext>", i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @"params:SetSignatureThresholdParams", i64 0, i64 0)), !dbg !843
  %14 = call i8* @sol.send_message.2(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"ctx:Context<SendMessageContext>", i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @"params:SendMessageParams", i64 0, i64 0)), !dbg !844
  %15 = call i8* @sol.send_message_with_caller.2(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"ctx:Context<SendMessageContext>", i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @"params:SendMessageWithCallerParams", i64 0, i64 0)), !dbg !845
  %16 = call i8* @sol.replace_message.2(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @"ctx:Context<ReplaceMessageContext>", i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"params:ReplaceMessageParams", i64 0, i64 0)), !dbg !846
  %17 = call i8* @sol.receive_message.2(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @"ctx:Context<'_,'_,'_,'info,ReceiveMessageContext<'info>>", i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"params:ReceiveMessageParams", i64 0, i64 0)), !dbg !847
  %18 = call i8* @sol.reclaim_event_account.2(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @"ctx:Context<ReclaimEventAccountContext>", i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @"params:ReclaimEventAccountParams", i64 0, i64 0)), !dbg !848
  %19 = call i8* @sol.get_nonce_pda.2(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"ctx:Context<GetNoncePDAContext>", i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @"params:GetNoncePDAParams", i64 0, i64 0)), !dbg !849
  %20 = call i8* @sol.is_nonce_used.2(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"ctx:Context<IsNonceUsedContext>", i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @"params:IsNonceUsedParams", i64 0, i64 0)), !dbg !850
  ret i8* %0, !dbg !831
}

define i8* @main(i8* %0) !dbg !851 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !852
  %3 = call i8* @sol.model.anchor.program.message_transmitter(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @program_id, i64 0, i64 0)), !dbg !852
  ret i8* %0, !dbg !852
}

define i8* @sol.model.struct.anchor.MessageTransmitter(i8* %0) !dbg !854 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !856
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @owner, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Pubkey, i64 0, i64 0)), !dbg !858
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @pending_owner, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Pubkey, i64 0, i64 0)), !dbg !859
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @attester_manager, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Pubkey, i64 0, i64 0)), !dbg !860
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @pauser, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Pubkey, i64 0, i64 0)), !dbg !861
  %7 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @paused, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @bool, i64 0, i64 0)), !dbg !862
  %8 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @local_domain, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u32, i64 0, i64 0)), !dbg !863
  %9 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @version, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u32, i64 0, i64 0)), !dbg !864
  %10 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @signature_threshold, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u32, i64 0, i64 0)), !dbg !865
  %11 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @enabled_attesters, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"Vec<Pubkey>", i64 0, i64 0)), !dbg !866
  %12 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @max_message_body_size, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u64, i64 0, i64 0)), !dbg !867
  %13 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @next_available_nonce, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u64, i64 0, i64 0)), !dbg !868
  ret i8* %0, !dbg !856
}

define i8* @sol.model.struct.MessageTransmitter(i8* %0) !dbg !869 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !870
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @owner, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Pubkey, i64 0, i64 0)), !dbg !872
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @pending_owner, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Pubkey, i64 0, i64 0)), !dbg !873
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @attester_manager, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Pubkey, i64 0, i64 0)), !dbg !874
  %6 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @pauser, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Pubkey, i64 0, i64 0)), !dbg !875
  %7 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @paused, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @bool, i64 0, i64 0)), !dbg !876
  %8 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @local_domain, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u32, i64 0, i64 0)), !dbg !877
  %9 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @version, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u32, i64 0, i64 0)), !dbg !878
  %10 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @signature_threshold, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u32, i64 0, i64 0)), !dbg !879
  %11 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @enabled_attesters, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"Vec<Pubkey>", i64 0, i64 0)), !dbg !880
  %12 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @max_message_body_size, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u64, i64 0, i64 0)), !dbg !881
  %13 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @next_available_nonce, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u64, i64 0, i64 0)), !dbg !882
  ret i8* %0, !dbg !870
}

define i8* @sol.model.struct.anchor.UsedNonces(i8* %0) !dbg !883 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !884
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @remote_domain, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u32, i64 0, i64 0)), !dbg !886
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @first_nonce, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u64, i64 0, i64 0)), !dbg !887
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @used_nonces, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"[u64;100]", i64 0, i64 0)), !dbg !888
  ret i8* %0, !dbg !884
}

define i8* @sol.model.struct.UsedNonces(i8* %0) !dbg !889 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !890
  %3 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @remote_domain, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u32, i64 0, i64 0)), !dbg !892
  %4 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @first_nonce, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u64, i64 0, i64 0)), !dbg !893
  %5 = call i8* @sol.model.struct.field(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @used_nonces, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"[u64;100]", i64 0, i64 0)), !dbg !894
  ret i8* %0, !dbg !890
}

define i8* @"state::MessageTransmitter::validate.1"(i8* %0) !dbg !895 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0)), !dbg !896
  %3 = call i8* @"sol.Pubkey::default.0"(), !dbg !898
  %4 = call i8* @"sol.!="(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @self.owner, i64 0, i64 0), i8* %3), !dbg !899
  %5 = call i8* @"sol.Pubkey::default.0"(), !dbg !900
  %6 = call i8* @"sol.!="(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @self.attester_manager, i64 0, i64 0), i8* %5), !dbg !901
  %7 = call i8* @"sol.&&"(i8* %4, i8* %6), !dbg !899
  %8 = call i8* @"sol.Pubkey::default.0"(), !dbg !902
  %9 = call i8* @"sol.!="(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @self.pauser, i64 0, i64 0), i8* %8), !dbg !903
  %10 = call i8* @"sol.&&"(i8* %7, i8* %9), !dbg !899
  %11 = call i8* @"sol.!="(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @self.signature_threshold, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"0", i64 0, i64 0)), !dbg !904
  %12 = call i8* @"sol.&&"(i8* %10, i8* %11), !dbg !899
  %13 = call i8* @sol.typecast(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @self.signature_threshold, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @usize, i64 0, i64 0)), !dbg !905
  %14 = call i8* @sol.len.1(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @self.enabled_attesters, i64 0, i64 0)), !dbg !906
  %15 = call i8* @"sol.<="(i8* %13, i8* %14), !dbg !905
  %16 = call i8* @"sol.&&"(i8* %12, i8* %15), !dbg !899
  %17 = call i8* @sol.is_empty.1(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @self.enabled_attesters, i64 0, i64 0)), !dbg !907
  %18 = call i8* @"sol.!"(i8* %17), !dbg !908
  %19 = call i8* @"sol.&&"(i8* %16, i8* %18), !dbg !899
  %20 = call i8* @"sol.>"(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @self.next_available_nonce, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"0", i64 0, i64 0)), !dbg !909
  %21 = call i8* @"sol.&&"(i8* %19, i8* %20), !dbg !899
  ret i8* %0, !dbg !896
}

define i8* @"state::MessageTransmitter::verify_attestation_signatures.anon.2"(i8* %0) !dbg !910 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !911
  %3 = call i8* @"sol.model.macro.err.!1"(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @"(MessageTransmitterError::InvalidSignatureOrderOrDupe)", i64 0, i64 0)), !dbg !913
  %4 = call i8* @sol.return.1(i8* %3), !dbg !914
  ret i8* %0, !dbg !911
}

define i8* @"state::MessageTransmitter::verify_attestation_signatures.anon.1"(i8* %0) !dbg !915 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !916
  %3 = call i8* @sol.as_slice.1(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @attestation, i64 0, i64 0)), !dbg !918
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @signature, i64 0, i64 0), i8* %3), !dbg !919
  %4 = call i8* @sol.as_slice.1(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @message_hash, i64 0, i64 0)), !dbg !920
  %5 = call i8* @"sol.MessageTransmitter::recover_attester.2"(i8* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @signature, i64 0, i64 0)), !dbg !921
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @recovered_attester, i64 0, i64 0), i8* %5), !dbg !922
  %6 = call i8* @"sol.<="(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @recovered_attester, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @last_attester, i64 0, i64 0)), !dbg !923
  %7 = call i8* @sol.if(i8* %6), !dbg !924
  %8 = call i8* @"sol.state::MessageTransmitter::verify_attestation_signatures.anon.2"(i8* %7), !dbg !925
  %9 = call i8* @sol.ifTrue.anon.(i8* %8), !dbg !925
  %10 = call i8* @"sol.require.!2"(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @"self.is_enabled_attester(&recovered_attester)", i64 0, i64 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @"MessageTransmitterError::InvalidAttesterSignature", i64 0, i64 0)), !dbg !926
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @last_attester, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @recovered_attester, i64 0, i64 0)), !dbg !927
  ret i8* %0, !dbg !916
}

define i8* @"state::MessageTransmitter::verify_attestation_signatures.3"(i8* %0, i8* %1, i8* %2) !dbg !928 {
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0)), !dbg !929
  %5 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @message_hash, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&Hash", i64 0, i64 0)), !dbg !929
  %6 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @attestation, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"&Vec<u8>", i64 0, i64 0)), !dbg !929
  %7 = call i8* @"sol.require_eq.!3"(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"attestation.len()", i64 0, i64 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @"utils::checked_mul(Self::ATTESTATION_SIGNATURE_LENGTH,self.signature_thresholdasusize)?", i64 0, i64 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @"MessageTransmitterError::InvalidAttestationLength", i64 0, i64 0)), !dbg !931
  %8 = call i8* @"sol.Pubkey::default.0"(), !dbg !932
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @last_attester, i64 0, i64 0), i8* %8), !dbg !933
  %9 = call i8* @sol.model.loop.for.1(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @"state::MessageTransmitter::verify_attestation_signatures.anon.1.1", i64 0, i64 0)), !dbg !934
  %10 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"()", i64 0, i64 0)), !dbg !935
  ret i8* %0, !dbg !929
}

define i8* @"state::MessageTransmitter::is_enabled_attester.2"(i8* %0, i8* %1) !dbg !936 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0)), !dbg !937
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @attester, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"&Pubkey", i64 0, i64 0)), !dbg !937
  %5 = call i8* @sol.contains.2(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @self.enabled_attesters, i64 0, i64 0), i8* %1), !dbg !939
  ret i8* %0, !dbg !937
}

define i8* @"state::MessageTransmitter::recover_attester.anon.1"(i8* %0) !dbg !940 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !941
  ret i8* %0, !dbg !941
}

define i8* @"state::MessageTransmitter::recover_attester.2"(i8* %0, i8* %1) !dbg !943 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @message_hash, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&[u8]", i64 0, i64 0)), !dbg !944
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @attestation_signature, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&[u8]", i64 0, i64 0)), !dbg !944
  %5 = call i8* @"sol.require_eq.!2"(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"message_hash.len()", i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @"32,MessageTransmitterError::InvalidMessageHash", i64 0, i64 0)), !dbg !946
  %6 = call i8* @"sol.require_eq.!2"(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"attestation_signature.len()", i64 0, i64 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @"65,MessageTransmitterError::InvalidAttesterSignature", i64 0, i64 0)), !dbg !947
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @recovery_id, i64 0, i64 0), i8* %1), !dbg !948
  %7 = call i8* @"sol.require.!2"(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @"(27..=30).contains(&recovery_id)", i64 0, i64 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @"MessageTransmitterError::InvalidSignatureRecoveryId", i64 0, i64 0)), !dbg !949
  %8 = call i8* @"sol.EVMSignature::parse_standard_slice.1"(i8* %1), !dbg !950
  %9 = call i8* @sol.map_err.2(i8* %8, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @"MessageTransmitterError::InvalidAttesterSignature", i64 0, i64 0)), !dbg !951
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @signature, i64 0, i64 0), i8* %9), !dbg !952
  %10 = call i8* @"sol.require.!2"(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @"!signature.s.is_high()", i64 0, i64 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @"MessageTransmitterError::InvalidSignatureSValue", i64 0, i64 0)), !dbg !953
  %11 = call i8* @sol.-(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @recovery_id, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"27", i64 0, i64 0)), !dbg !954
  %12 = call i8* @sol.secp256k1_recover.3(i8* %0, i8* %11, i8* %1), !dbg !955
  %13 = call i8* @"sol.state::MessageTransmitter::recover_attester.anon.1"(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @"MessageTransmitterError::InvalidAttesterSignature", i64 0, i64 0)), !dbg !956
  %14 = call i8* @sol.ifTrue.anon.(i8* %13), !dbg !956
  %15 = call i8* @sol.match.3(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @"MessageTransmitterError::InvalidMessageHash", i64 0, i64 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @"MessageTransmitterError::InvalidSignatureRecoveryId", i64 0, i64 0), i8* %14), !dbg !957
  %16 = call i8* @sol.map_err.2(i8* %12, i8* %15), !dbg !958
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @pubkey, i64 0, i64 0), i8* %16), !dbg !959
  %17 = call i8* @"sol.Hasher::default.0"(), !dbg !960
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @hasher, i64 0, i64 0), i8* %17), !dbg !961
  %18 = call i8* @sol.to_bytes.1(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @pubkey, i64 0, i64 0)), !dbg !962
  %19 = call i8* @sol.as_slice.1(i8* %18), !dbg !963
  %20 = call i8* @sol.hash.2(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @hasher, i64 0, i64 0), i8* %19), !dbg !964
  %21 = call i8* @sol.result.1(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @hasher, i64 0, i64 0)), !dbg !965
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @address, i64 0, i64 0), i8* %21), !dbg !966
  %22 = call i8* @sol.iter_mut.1(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @address, i64 0, i64 0)), !dbg !967
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"*x", i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"0", i64 0, i64 0)), !dbg !968
  %23 = call i8* @sol.for_each.2(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"*x", i64 0, i64 0)), !dbg !969
  %24 = call i8* @"sol.Pubkey::new_from_array.1"(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @address, i64 0, i64 0)), !dbg !970
  %25 = call i8* @sol.Ok.1(i8* %24), !dbg !971
  ret i8* %0, !dbg !944
}

define i8* @"state::UsedNonces::first_nonce.anon.1"(i8* %0) !dbg !972 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !973
  %3 = call i8* @"sol.model.macro.err.!1"(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @"(MessageTransmitterError::InvalidNonce)", i64 0, i64 0)), !dbg !975
  %4 = call i8* @sol.return.1(i8* %3), !dbg !976
  ret i8* %0, !dbg !973
}

define i8* @"state::UsedNonces::first_nonce.1"(i8* %0) !dbg !977 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @nonce, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u64, i64 0, i64 0)), !dbg !978
  %3 = call i8* @"sol.=="(i8* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"0", i64 0, i64 0)), !dbg !980
  %4 = call i8* @sol.if(i8* %3), !dbg !981
  %5 = call i8* @"sol.state::UsedNonces::first_nonce.anon.1"(i8* %4), !dbg !982
  %6 = call i8* @sol.ifTrue.anon.(i8* %5), !dbg !982
  %7 = call i8* @"sol.utils::checked_sub.2"(i8* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"1", i64 0, i64 0)), !dbg !983
  %8 = call i8* @sol.typecast(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"Self::MAX_NONCES", i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u64, i64 0, i64 0)), !dbg !984
  %9 = call i8* @"sol.utils::checked_div.2"(i8* %7, i8* %8), !dbg !985
  %10 = call i8* @sol.typecast(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"Self::MAX_NONCES", i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u64, i64 0, i64 0)), !dbg !986
  %11 = call i8* @"sol.utils::checked_mul.2"(i8* %9, i8* %10), !dbg !987
  %12 = call i8* @"sol.utils::checked_add.2"(i8* %11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"1", i64 0, i64 0)), !dbg !988
  ret i8* %0, !dbg !978
}

define i8* @"state::UsedNonces::use_nonce.2"(i8* %0, i8* %1) !dbg !989 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"&mutself", i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"&mutself", i64 0, i64 0)), !dbg !990
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @nonce, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u64, i64 0, i64 0)), !dbg !990
  %5 = call i8* @sol.get_entry_bit.2(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @self, i64 0, i64 0), i8* %1), !dbg !992
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"(entry,bit)", i64 0, i64 0), i8* %5), !dbg !993
  %6 = call i8* @"sol.require.!2"(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"self.used_nonces[entry]&bit==0", i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @"MessageTransmitterError::NonceAlreadyUsed", i64 0, i64 0)), !dbg !994
  %7 = call i8* @"sol.|="(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @self.used_nonces, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @bit, i64 0, i64 0)), !dbg !995
  %8 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"()", i64 0, i64 0)), !dbg !996
  ret i8* %0, !dbg !990
}

define i8* @"state::UsedNonces::is_nonce_used.2"(i8* %0, i8* %1) !dbg !997 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0)), !dbg !998
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @nonce, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u64, i64 0, i64 0)), !dbg !998
  %5 = call i8* @sol.get_entry_bit.2(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @self, i64 0, i64 0), i8* %1), !dbg !1000
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"(entry,bit)", i64 0, i64 0), i8* %5), !dbg !1001
  %6 = call i8* @"sol.&"(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @self.used_nonces, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @bit, i64 0, i64 0)), !dbg !1002
  %7 = call i8* @"sol.!="(i8* %6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"0", i64 0, i64 0)), !dbg !1002
  %8 = call i8* @sol.Ok.1(i8* %7), !dbg !1003
  ret i8* %0, !dbg !998
}

define i8* @"state::UsedNonces::get_entry_bit.2"(i8* %0, i8* %1) !dbg !1004 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"&self", i64 0, i64 0)), !dbg !1005
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @nonce, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u64, i64 0, i64 0)), !dbg !1005
  %5 = call i8* @"sol.require.!2"(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @"nonce>=self.first_nonce&&nonce<utils::checked_add(self.first_nonce,Self::MAX_NONCESasu64)?", i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @"MessageTransmitterError::InvalidNonce", i64 0, i64 0)), !dbg !1007
  %6 = call i8* @"sol.utils::checked_sub.2"(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @self.first_nonce, i64 0, i64 0)), !dbg !1008
  %7 = call i8* @sol.typecast(i8* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @usize, i64 0, i64 0)), !dbg !1008
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @position, i64 0, i64 0), i8* %7), !dbg !1009
  %8 = call i8* @"sol.utils::checked_div.2"(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @position, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"64", i64 0, i64 0)), !dbg !1010
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @entry, i64 0, i64 0), i8* %8), !dbg !1011
  %9 = call i8* @sol.typecast(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @position, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @u64, i64 0, i64 0)), !dbg !1012
  %10 = call i8* @"sol.%"(i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"64", i64 0, i64 0)), !dbg !1012
  %11 = call i8* @"sol.<.1"(i8* %10), !dbg !1013
  %12 = call i8* @"sol.<"(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"1", i64 0, i64 0), i8* %11), !dbg !1014
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @bit, i64 0, i64 0), i8* %12), !dbg !1015
  %13 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"entry,bit", i64 0, i64 0)), !dbg !1016
  ret i8* %0, !dbg !1005
}

define i8* @"utils::validate_upgrade_authority.anon.3"(i8* %0) !dbg !1017 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1019
  %3 = call i8* @"sol.require_keys_eq.!2"(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @current_upgrade_authority, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @"expected_upgrade_authority,ErrorCode::ConstraintOwner", i64 0, i64 0)), !dbg !1021
  ret i8* %0, !dbg !1019
}

define i8* @"utils::validate_upgrade_authority.anon.2"(i8* %0) !dbg !1022 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1023
  %3 = call i8* @"sol.Pubkey::default.0"(), !dbg !1025
  %4 = call i8* @"sol.!="(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @current_upgrade_authority, i64 0, i64 0), i8* %3), !dbg !1026
  %5 = call i8* @sol.if(i8* %4), !dbg !1027
  %6 = call i8* @"sol.utils::validate_upgrade_authority.anon.3"(i8* %5), !dbg !1028
  %7 = call i8* @sol.ifTrue.anon.(i8* %6), !dbg !1028
  ret i8* %0, !dbg !1023
}

define i8* @"utils::validate_upgrade_authority.anon.1"(i8* %0) !dbg !1029 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1030
  %3 = call i8* @"sol.require_keys_eq.!3"(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @programdata_address, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"program_data.key()", i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @"ErrorCode::InvalidProgramExecutable", i64 0, i64 0)), !dbg !1032
  %4 = call i8* @"sol.Account::try_from.1"(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @program_data, i64 0, i64 0)), !dbg !1033
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @program_data, i64 0, i64 0), i8* %4), !dbg !1034
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @program_data.upgrade_authority_address, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @program_data.upgrade_authority_address, i64 0, i64 0)), !dbg !1035
  %5 = call i8* @"sol.utils::validate_upgrade_authority.anon.2"(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @program_data.upgrade_authority_address, i64 0, i64 0)), !dbg !1036
  %6 = call i8* @sol.ifTrue.anon.(i8* %5), !dbg !1036
  ret i8* %0, !dbg !1030
}

define i8* @"utils::validate_upgrade_authority.3"(i8* %0, i8* %1, i8* %2) !dbg !1037 {
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @expected_upgrade_authority, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Pubkey, i64 0, i64 0)), !dbg !1038
  %5 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @program_data, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"&AccountInfo", i64 0, i64 0)), !dbg !1038
  %6 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @program, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"&AccountInfo", i64 0, i64 0)), !dbg !1038
  %7 = call i8* @"sol.Program::try_from.1"(i8* %2), !dbg !1040
  call void @sol.model.opaqueAssign(i8* %2, i8* %7), !dbg !1041
  %8 = call i8* @sol.programdata_address.1(i8* %2), !dbg !1042
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"program.programdata_address()?", i64 0, i64 0), i8* %8), !dbg !1043
  %9 = call i8* @"sol.utils::validate_upgrade_authority.anon.1"(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"program.programdata_address()?", i64 0, i64 0)), !dbg !1044
  %10 = call i8* @sol.ifTrue.anon.(i8* %9), !dbg !1044
  %11 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"()", i64 0, i64 0)), !dbg !1045
  ret i8* %0, !dbg !1038
}

define i8* @"utils::checked_add.anon.1"(i8* %0) !dbg !1046 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1047
  %3 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @res, i64 0, i64 0)), !dbg !1049
  ret i8* %0, !dbg !1047
}

define i8* @"utils::checked_add.anon.2"(i8* %0) !dbg !1050 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1051
  %3 = call i8* @"sol.msg.!2"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @"\22Error: Overflow in {} + {}\22", i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"arg1,arg2", i64 0, i64 0)), !dbg !1053
  %4 = call i8* @"sol.model.macro.err.!1"(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @"(MathError::MathOverflow)", i64 0, i64 0)), !dbg !1054
  ret i8* %0, !dbg !1051
}

define i8* @"utils::checked_add.2"(i8* %0, i8* %1) !dbg !1055 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @arg1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @T, i64 0, i64 0)), !dbg !1056
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @arg2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @T, i64 0, i64 0)), !dbg !1056
  %5 = call i8* @sol.checked_add.2(i8* %0, i8* %1), !dbg !1058
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"arg1.checked_add(&arg2)", i64 0, i64 0), i8* %5), !dbg !1059
  %6 = call i8* @"sol.utils::checked_add.anon.1"(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"arg1.checked_add(&arg2)", i64 0, i64 0)), !dbg !1060
  %7 = call i8* @sol.ifTrue.anon.(i8* %6), !dbg !1060
  %8 = call i8* @"sol.utils::checked_add.anon.2"(i8* %7), !dbg !1061
  %9 = call i8* @sol.ifFalse.anon.(i8* %8), !dbg !1061
  ret i8* %0, !dbg !1056
}

define i8* @"utils::checked_sub.anon.1"(i8* %0) !dbg !1062 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1063
  %3 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @res, i64 0, i64 0)), !dbg !1065
  ret i8* %0, !dbg !1063
}

define i8* @"utils::checked_sub.anon.2"(i8* %0) !dbg !1066 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1067
  %3 = call i8* @"sol.msg.!2"(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @"\22Error: Underflow in {} - {}\22", i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"arg1,arg2", i64 0, i64 0)), !dbg !1069
  %4 = call i8* @"sol.model.macro.err.!1"(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"(MathError::MathUnderflow)", i64 0, i64 0)), !dbg !1070
  ret i8* %0, !dbg !1067
}

define i8* @"utils::checked_sub.2"(i8* %0, i8* %1) !dbg !1071 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @arg1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @T, i64 0, i64 0)), !dbg !1072
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @arg2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @T, i64 0, i64 0)), !dbg !1072
  %5 = call i8* @sol.checked_sub.2(i8* %0, i8* %1), !dbg !1074
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"arg1.checked_sub(&arg2)", i64 0, i64 0), i8* %5), !dbg !1075
  %6 = call i8* @"sol.utils::checked_sub.anon.1"(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"arg1.checked_sub(&arg2)", i64 0, i64 0)), !dbg !1076
  %7 = call i8* @sol.ifTrue.anon.(i8* %6), !dbg !1076
  %8 = call i8* @"sol.utils::checked_sub.anon.2"(i8* %7), !dbg !1077
  %9 = call i8* @sol.ifFalse.anon.(i8* %8), !dbg !1077
  ret i8* %0, !dbg !1072
}

define i8* @"utils::checked_div.anon.1"(i8* %0) !dbg !1078 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1079
  %3 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @res, i64 0, i64 0)), !dbg !1081
  ret i8* %0, !dbg !1079
}

define i8* @"utils::checked_div.anon.2"(i8* %0) !dbg !1082 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1083
  %3 = call i8* @"sol.msg.!2"(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @"\22Error: Error in {} / {}\22", i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"arg1,arg2", i64 0, i64 0)), !dbg !1085
  %4 = call i8* @"sol.model.macro.err.!1"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @"(MathError::ErrorInDivision)", i64 0, i64 0)), !dbg !1086
  ret i8* %0, !dbg !1083
}

define i8* @"utils::checked_div.2"(i8* %0, i8* %1) !dbg !1087 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @arg1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @T, i64 0, i64 0)), !dbg !1088
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @arg2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @T, i64 0, i64 0)), !dbg !1088
  %5 = call i8* @sol.checked_div.2(i8* %0, i8* %1), !dbg !1090
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"arg1.checked_div(&arg2)", i64 0, i64 0), i8* %5), !dbg !1091
  %6 = call i8* @"sol.utils::checked_div.anon.1"(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"arg1.checked_div(&arg2)", i64 0, i64 0)), !dbg !1092
  %7 = call i8* @sol.ifTrue.anon.(i8* %6), !dbg !1092
  %8 = call i8* @"sol.utils::checked_div.anon.2"(i8* %7), !dbg !1093
  %9 = call i8* @sol.ifFalse.anon.(i8* %8), !dbg !1093
  ret i8* %0, !dbg !1088
}

define i8* @"utils::checked_mul.anon.1"(i8* %0) !dbg !1094 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1095
  %3 = call i8* @sol.Ok.1(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @res, i64 0, i64 0)), !dbg !1097
  ret i8* %0, !dbg !1095
}

define i8* @"utils::checked_mul.anon.2"(i8* %0) !dbg !1098 {
  %2 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @parser.error, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"*i8", i64 0, i64 0)), !dbg !1099
  %3 = call i8* @"sol.msg.!2"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @"\22Error: Overflow in {} * {}\22", i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"arg1,arg2", i64 0, i64 0)), !dbg !1101
  %4 = call i8* @"sol.model.macro.err.!1"(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @"(MathError::MathOverflow)", i64 0, i64 0)), !dbg !1102
  ret i8* %0, !dbg !1099
}

define i8* @"utils::checked_mul.2"(i8* %0, i8* %1) !dbg !1103 {
  %3 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @arg1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @T, i64 0, i64 0)), !dbg !1104
  %4 = call i8* @sol.model.funcArg(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @arg2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @T, i64 0, i64 0)), !dbg !1104
  %5 = call i8* @sol.checked_mul.2(i8* %0, i8* %1), !dbg !1106
  call void @sol.model.opaqueAssign(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"arg1.checked_mul(&arg2)", i64 0, i64 0), i8* %5), !dbg !1107
  %6 = call i8* @"sol.utils::checked_mul.anon.1"(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"arg1.checked_mul(&arg2)", i64 0, i64 0)), !dbg !1108
  %7 = call i8* @sol.ifTrue.anon.(i8* %6), !dbg !1108
  %8 = call i8* @"sol.utils::checked_mul.anon.2"(i8* %7), !dbg !1109
  %9 = call i8* @sol.ifFalse.anon.(i8* %8), !dbg !1109
  ret i8* %0, !dbg !1104
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "sol.model.cargo.toml", linkageName: "sol.model.cargo.toml", scope: null, file: !4, type: !5, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!4 = !DIFile(filename: "/solana-cctp-contracts/programs/message-transmitter/Xargo.toml", directory: "")
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
!18 = distinct !DISubprogram(name: "sol.model.struct.Message", linkageName: "sol.model.struct.Message", scope: null, file: !19, line: 30, type: !5, scopeLine: 30, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!19 = !DIFile(filename: "/solana-cctp-contracts/programs/message-transmitter/src/message.rs", directory: "")
!20 = !DILocation(line: 30, column: 4, scope: !21)
!21 = !DILexicalBlockFile(scope: !18, file: !19, discriminator: 0)
!22 = !DILocation(line: 31, column: 4, scope: !21)
!23 = distinct !DISubprogram(name: "message::Message::new.2", linkageName: "message::Message::new.2", scope: null, file: !19, line: 46, type: !5, scopeLine: 46, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!24 = !DILocation(line: 46, column: 8, scope: !25)
!25 = !DILexicalBlockFile(scope: !23, file: !19, discriminator: 0)
!26 = !DILocation(line: 47, column: 8, scope: !25)
!27 = !DILocation(line: 53, column: 12, scope: !25)
!28 = !DILocation(line: 52, column: 22, scope: !25)
!29 = !DILocation(line: 52, column: 8, scope: !25)
!30 = !DILocation(line: 55, column: 8, scope: !25)
!31 = !DILocation(line: 60, column: 8, scope: !25)
!32 = distinct !DISubprogram(name: "message::Message::serialized_len.1", linkageName: "message::Message::serialized_len.1", scope: null, file: !19, line: 63, type: !5, scopeLine: 63, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!33 = !DILocation(line: 63, column: 8, scope: !34)
!34 = !DILexicalBlockFile(scope: !32, file: !19, discriminator: 0)
!35 = !DILocation(line: 64, column: 8, scope: !34)
!36 = distinct !DISubprogram(name: "message::Message::format_message.anon.1", linkageName: "message::Message::format_message.anon.1", scope: null, file: !19, line: 93, type: !5, scopeLine: 93, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!37 = !DILocation(line: 93, column: 36, scope: !38)
!38 = !DILexicalBlockFile(scope: !36, file: !19, discriminator: 0)
!39 = !DILocation(line: 94, column: 76, scope: !38)
!40 = !DILocation(line: 94, column: 47, scope: !38)
!41 = distinct !DISubprogram(name: "message::Message::format_message.8", linkageName: "message::Message::format_message.8", scope: null, file: !19, line: 69, type: !5, scopeLine: 69, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!42 = !DILocation(line: 69, column: 8, scope: !43)
!43 = !DILexicalBlockFile(scope: !41, file: !19, discriminator: 0)
!44 = !DILocation(line: 79, column: 25, scope: !43)
!45 = !DILocation(line: 79, column: 8, scope: !43)
!46 = !DILocation(line: 82, column: 38, scope: !43)
!47 = !DILocation(line: 82, column: 13, scope: !43)
!48 = !DILocation(line: 84, column: 43, scope: !43)
!49 = !DILocation(line: 84, column: 13, scope: !43)
!50 = !DILocation(line: 86, column: 49, scope: !43)
!51 = !DILocation(line: 86, column: 13, scope: !43)
!52 = !DILocation(line: 87, column: 77, scope: !43)
!53 = !DILocation(line: 87, column: 54, scope: !43)
!54 = !DILocation(line: 88, column: 81, scope: !43)
!55 = !DILocation(line: 88, column: 58, scope: !43)
!56 = !DILocation(line: 90, column: 39, scope: !43)
!57 = !DILocation(line: 90, column: 13, scope: !43)
!58 = !DILocation(line: 92, column: 48, scope: !43)
!59 = !DILocation(line: 92, column: 13, scope: !43)
!60 = !DILocation(line: 93, column: 25, scope: !43)
!61 = !DILocation(line: 93, column: 11, scope: !43)
!62 = !DILocation(line: 93, column: 8, scope: !43)
!63 = !DILocation(line: 93, column: 36, scope: !43)
!64 = !DILocation(line: 97, column: 8, scope: !43)
!65 = distinct !DISubprogram(name: "message::Message::hash.1", linkageName: "message::Message::hash.1", scope: null, file: !19, line: 101, type: !5, scopeLine: 101, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!66 = !DILocation(line: 101, column: 8, scope: !67)
!67 = !DILexicalBlockFile(scope: !65, file: !19, discriminator: 0)
!68 = !DILocation(line: 102, column: 25, scope: !67)
!69 = !DILocation(line: 102, column: 8, scope: !67)
!70 = !DILocation(line: 103, column: 15, scope: !67)
!71 = !DILocation(line: 104, column: 15, scope: !67)
!72 = distinct !DISubprogram(name: "message::Message::version.1", linkageName: "message::Message::version.1", scope: null, file: !19, line: 108, type: !5, scopeLine: 108, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!73 = !DILocation(line: 108, column: 8, scope: !74)
!74 = !DILexicalBlockFile(scope: !72, file: !19, discriminator: 0)
!75 = !DILocation(line: 109, column: 13, scope: !74)
!76 = distinct !DISubprogram(name: "message::Message::sender.1", linkageName: "message::Message::sender.1", scope: null, file: !19, line: 113, type: !5, scopeLine: 113, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!77 = !DILocation(line: 113, column: 8, scope: !78)
!78 = !DILexicalBlockFile(scope: !76, file: !19, discriminator: 0)
!79 = !DILocation(line: 114, column: 13, scope: !78)
!80 = distinct !DISubprogram(name: "message::Message::recipient.1", linkageName: "message::Message::recipient.1", scope: null, file: !19, line: 118, type: !5, scopeLine: 118, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!81 = !DILocation(line: 118, column: 8, scope: !82)
!82 = !DILexicalBlockFile(scope: !80, file: !19, discriminator: 0)
!83 = !DILocation(line: 119, column: 13, scope: !82)
!84 = distinct !DISubprogram(name: "message::Message::source_domain.1", linkageName: "message::Message::source_domain.1", scope: null, file: !19, line: 123, type: !5, scopeLine: 123, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!85 = !DILocation(line: 123, column: 8, scope: !86)
!86 = !DILexicalBlockFile(scope: !84, file: !19, discriminator: 0)
!87 = !DILocation(line: 124, column: 13, scope: !86)
!88 = distinct !DISubprogram(name: "message::Message::destination_domain.1", linkageName: "message::Message::destination_domain.1", scope: null, file: !19, line: 128, type: !5, scopeLine: 128, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!89 = !DILocation(line: 128, column: 8, scope: !90)
!90 = !DILexicalBlockFile(scope: !88, file: !19, discriminator: 0)
!91 = !DILocation(line: 129, column: 13, scope: !90)
!92 = distinct !DISubprogram(name: "message::Message::destination_caller.1", linkageName: "message::Message::destination_caller.1", scope: null, file: !19, line: 133, type: !5, scopeLine: 133, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!93 = !DILocation(line: 133, column: 8, scope: !94)
!94 = !DILexicalBlockFile(scope: !92, file: !19, discriminator: 0)
!95 = !DILocation(line: 134, column: 13, scope: !94)
!96 = distinct !DISubprogram(name: "message::Message::nonce.1", linkageName: "message::Message::nonce.1", scope: null, file: !19, line: 138, type: !5, scopeLine: 138, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!97 = !DILocation(line: 138, column: 8, scope: !98)
!98 = !DILexicalBlockFile(scope: !96, file: !19, discriminator: 0)
!99 = !DILocation(line: 139, column: 13, scope: !98)
!100 = distinct !DISubprogram(name: "message::Message::message_body.1", linkageName: "message::Message::message_body.1", scope: null, file: !19, line: 143, type: !5, scopeLine: 143, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!101 = !DILocation(line: 143, column: 8, scope: !102)
!102 = !DILexicalBlockFile(scope: !100, file: !19, discriminator: 0)
!103 = distinct !DISubprogram(name: "message::Message::read_integer.2", linkageName: "message::Message::read_integer.2", scope: null, file: !19, line: 151, type: !5, scopeLine: 151, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!104 = !DILocation(line: 151, column: 4, scope: !105)
!105 = !DILexicalBlockFile(scope: !103, file: !19, discriminator: 0)
!106 = !DILocation(line: 158, column: 17, scope: !105)
!107 = !DILocation(line: 159, column: 17, scope: !105)
!108 = !DILocation(line: 156, column: 11, scope: !105)
!109 = !DILocation(line: 156, column: 8, scope: !105)
!110 = distinct !DISubprogram(name: "message::Message::read_pubkey.2", linkageName: "message::Message::read_pubkey.2", scope: null, file: !19, line: 164, type: !5, scopeLine: 164, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!111 = !DILocation(line: 164, column: 4, scope: !112)
!112 = !DILexicalBlockFile(scope: !110, file: !19, discriminator: 0)
!113 = !DILocation(line: 165, column: 11, scope: !112)
!114 = !DILocation(line: 168, column: 9, scope: !112)
!115 = !DILocation(line: 165, column: 8, scope: !112)
!116 = distinct !DISubprogram(name: "sol.model.struct.anchor.SendMessageContext", linkageName: "sol.model.struct.anchor.SendMessageContext", scope: null, file: !117, line: 32, type: !5, scopeLine: 32, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!117 = !DIFile(filename: "/solana-cctp-contracts/programs/message-transmitter/src/instructions/send_message.rs", directory: "")
!118 = !DILocation(line: 32, column: 4, scope: !119)
!119 = !DILexicalBlockFile(scope: !116, file: !117, discriminator: 0)
!120 = !DILocation(line: 33, column: 6, scope: !119)
!121 = !DILocation(line: 34, column: 8, scope: !119)
!122 = !DILocation(line: 36, column: 6, scope: !119)
!123 = !DILocation(line: 41, column: 8, scope: !119)
!124 = !DILocation(line: 43, column: 6, scope: !119)
!125 = !DILocation(line: 44, column: 8, scope: !119)
!126 = !DILocation(line: 46, column: 6, scope: !119)
!127 = !DILocation(line: 51, column: 8, scope: !119)
!128 = !DILocation(line: 54, column: 6, scope: !119)
!129 = !DILocation(line: 57, column: 8, scope: !119)
!130 = !DILocation(line: 59, column: 8, scope: !119)
!131 = distinct !DISubprogram(name: "sol.model.struct.SendMessageParams", linkageName: "sol.model.struct.SendMessageParams", scope: null, file: !117, line: 67, type: !5, scopeLine: 67, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!132 = !DILocation(line: 67, column: 4, scope: !133)
!133 = !DILexicalBlockFile(scope: !131, file: !117, discriminator: 0)
!134 = !DILocation(line: 68, column: 8, scope: !133)
!135 = !DILocation(line: 69, column: 8, scope: !133)
!136 = !DILocation(line: 70, column: 8, scope: !133)
!137 = distinct !DISubprogram(name: "send_message::send_message.2", linkageName: "send_message::send_message.2", scope: null, file: !117, line: 74, type: !5, scopeLine: 74, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!138 = !DILocation(line: 74, column: 4, scope: !139)
!139 = !DILexicalBlockFile(scope: !137, file: !117, discriminator: 0)
!140 = !DILocation(line: 76, column: 41, scope: !139)
!141 = !DILocation(line: 77, column: 45, scope: !139)
!142 = !DILocation(line: 78, column: 39, scope: !139)
!143 = !DILocation(line: 81, column: 9, scope: !139)
!144 = !DILocation(line: 82, column: 37, scope: !139)
!145 = !DILocation(line: 75, column: 4, scope: !139)
!146 = distinct !DISubprogram(name: "send_message::send_message_helper.anon.1", linkageName: "send_message::send_message_helper.anon.1", scope: null, file: !117, line: 119, type: !5, scopeLine: 119, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!147 = !DILocation(line: 119, column: 49, scope: !148)
!148 = !DILexicalBlockFile(scope: !146, file: !117, discriminator: 0)
!149 = distinct !DISubprogram(name: "send_message::send_message_helper.anon.2", linkageName: "send_message::send_message_helper.anon.2", scope: null, file: !117, line: 121, type: !5, scopeLine: 121, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!150 = !DILocation(line: 121, column: 11, scope: !151)
!151 = !DILexicalBlockFile(scope: !149, file: !117, discriminator: 0)
!152 = !DILocation(line: 122, column: 8, scope: !151)
!153 = !DILocation(line: 124, column: 12, scope: !151)
!154 = !DILocation(line: 123, column: 8, scope: !151)
!155 = distinct !DISubprogram(name: "send_message::send_message_helper.9", linkageName: "send_message::send_message_helper.9", scope: null, file: !117, line: 90, type: !5, scopeLine: 90, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!156 = !DILocation(line: 90, column: 4, scope: !157)
!157 = !DILexicalBlockFile(scope: !155, file: !117, discriminator: 0)
!158 = !DILocation(line: 101, column: 4, scope: !157)
!159 = !DILocation(line: 106, column: 4, scope: !157)
!160 = !DILocation(line: 112, column: 4, scope: !157)
!161 = !DILocation(line: 119, column: 16, scope: !157)
!162 = !DILocation(line: 119, column: 49, scope: !157)
!163 = !DILocation(line: 121, column: 11, scope: !157)
!164 = !DILocation(line: 119, column: 4, scope: !157)
!165 = !DILocation(line: 129, column: 4, scope: !157)
!166 = !DILocation(line: 130, column: 38, scope: !157)
!167 = !DILocation(line: 130, column: 4, scope: !157)
!168 = !DILocation(line: 141, column: 4, scope: !157)
!169 = distinct !DISubprogram(name: "sol.model.struct.anchor.SetSignatureThresholdContext", linkageName: "sol.model.struct.anchor.SetSignatureThresholdContext", scope: null, file: !170, line: 32, type: !5, scopeLine: 32, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!170 = !DIFile(filename: "/solana-cctp-contracts/programs/message-transmitter/src/instructions/set_signature_threshold.rs", directory: "")
!171 = !DILocation(line: 32, column: 4, scope: !172)
!172 = !DILexicalBlockFile(scope: !169, file: !170, discriminator: 0)
!173 = !DILocation(line: 33, column: 6, scope: !172)
!174 = !DILocation(line: 34, column: 8, scope: !172)
!175 = !DILocation(line: 36, column: 6, scope: !172)
!176 = !DILocation(line: 40, column: 8, scope: !172)
!177 = distinct !DISubprogram(name: "sol.model.struct.SetSignatureThresholdParams", linkageName: "sol.model.struct.SetSignatureThresholdParams", scope: null, file: !170, line: 45, type: !5, scopeLine: 45, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!178 = !DILocation(line: 45, column: 4, scope: !179)
!179 = !DILexicalBlockFile(scope: !177, file: !170, discriminator: 0)
!180 = !DILocation(line: 46, column: 8, scope: !179)
!181 = distinct !DISubprogram(name: "set_signature_threshold::set_signature_threshold.2", linkageName: "set_signature_threshold::set_signature_threshold.2", scope: null, file: !170, line: 50, type: !5, scopeLine: 50, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!182 = !DILocation(line: 50, column: 4, scope: !183)
!183 = !DILexicalBlockFile(scope: !181, file: !170, discriminator: 0)
!184 = !DILocation(line: 54, column: 63, scope: !183)
!185 = !DILocation(line: 54, column: 4, scope: !183)
!186 = !DILocation(line: 56, column: 4, scope: !183)
!187 = !DILocation(line: 62, column: 4, scope: !183)
!188 = !DILocation(line: 68, column: 4, scope: !183)
!189 = !DILocation(line: 74, column: 4, scope: !183)
!190 = !DILocation(line: 76, column: 4, scope: !183)
!191 = !DILocation(line: 78, column: 4, scope: !183)
!192 = !DILocation(line: 83, column: 4, scope: !183)
!193 = distinct !DISubprogram(name: "sol.model.struct.anchor.UpdatePauserContext", linkageName: "sol.model.struct.anchor.UpdatePauserContext", scope: null, file: !194, line: 29, type: !5, scopeLine: 29, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!194 = !DIFile(filename: "/solana-cctp-contracts/programs/message-transmitter/src/instructions/update_pauser.rs", directory: "")
!195 = !DILocation(line: 29, column: 4, scope: !196)
!196 = !DILexicalBlockFile(scope: !193, file: !194, discriminator: 0)
!197 = !DILocation(line: 30, column: 6, scope: !196)
!198 = !DILocation(line: 31, column: 8, scope: !196)
!199 = !DILocation(line: 33, column: 6, scope: !196)
!200 = !DILocation(line: 37, column: 8, scope: !196)
!201 = distinct !DISubprogram(name: "sol.model.struct.UpdatePauserParams", linkageName: "sol.model.struct.UpdatePauserParams", scope: null, file: !194, line: 42, type: !5, scopeLine: 42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!202 = !DILocation(line: 42, column: 4, scope: !203)
!203 = !DILexicalBlockFile(scope: !201, file: !194, discriminator: 0)
!204 = !DILocation(line: 43, column: 8, scope: !203)
!205 = distinct !DISubprogram(name: "update_pauser::update_pauser.2", linkageName: "update_pauser::update_pauser.2", scope: null, file: !194, line: 47, type: !5, scopeLine: 47, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!206 = !DILocation(line: 47, column: 4, scope: !207)
!207 = !DILexicalBlockFile(scope: !205, file: !194, discriminator: 0)
!208 = !DILocation(line: 48, column: 4, scope: !207)
!209 = !DILocation(line: 53, column: 4, scope: !207)
!210 = !DILocation(line: 59, column: 4, scope: !207)
!211 = !DILocation(line: 61, column: 4, scope: !207)
!212 = !DILocation(line: 65, column: 4, scope: !207)
!213 = distinct !DISubprogram(name: "sol.model.struct.anchor.UnpauseContext", linkageName: "sol.model.struct.anchor.UnpauseContext", scope: null, file: !214, line: 29, type: !5, scopeLine: 29, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!214 = !DIFile(filename: "/solana-cctp-contracts/programs/message-transmitter/src/instructions/unpause.rs", directory: "")
!215 = !DILocation(line: 29, column: 4, scope: !216)
!216 = !DILexicalBlockFile(scope: !213, file: !214, discriminator: 0)
!217 = !DILocation(line: 30, column: 6, scope: !216)
!218 = !DILocation(line: 31, column: 8, scope: !216)
!219 = !DILocation(line: 33, column: 6, scope: !216)
!220 = !DILocation(line: 37, column: 8, scope: !216)
!221 = distinct !DISubprogram(name: "sol.model.struct.UnpauseParams", linkageName: "sol.model.struct.UnpauseParams", scope: null, file: !214, line: 42, type: !5, scopeLine: 42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!222 = !DILocation(line: 42, column: 4, scope: !223)
!223 = !DILexicalBlockFile(scope: !221, file: !214, discriminator: 0)
!224 = distinct !DISubprogram(name: "unpause::unpause.2", linkageName: "unpause::unpause.2", scope: null, file: !214, line: 45, type: !5, scopeLine: 45, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!225 = !DILocation(line: 45, column: 4, scope: !226)
!226 = !DILexicalBlockFile(scope: !224, file: !214, discriminator: 0)
!227 = !DILocation(line: 46, column: 4, scope: !226)
!228 = !DILocation(line: 51, column: 4, scope: !226)
!229 = !DILocation(line: 53, column: 4, scope: !226)
!230 = !DILocation(line: 55, column: 4, scope: !226)
!231 = distinct !DISubprogram(name: "sol.model.struct.anchor.InitializeContext", linkageName: "sol.model.struct.anchor.InitializeContext", scope: null, file: !232, line: 35, type: !5, scopeLine: 35, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!232 = !DIFile(filename: "/solana-cctp-contracts/programs/message-transmitter/src/instructions/initialize.rs", directory: "")
!233 = !DILocation(line: 35, column: 4, scope: !234)
!234 = !DILexicalBlockFile(scope: !231, file: !232, discriminator: 0)
!235 = !DILocation(line: 36, column: 6, scope: !234)
!236 = !DILocation(line: 37, column: 8, scope: !234)
!237 = !DILocation(line: 39, column: 6, scope: !234)
!238 = !DILocation(line: 40, column: 8, scope: !234)
!239 = !DILocation(line: 43, column: 6, scope: !234)
!240 = !DILocation(line: 50, column: 8, scope: !234)
!241 = !DILocation(line: 53, column: 6, scope: !234)
!242 = !DILocation(line: 54, column: 8, scope: !234)
!243 = !DILocation(line: 56, column: 8, scope: !234)
!244 = !DILocation(line: 58, column: 8, scope: !234)
!245 = distinct !DISubprogram(name: "sol.model.struct.InitializeParams", linkageName: "sol.model.struct.InitializeParams", scope: null, file: !232, line: 63, type: !5, scopeLine: 63, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!246 = !DILocation(line: 63, column: 4, scope: !247)
!247 = !DILexicalBlockFile(scope: !245, file: !232, discriminator: 0)
!248 = !DILocation(line: 64, column: 8, scope: !247)
!249 = !DILocation(line: 65, column: 8, scope: !247)
!250 = !DILocation(line: 66, column: 8, scope: !247)
!251 = !DILocation(line: 67, column: 8, scope: !247)
!252 = distinct !DISubprogram(name: "initialize::initialize.2", linkageName: "initialize::initialize.2", scope: null, file: !232, line: 71, type: !5, scopeLine: 71, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!253 = !DILocation(line: 71, column: 4, scope: !254)
!254 = !DILexicalBlockFile(scope: !252, file: !232, discriminator: 0)
!255 = !DILocation(line: 73, column: 39, scope: !254)
!256 = !DILocation(line: 76, column: 13, scope: !254)
!257 = !DILocation(line: 77, column: 50, scope: !254)
!258 = !DILocation(line: 72, column: 4, scope: !254)
!259 = !DILocation(line: 81, column: 51, scope: !254)
!260 = !DILocation(line: 81, column: 4, scope: !254)
!261 = !DILocation(line: 82, column: 63, scope: !254)
!262 = !DILocation(line: 82, column: 4, scope: !254)
!263 = !DILocation(line: 83, column: 4, scope: !254)
!264 = !DILocation(line: 84, column: 40, scope: !254)
!265 = !DILocation(line: 84, column: 4, scope: !254)
!266 = !DILocation(line: 85, column: 4, scope: !254)
!267 = !DILocation(line: 86, column: 4, scope: !254)
!268 = !DILocation(line: 87, column: 4, scope: !254)
!269 = !DILocation(line: 88, column: 4, scope: !254)
!270 = !DILocation(line: 89, column: 4, scope: !254)
!271 = !DILocation(line: 90, column: 4, scope: !254)
!272 = !DILocation(line: 91, column: 42, scope: !254)
!273 = !DILocation(line: 92, column: 4, scope: !254)
!274 = !DILocation(line: 93, column: 4, scope: !254)
!275 = !DILocation(line: 96, column: 4, scope: !254)
!276 = !DILocation(line: 101, column: 4, scope: !254)
!277 = !DILocation(line: 105, column: 4, scope: !254)
!278 = !DILocation(line: 110, column: 4, scope: !254)
!279 = distinct !DISubprogram(name: "sol.model.struct.anchor.IsNonceUsedContext", linkageName: "sol.model.struct.anchor.IsNonceUsedContext", scope: null, file: !280, line: 25, type: !5, scopeLine: 25, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!280 = !DIFile(filename: "/solana-cctp-contracts/programs/message-transmitter/src/instructions/is_nonce_used.rs", directory: "")
!281 = !DILocation(line: 25, column: 4, scope: !282)
!282 = !DILexicalBlockFile(scope: !279, file: !280, discriminator: 0)
!283 = !DILocation(line: 28, column: 6, scope: !282)
!284 = !DILocation(line: 29, column: 8, scope: !282)
!285 = distinct !DISubprogram(name: "sol.model.struct.IsNonceUsedParams", linkageName: "sol.model.struct.IsNonceUsedParams", scope: null, file: !280, line: 34, type: !5, scopeLine: 34, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!286 = !DILocation(line: 34, column: 4, scope: !287)
!287 = !DILexicalBlockFile(scope: !285, file: !280, discriminator: 0)
!288 = !DILocation(line: 35, column: 8, scope: !287)
!289 = distinct !DISubprogram(name: "is_nonce_used::is_nonce_used.anon.1", linkageName: "is_nonce_used::is_nonce_used.anon.1", scope: null, file: !280, line: 46, type: !5, scopeLine: 46, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!290 = !DILocation(line: 46, column: 56, scope: !291)
!291 = !DILexicalBlockFile(scope: !289, file: !280, discriminator: 0)
!292 = !DILocation(line: 47, column: 16, scope: !291)
!293 = distinct !DISubprogram(name: "is_nonce_used::is_nonce_used.anon.2", linkageName: "is_nonce_used::is_nonce_used.anon.2", scope: null, file: !280, line: 48, type: !5, scopeLine: 48, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!294 = !DILocation(line: 48, column: 19, scope: !295)
!295 = !DILexicalBlockFile(scope: !293, file: !280, discriminator: 0)
!296 = !DILocation(line: 49, column: 16, scope: !295)
!297 = distinct !DISubprogram(name: "is_nonce_used::is_nonce_used.anon.4", linkageName: "is_nonce_used::is_nonce_used.anon.4", scope: null, file: !280, line: 46, type: !5, scopeLine: 46, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!298 = !DILocation(line: 46, column: 56, scope: !299)
!299 = !DILexicalBlockFile(scope: !297, file: !280, discriminator: 0)
!300 = !DILocation(line: 47, column: 16, scope: !299)
!301 = distinct !DISubprogram(name: "is_nonce_used::is_nonce_used.anon.5", linkageName: "is_nonce_used::is_nonce_used.anon.5", scope: null, file: !280, line: 48, type: !5, scopeLine: 48, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!302 = !DILocation(line: 48, column: 19, scope: !303)
!303 = !DILexicalBlockFile(scope: !301, file: !280, discriminator: 0)
!304 = !DILocation(line: 49, column: 16, scope: !303)
!305 = distinct !DISubprogram(name: "is_nonce_used::is_nonce_used.anon.3", linkageName: "is_nonce_used::is_nonce_used.anon.3", scope: null, file: !280, line: 45, type: !5, scopeLine: 45, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!306 = !DILocation(line: 45, column: 20, scope: !307)
!307 = !DILexicalBlockFile(scope: !305, file: !280, discriminator: 0)
!308 = !DILocation(line: 46, column: 40, scope: !307)
!309 = !DILocation(line: 46, column: 12, scope: !307)
!310 = !DILocation(line: 46, column: 56, scope: !307)
!311 = !DILocation(line: 48, column: 19, scope: !307)
!312 = distinct !DISubprogram(name: "is_nonce_used::is_nonce_used.2", linkageName: "is_nonce_used::is_nonce_used.2", scope: null, file: !280, line: 39, type: !5, scopeLine: 39, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!313 = !DILocation(line: 39, column: 4, scope: !314)
!314 = !DILexicalBlockFile(scope: !312, file: !280, discriminator: 0)
!315 = !DILocation(line: 43, column: 24, scope: !314)
!316 = !DILocation(line: 46, column: 40, scope: !314)
!317 = !DILocation(line: 46, column: 12, scope: !314)
!318 = !DILocation(line: 46, column: 56, scope: !314)
!319 = !DILocation(line: 48, column: 19, scope: !314)
!320 = !DILocation(line: 45, column: 20, scope: !314)
!321 = !DILocation(line: 40, column: 4, scope: !314)
!322 = distinct !DISubprogram(name: "sol.model.struct.anchor.ReclaimEventAccountContext", linkageName: "sol.model.struct.anchor.ReclaimEventAccountContext", scope: null, file: !323, line: 31, type: !5, scopeLine: 31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!323 = !DIFile(filename: "/solana-cctp-contracts/programs/message-transmitter/src/instructions/reclaim_event_account.rs", directory: "")
!324 = !DILocation(line: 31, column: 4, scope: !325)
!325 = !DILexicalBlockFile(scope: !322, file: !323, discriminator: 0)
!326 = !DILocation(line: 33, column: 6, scope: !325)
!327 = !DILocation(line: 34, column: 8, scope: !325)
!328 = !DILocation(line: 36, column: 6, scope: !325)
!329 = !DILocation(line: 37, column: 8, scope: !325)
!330 = !DILocation(line: 39, column: 6, scope: !325)
!331 = !DILocation(line: 44, column: 8, scope: !325)
!332 = distinct !DISubprogram(name: "sol.model.struct.ReclaimEventAccountParams", linkageName: "sol.model.struct.ReclaimEventAccountParams", scope: null, file: !323, line: 49, type: !5, scopeLine: 49, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!333 = !DILocation(line: 49, column: 4, scope: !334)
!334 = !DILexicalBlockFile(scope: !332, file: !323, discriminator: 0)
!335 = !DILocation(line: 50, column: 8, scope: !334)
!336 = distinct !DISubprogram(name: "reclaim_event_account::reclaim_event_account.2", linkageName: "reclaim_event_account::reclaim_event_account.2", scope: null, file: !323, line: 54, type: !5, scopeLine: 54, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!337 = !DILocation(line: 54, column: 4, scope: !338)
!338 = !DILexicalBlockFile(scope: !336, file: !323, discriminator: 0)
!339 = !DILocation(line: 58, column: 63, scope: !338)
!340 = !DILocation(line: 58, column: 4, scope: !338)
!341 = !DILocation(line: 60, column: 4, scope: !338)
!342 = !DILocation(line: 65, column: 58, scope: !338)
!343 = !DILocation(line: 65, column: 4, scope: !338)
!344 = !DILocation(line: 67, column: 18, scope: !338)
!345 = !DILocation(line: 67, column: 4, scope: !338)
!346 = !DILocation(line: 69, column: 63, scope: !338)
!347 = !DILocation(line: 69, column: 24, scope: !338)
!348 = !DILocation(line: 71, column: 4, scope: !338)
!349 = !DILocation(line: 77, column: 4, scope: !338)
!350 = distinct !DISubprogram(name: "sol.model.struct.anchor.ReplaceMessageContext", linkageName: "sol.model.struct.anchor.ReplaceMessageContext", scope: null, file: !351, line: 32, type: !5, scopeLine: 32, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!351 = !DIFile(filename: "/solana-cctp-contracts/programs/message-transmitter/src/instructions/replace_message.rs", directory: "")
!352 = !DILocation(line: 32, column: 4, scope: !353)
!353 = !DILexicalBlockFile(scope: !350, file: !351, discriminator: 0)
!354 = !DILocation(line: 33, column: 6, scope: !353)
!355 = !DILocation(line: 34, column: 8, scope: !353)
!356 = !DILocation(line: 36, column: 6, scope: !353)
!357 = !DILocation(line: 41, column: 8, scope: !353)
!358 = !DILocation(line: 43, column: 6, scope: !353)
!359 = !DILocation(line: 44, column: 8, scope: !353)
!360 = !DILocation(line: 46, column: 6, scope: !353)
!361 = !DILocation(line: 51, column: 8, scope: !353)
!362 = !DILocation(line: 54, column: 6, scope: !353)
!363 = !DILocation(line: 57, column: 8, scope: !353)
!364 = !DILocation(line: 59, column: 8, scope: !353)
!365 = distinct !DISubprogram(name: "sol.model.struct.ReplaceMessageParams", linkageName: "sol.model.struct.ReplaceMessageParams", scope: null, file: !351, line: 64, type: !5, scopeLine: 64, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!366 = !DILocation(line: 64, column: 4, scope: !367)
!367 = !DILexicalBlockFile(scope: !365, file: !351, discriminator: 0)
!368 = !DILocation(line: 65, column: 8, scope: !367)
!369 = !DILocation(line: 66, column: 8, scope: !367)
!370 = !DILocation(line: 67, column: 8, scope: !367)
!371 = !DILocation(line: 68, column: 8, scope: !367)
!372 = distinct !DISubprogram(name: "replace_message::replace_message.2", linkageName: "replace_message::replace_message.2", scope: null, file: !351, line: 72, type: !5, scopeLine: 72, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!373 = !DILocation(line: 72, column: 4, scope: !374)
!374 = !DILexicalBlockFile(scope: !372, file: !351, discriminator: 0)
!375 = !DILocation(line: 76, column: 63, scope: !374)
!376 = !DILocation(line: 76, column: 4, scope: !374)
!377 = !DILocation(line: 78, column: 4, scope: !374)
!378 = !DILocation(line: 83, column: 18, scope: !374)
!379 = !DILocation(line: 83, column: 4, scope: !374)
!380 = !DILocation(line: 86, column: 48, scope: !374)
!381 = !DILocation(line: 86, column: 9, scope: !374)
!382 = !DILocation(line: 88, column: 4, scope: !374)
!383 = !DILocation(line: 94, column: 4, scope: !374)
!384 = !DILocation(line: 103, column: 45, scope: !374)
!385 = !DILocation(line: 104, column: 39, scope: !374)
!386 = !DILocation(line: 105, column: 16, scope: !374)
!387 = !DILocation(line: 106, column: 17, scope: !374)
!388 = !DILocation(line: 108, column: 37, scope: !374)
!389 = !DILocation(line: 109, column: 21, scope: !374)
!390 = !DILocation(line: 109, column: 8, scope: !374)
!391 = !DILocation(line: 101, column: 4, scope: !374)
!392 = distinct !DISubprogram(name: "sol.model.struct.anchor.UpdateAttesterManagerContext", linkageName: "sol.model.struct.anchor.UpdateAttesterManagerContext", scope: null, file: !393, line: 31, type: !5, scopeLine: 31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!393 = !DIFile(filename: "/solana-cctp-contracts/programs/message-transmitter/src/instructions/update_attester_manager.rs", directory: "")
!394 = !DILocation(line: 31, column: 4, scope: !395)
!395 = !DILexicalBlockFile(scope: !392, file: !393, discriminator: 0)
!396 = !DILocation(line: 32, column: 6, scope: !395)
!397 = !DILocation(line: 33, column: 8, scope: !395)
!398 = !DILocation(line: 35, column: 6, scope: !395)
!399 = !DILocation(line: 39, column: 8, scope: !395)
!400 = distinct !DISubprogram(name: "sol.model.struct.UpdateAttesterManagerParams", linkageName: "sol.model.struct.UpdateAttesterManagerParams", scope: null, file: !393, line: 44, type: !5, scopeLine: 44, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!401 = !DILocation(line: 44, column: 4, scope: !402)
!402 = !DILexicalBlockFile(scope: !400, file: !393, discriminator: 0)
!403 = !DILocation(line: 45, column: 8, scope: !402)
!404 = distinct !DISubprogram(name: "update_attester_manager::update_attester_manager.2", linkageName: "update_attester_manager::update_attester_manager.2", scope: null, file: !393, line: 49, type: !5, scopeLine: 49, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!405 = !DILocation(line: 49, column: 4, scope: !406)
!406 = !DILexicalBlockFile(scope: !404, file: !393, discriminator: 0)
!407 = !DILocation(line: 53, column: 4, scope: !406)
!408 = !DILocation(line: 58, column: 4, scope: !406)
!409 = !DILocation(line: 64, column: 4, scope: !406)
!410 = !DILocation(line: 66, column: 4, scope: !406)
!411 = !DILocation(line: 68, column: 4, scope: !406)
!412 = !DILocation(line: 73, column: 4, scope: !406)
!413 = distinct !DISubprogram(name: "sol.model.struct.anchor.GetNoncePDAContext", linkageName: "sol.model.struct.anchor.GetNoncePDAContext", scope: null, file: !414, line: 28, type: !5, scopeLine: 28, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!414 = !DIFile(filename: "/solana-cctp-contracts/programs/message-transmitter/src/instructions/get_nonce_pda.rs", directory: "")
!415 = !DILocation(line: 28, column: 4, scope: !416)
!416 = !DILexicalBlockFile(scope: !413, file: !414, discriminator: 0)
!417 = !DILocation(line: 29, column: 6, scope: !416)
!418 = !DILocation(line: 30, column: 8, scope: !416)
!419 = distinct !DISubprogram(name: "sol.model.struct.GetNoncePDAParams", linkageName: "sol.model.struct.GetNoncePDAParams", scope: null, file: !414, line: 35, type: !5, scopeLine: 35, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!420 = !DILocation(line: 35, column: 4, scope: !421)
!421 = !DILexicalBlockFile(scope: !419, file: !414, discriminator: 0)
!422 = !DILocation(line: 36, column: 8, scope: !421)
!423 = !DILocation(line: 37, column: 8, scope: !421)
!424 = distinct !DISubprogram(name: "get_nonce_pda::get_nonce_pda.2", linkageName: "get_nonce_pda::get_nonce_pda.2", scope: null, file: !414, line: 41, type: !5, scopeLine: 41, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!425 = !DILocation(line: 41, column: 4, scope: !426)
!426 = !DILexicalBlockFile(scope: !424, file: !414, discriminator: 0)
!427 = !DILocation(line: 45, column: 7, scope: !426)
!428 = !DILocation(line: 45, column: 4, scope: !426)
!429 = distinct !DISubprogram(name: "sol.model.struct.SendMessageWithCallerParams", linkageName: "sol.model.struct.SendMessageWithCallerParams", scope: null, file: !430, line: 33, type: !5, scopeLine: 33, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!430 = !DIFile(filename: "/solana-cctp-contracts/programs/message-transmitter/src/instructions/send_message_with_caller.rs", directory: "")
!431 = !DILocation(line: 33, column: 4, scope: !432)
!432 = !DILexicalBlockFile(scope: !429, file: !430, discriminator: 0)
!433 = !DILocation(line: 34, column: 8, scope: !432)
!434 = !DILocation(line: 35, column: 8, scope: !432)
!435 = !DILocation(line: 36, column: 8, scope: !432)
!436 = !DILocation(line: 37, column: 8, scope: !432)
!437 = distinct !DISubprogram(name: "send_message_with_caller::send_message_with_caller.2", linkageName: "send_message_with_caller::send_message_with_caller.2", scope: null, file: !430, line: 41, type: !5, scopeLine: 41, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!438 = !DILocation(line: 41, column: 4, scope: !439)
!439 = !DILexicalBlockFile(scope: !437, file: !430, discriminator: 0)
!440 = !DILocation(line: 45, column: 4, scope: !439)
!441 = !DILocation(line: 53, column: 41, scope: !439)
!442 = !DILocation(line: 54, column: 45, scope: !439)
!443 = !DILocation(line: 55, column: 39, scope: !439)
!444 = !DILocation(line: 59, column: 37, scope: !439)
!445 = !DILocation(line: 52, column: 4, scope: !439)
!446 = distinct !DISubprogram(name: "sol.model.struct.anchor.SetMaxMessageBodySizeContext", linkageName: "sol.model.struct.anchor.SetMaxMessageBodySizeContext", scope: null, file: !447, line: 32, type: !5, scopeLine: 32, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!447 = !DIFile(filename: "/solana-cctp-contracts/programs/message-transmitter/src/instructions/set_max_message_body_size.rs", directory: "")
!448 = !DILocation(line: 32, column: 4, scope: !449)
!449 = !DILexicalBlockFile(scope: !446, file: !447, discriminator: 0)
!450 = !DILocation(line: 33, column: 6, scope: !449)
!451 = !DILocation(line: 34, column: 8, scope: !449)
!452 = !DILocation(line: 36, column: 6, scope: !449)
!453 = !DILocation(line: 40, column: 8, scope: !449)
!454 = distinct !DISubprogram(name: "sol.model.struct.SetMaxMessageBodySizeParams", linkageName: "sol.model.struct.SetMaxMessageBodySizeParams", scope: null, file: !447, line: 45, type: !5, scopeLine: 45, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!455 = !DILocation(line: 45, column: 4, scope: !456)
!456 = !DILexicalBlockFile(scope: !454, file: !447, discriminator: 0)
!457 = !DILocation(line: 46, column: 8, scope: !456)
!458 = distinct !DISubprogram(name: "set_max_message_body_size::set_max_message_body_size.2", linkageName: "set_max_message_body_size::set_max_message_body_size.2", scope: null, file: !447, line: 50, type: !5, scopeLine: 50, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!459 = !DILocation(line: 50, column: 4, scope: !460)
!460 = !DILexicalBlockFile(scope: !458, file: !447, discriminator: 0)
!461 = !DILocation(line: 54, column: 4, scope: !460)
!462 = !DILocation(line: 56, column: 4, scope: !460)
!463 = !DILocation(line: 60, column: 4, scope: !460)
!464 = distinct !DISubprogram(name: "sol.model.struct.anchor.DisableAttesterContext", linkageName: "sol.model.struct.anchor.DisableAttesterContext", scope: null, file: !465, line: 32, type: !5, scopeLine: 32, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!465 = !DIFile(filename: "/solana-cctp-contracts/programs/message-transmitter/src/instructions/disable_attester.rs", directory: "")
!466 = !DILocation(line: 32, column: 4, scope: !467)
!467 = !DILexicalBlockFile(scope: !464, file: !465, discriminator: 0)
!468 = !DILocation(line: 33, column: 6, scope: !467)
!469 = !DILocation(line: 34, column: 8, scope: !467)
!470 = !DILocation(line: 36, column: 6, scope: !467)
!471 = !DILocation(line: 37, column: 8, scope: !467)
!472 = !DILocation(line: 41, column: 6, scope: !467)
!473 = !DILocation(line: 53, column: 8, scope: !467)
!474 = !DILocation(line: 55, column: 8, scope: !467)
!475 = distinct !DISubprogram(name: "sol.model.struct.DisableAttesterParams", linkageName: "sol.model.struct.DisableAttesterParams", scope: null, file: !465, line: 60, type: !5, scopeLine: 60, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!476 = !DILocation(line: 60, column: 4, scope: !477)
!477 = !DILexicalBlockFile(scope: !475, file: !465, discriminator: 0)
!478 = !DILocation(line: 61, column: 8, scope: !477)
!479 = distinct !DISubprogram(name: "disable_attester::disable_attester.anon.1", linkageName: "disable_attester::disable_attester.anon.1", scope: null, file: !465, line: 90, type: !5, scopeLine: 90, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!480 = !DILocation(line: 90, column: 4, scope: !481)
!481 = !DILexicalBlockFile(scope: !479, file: !465, discriminator: 0)
!482 = !DILocation(line: 94, column: 13, scope: !481)
!483 = !DILocation(line: 96, column: 8, scope: !481)
!484 = distinct !DISubprogram(name: "disable_attester::disable_attester.anon.2", linkageName: "disable_attester::disable_attester.anon.2", scope: null, file: !465, line: 99, type: !5, scopeLine: 99, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!485 = !DILocation(line: 99, column: 11, scope: !486)
!486 = !DILexicalBlockFile(scope: !484, file: !465, discriminator: 0)
!487 = !DILocation(line: 100, column: 15, scope: !486)
!488 = !DILocation(line: 100, column: 8, scope: !486)
!489 = distinct !DISubprogram(name: "disable_attester::disable_attester.2", linkageName: "disable_attester::disable_attester.2", scope: null, file: !465, line: 65, type: !5, scopeLine: 65, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!490 = !DILocation(line: 65, column: 4, scope: !491)
!491 = !DILexicalBlockFile(scope: !489, file: !465, discriminator: 0)
!492 = !DILocation(line: 69, column: 63, scope: !491)
!493 = !DILocation(line: 69, column: 4, scope: !491)
!494 = !DILocation(line: 71, column: 4, scope: !491)
!495 = !DILocation(line: 77, column: 4, scope: !491)
!496 = !DILocation(line: 88, column: 9, scope: !491)
!497 = !DILocation(line: 89, column: 22, scope: !491)
!498 = !DILocation(line: 89, column: 9, scope: !491)
!499 = !DILocation(line: 84, column: 4, scope: !491)
!500 = !DILocation(line: 90, column: 4, scope: !491)
!501 = !DILocation(line: 99, column: 11, scope: !491)
!502 = !DILocation(line: 103, column: 4, scope: !491)
!503 = distinct !DISubprogram(name: "sol.model.struct.anchor.ReceiveMessageContext", linkageName: "sol.model.struct.anchor.ReceiveMessageContext", scope: null, file: !504, line: 40, type: !5, scopeLine: 40, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!504 = !DIFile(filename: "/solana-cctp-contracts/programs/message-transmitter/src/instructions/receive_message.rs", directory: "")
!505 = !DILocation(line: 40, column: 4, scope: !506)
!506 = !DILexicalBlockFile(scope: !503, file: !504, discriminator: 0)
!507 = !DILocation(line: 41, column: 6, scope: !506)
!508 = !DILocation(line: 42, column: 8, scope: !506)
!509 = !DILocation(line: 44, column: 6, scope: !506)
!510 = !DILocation(line: 45, column: 8, scope: !506)
!511 = !DILocation(line: 48, column: 6, scope: !506)
!512 = !DILocation(line: 52, column: 8, scope: !506)
!513 = !DILocation(line: 54, column: 6, scope: !506)
!514 = !DILocation(line: 55, column: 8, scope: !506)
!515 = !DILocation(line: 58, column: 6, scope: !506)
!516 = !DILocation(line: 69, column: 8, scope: !506)
!517 = !DILocation(line: 72, column: 6, scope: !506)
!518 = !DILocation(line: 76, column: 8, scope: !506)
!519 = !DILocation(line: 78, column: 8, scope: !506)
!520 = distinct !DISubprogram(name: "sol.model.struct.ReceiveMessageParams", linkageName: "sol.model.struct.ReceiveMessageParams", scope: null, file: !504, line: 84, type: !5, scopeLine: 84, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!521 = !DILocation(line: 84, column: 4, scope: !522)
!522 = !DILexicalBlockFile(scope: !520, file: !504, discriminator: 0)
!523 = !DILocation(line: 85, column: 8, scope: !522)
!524 = !DILocation(line: 86, column: 8, scope: !522)
!525 = distinct !DISubprogram(name: "sol.model.struct.HandleReceiveMessageParams", linkageName: "sol.model.struct.HandleReceiveMessageParams", scope: null, file: !504, line: 90, type: !5, scopeLine: 90, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!526 = !DILocation(line: 90, column: 4, scope: !527)
!527 = !DILexicalBlockFile(scope: !525, file: !504, discriminator: 0)
!528 = !DILocation(line: 91, column: 8, scope: !527)
!529 = !DILocation(line: 92, column: 8, scope: !527)
!530 = !DILocation(line: 93, column: 8, scope: !527)
!531 = !DILocation(line: 94, column: 8, scope: !527)
!532 = distinct !DISubprogram(name: "receive_message::receive_message.anon.1", linkageName: "receive_message::receive_message.anon.1", scope: null, file: !504, line: 119, type: !5, scopeLine: 119, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!533 = !DILocation(line: 119, column: 47, scope: !534)
!534 = !DILexicalBlockFile(scope: !532, file: !504, discriminator: 0)
!535 = !DILocation(line: 120, column: 8, scope: !534)
!536 = distinct !DISubprogram(name: "receive_message::receive_message.anon.2", linkageName: "receive_message::receive_message.anon.2", scope: null, file: !504, line: 133, type: !5, scopeLine: 133, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!537 = !DILocation(line: 133, column: 36, scope: !538)
!538 = !DILexicalBlockFile(scope: !536, file: !504, discriminator: 0)
!539 = !DILocation(line: 135, column: 8, scope: !538)
!540 = !DILocation(line: 136, column: 8, scope: !538)
!541 = distinct !DISubprogram(name: "receive_message::receive_message.anon.3", linkageName: "receive_message::receive_message.anon.3", scope: null, file: !504, line: 137, type: !5, scopeLine: 137, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!542 = !DILocation(line: 137, column: 11, scope: !543)
!543 = !DILexicalBlockFile(scope: !541, file: !504, discriminator: 0)
!544 = !DILocation(line: 139, column: 8, scope: !543)
!545 = !DILocation(line: 144, column: 8, scope: !543)
!546 = distinct !DISubprogram(name: "receive_message::receive_message.anon.4", linkageName: "receive_message::receive_message.anon.4", scope: null, file: !504, line: 179, type: !5, scopeLine: 179, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!547 = !DILocation(line: 179, column: 27, scope: !548)
!548 = !DILexicalBlockFile(scope: !546, file: !504, discriminator: 0)
!549 = !DILocation(line: 180, column: 47, scope: !548)
!550 = !DILocation(line: 180, column: 26, scope: !548)
!551 = !DILocation(line: 180, column: 21, scope: !548)
!552 = distinct !DISubprogram(name: "receive_message::receive_message.anon.5", linkageName: "receive_message::receive_message.anon.5", scope: null, file: !504, line: 181, type: !5, scopeLine: 181, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!553 = !DILocation(line: 181, column: 15, scope: !554)
!554 = !DILexicalBlockFile(scope: !552, file: !504, discriminator: 0)
!555 = !DILocation(line: 182, column: 56, scope: !554)
!556 = !DILocation(line: 182, column: 26, scope: !554)
!557 = !DILocation(line: 182, column: 21, scope: !554)
!558 = distinct !DISubprogram(name: "receive_message::receive_message.anon.7", linkageName: "receive_message::receive_message.anon.7", scope: null, file: !504, line: 179, type: !5, scopeLine: 179, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!559 = !DILocation(line: 179, column: 27, scope: !560)
!560 = !DILexicalBlockFile(scope: !558, file: !504, discriminator: 0)
!561 = !DILocation(line: 180, column: 47, scope: !560)
!562 = !DILocation(line: 180, column: 26, scope: !560)
!563 = !DILocation(line: 180, column: 21, scope: !560)
!564 = distinct !DISubprogram(name: "receive_message::receive_message.anon.8", linkageName: "receive_message::receive_message.anon.8", scope: null, file: !504, line: 181, type: !5, scopeLine: 181, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!565 = !DILocation(line: 181, column: 15, scope: !566)
!566 = !DILexicalBlockFile(scope: !564, file: !504, discriminator: 0)
!567 = !DILocation(line: 182, column: 56, scope: !566)
!568 = !DILocation(line: 182, column: 26, scope: !566)
!569 = !DILocation(line: 182, column: 21, scope: !566)
!570 = distinct !DISubprogram(name: "receive_message::receive_message.anon.6", linkageName: "receive_message::receive_message.anon.6", scope: null, file: !504, line: 178, type: !5, scopeLine: 178, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!571 = !DILocation(line: 178, column: 38, scope: !572)
!572 = !DILexicalBlockFile(scope: !570, file: !504, discriminator: 0)
!573 = !DILocation(line: 179, column: 8, scope: !572)
!574 = !DILocation(line: 179, column: 27, scope: !572)
!575 = !DILocation(line: 181, column: 15, scope: !572)
!576 = distinct !DISubprogram(name: "receive_message::receive_message.2", linkageName: "receive_message::receive_message.2", scope: null, file: !504, line: 98, type: !5, scopeLine: 98, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!577 = !DILocation(line: 98, column: 4, scope: !578)
!578 = !DILexicalBlockFile(scope: !576, file: !504, discriminator: 0)
!579 = !DILocation(line: 102, column: 63, scope: !578)
!580 = !DILocation(line: 102, column: 4, scope: !578)
!581 = !DILocation(line: 104, column: 4, scope: !578)
!582 = !DILocation(line: 109, column: 18, scope: !578)
!583 = !DILocation(line: 109, column: 4, scope: !578)
!584 = !DILocation(line: 111, column: 63, scope: !578)
!585 = !DILocation(line: 111, column: 24, scope: !578)
!586 = !DILocation(line: 113, column: 4, scope: !578)
!587 = !DILocation(line: 118, column: 37, scope: !578)
!588 = !DILocation(line: 118, column: 4, scope: !578)
!589 = !DILocation(line: 119, column: 29, scope: !578)
!590 = !DILocation(line: 119, column: 7, scope: !578)
!591 = !DILocation(line: 119, column: 4, scope: !578)
!592 = !DILocation(line: 119, column: 47, scope: !578)
!593 = !DILocation(line: 127, column: 47, scope: !578)
!594 = !DILocation(line: 127, column: 4, scope: !578)
!595 = !DILocation(line: 128, column: 32, scope: !578)
!596 = !DILocation(line: 128, column: 4, scope: !578)
!597 = !DILocation(line: 129, column: 25, scope: !578)
!598 = !DILocation(line: 129, column: 4, scope: !578)
!599 = !DILocation(line: 130, column: 24, scope: !578)
!600 = !DILocation(line: 130, column: 4, scope: !578)
!601 = !DILocation(line: 131, column: 22, scope: !578)
!602 = !DILocation(line: 131, column: 4, scope: !578)
!603 = !DILocation(line: 133, column: 7, scope: !578)
!604 = !DILocation(line: 133, column: 4, scope: !578)
!605 = !DILocation(line: 133, column: 36, scope: !578)
!606 = !DILocation(line: 137, column: 11, scope: !578)
!607 = !DILocation(line: 152, column: 16, scope: !578)
!608 = !DILocation(line: 155, column: 45, scope: !578)
!609 = !DILocation(line: 155, column: 4, scope: !578)
!610 = !DILocation(line: 156, column: 4, scope: !578)
!611 = !DILocation(line: 164, column: 9, scope: !578)
!612 = !DILocation(line: 165, column: 9, scope: !578)
!613 = !DILocation(line: 162, column: 4, scope: !578)
!614 = !DILocation(line: 166, column: 4, scope: !578)
!615 = !DILocation(line: 172, column: 69, scope: !578)
!616 = !DILocation(line: 172, column: 42, scope: !578)
!617 = !DILocation(line: 172, column: 23, scope: !578)
!618 = !DILocation(line: 172, column: 4, scope: !578)
!619 = !DILocation(line: 174, column: 35, scope: !578)
!620 = !DILocation(line: 173, column: 18, scope: !578)
!621 = !DILocation(line: 173, column: 13, scope: !578)
!622 = !DILocation(line: 178, column: 4, scope: !578)
!623 = !DILocation(line: 187, column: 8, scope: !578)
!624 = !DILocation(line: 189, column: 30, scope: !578)
!625 = !DILocation(line: 189, column: 45, scope: !578)
!626 = !DILocation(line: 189, column: 8, scope: !578)
!627 = !DILocation(line: 186, column: 17, scope: !578)
!628 = !DILocation(line: 186, column: 4, scope: !578)
!629 = !DILocation(line: 193, column: 51, scope: !578)
!630 = !DILocation(line: 193, column: 66, scope: !578)
!631 = !DILocation(line: 193, column: 38, scope: !578)
!632 = !DILocation(line: 193, column: 19, scope: !578)
!633 = !DILocation(line: 193, column: 4, scope: !578)
!634 = !DILocation(line: 195, column: 81, scope: !578)
!635 = !DILocation(line: 195, column: 9, scope: !578)
!636 = !DILocation(line: 196, column: 13, scope: !578)
!637 = !DILocation(line: 194, column: 9, scope: !578)
!638 = !DILocation(line: 198, column: 35, scope: !578)
!639 = !DILocation(line: 198, column: 9, scope: !578)
!640 = !DILocation(line: 201, column: 42, scope: !578)
!641 = !DILocation(line: 201, column: 8, scope: !578)
!642 = !DILocation(line: 200, column: 22, scope: !578)
!643 = !DILocation(line: 200, column: 4, scope: !578)
!644 = !DILocation(line: 212, column: 9, scope: !578)
!645 = !DILocation(line: 206, column: 4, scope: !578)
!646 = !DILocation(line: 216, column: 4, scope: !578)
!647 = !DILocation(line: 224, column: 4, scope: !578)
!648 = distinct !DISubprogram(name: "sol.model.struct.anchor.PauseContext", linkageName: "sol.model.struct.anchor.PauseContext", scope: null, file: !649, line: 29, type: !5, scopeLine: 29, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!649 = !DIFile(filename: "/solana-cctp-contracts/programs/message-transmitter/src/instructions/pause.rs", directory: "")
!650 = !DILocation(line: 29, column: 4, scope: !651)
!651 = !DILexicalBlockFile(scope: !648, file: !649, discriminator: 0)
!652 = !DILocation(line: 30, column: 6, scope: !651)
!653 = !DILocation(line: 31, column: 8, scope: !651)
!654 = !DILocation(line: 33, column: 6, scope: !651)
!655 = !DILocation(line: 37, column: 8, scope: !651)
!656 = distinct !DISubprogram(name: "sol.model.struct.PauseParams", linkageName: "sol.model.struct.PauseParams", scope: null, file: !649, line: 42, type: !5, scopeLine: 42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!657 = !DILocation(line: 42, column: 4, scope: !658)
!658 = !DILexicalBlockFile(scope: !656, file: !649, discriminator: 0)
!659 = distinct !DISubprogram(name: "pause::pause.2", linkageName: "pause::pause.2", scope: null, file: !649, line: 45, type: !5, scopeLine: 45, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!660 = !DILocation(line: 45, column: 4, scope: !661)
!661 = !DILexicalBlockFile(scope: !659, file: !649, discriminator: 0)
!662 = !DILocation(line: 46, column: 4, scope: !661)
!663 = !DILocation(line: 51, column: 4, scope: !661)
!664 = !DILocation(line: 53, column: 4, scope: !661)
!665 = !DILocation(line: 55, column: 4, scope: !661)
!666 = distinct !DISubprogram(name: "sol.model.struct.anchor.TransferOwnershipContext", linkageName: "sol.model.struct.anchor.TransferOwnershipContext", scope: null, file: !667, line: 31, type: !5, scopeLine: 31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!667 = !DIFile(filename: "/solana-cctp-contracts/programs/message-transmitter/src/instructions/transfer_ownership.rs", directory: "")
!668 = !DILocation(line: 31, column: 4, scope: !669)
!669 = !DILexicalBlockFile(scope: !666, file: !667, discriminator: 0)
!670 = !DILocation(line: 32, column: 6, scope: !669)
!671 = !DILocation(line: 33, column: 8, scope: !669)
!672 = !DILocation(line: 35, column: 6, scope: !669)
!673 = !DILocation(line: 39, column: 8, scope: !669)
!674 = distinct !DISubprogram(name: "sol.model.struct.TransferOwnershipParams", linkageName: "sol.model.struct.TransferOwnershipParams", scope: null, file: !667, line: 44, type: !5, scopeLine: 44, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!675 = !DILocation(line: 44, column: 4, scope: !676)
!676 = !DILexicalBlockFile(scope: !674, file: !667, discriminator: 0)
!677 = !DILocation(line: 45, column: 8, scope: !676)
!678 = distinct !DISubprogram(name: "transfer_ownership::transfer_ownership.anon.1", linkageName: "transfer_ownership::transfer_ownership.anon.1", scope: null, file: !667, line: 59, type: !5, scopeLine: 59, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!679 = !DILocation(line: 59, column: 4, scope: !680)
!680 = !DILexicalBlockFile(scope: !678, file: !667, discriminator: 0)
!681 = !DILocation(line: 60, column: 15, scope: !680)
!682 = !DILocation(line: 60, column: 8, scope: !680)
!683 = distinct !DISubprogram(name: "transfer_ownership::transfer_ownership.2", linkageName: "transfer_ownership::transfer_ownership.2", scope: null, file: !667, line: 49, type: !5, scopeLine: 49, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!684 = !DILocation(line: 49, column: 4, scope: !685)
!685 = !DILexicalBlockFile(scope: !683, file: !667, discriminator: 0)
!686 = !DILocation(line: 58, column: 5, scope: !685)
!687 = !DILocation(line: 53, column: 4, scope: !685)
!688 = !DILocation(line: 59, column: 4, scope: !685)
!689 = !DILocation(line: 63, column: 63, scope: !685)
!690 = !DILocation(line: 63, column: 4, scope: !685)
!691 = !DILocation(line: 65, column: 4, scope: !685)
!692 = !DILocation(line: 67, column: 4, scope: !685)
!693 = !DILocation(line: 72, column: 4, scope: !685)
!694 = distinct !DISubprogram(name: "sol.model.struct.anchor.EnableAttesterContext", linkageName: "sol.model.struct.anchor.EnableAttesterContext", scope: null, file: !695, line: 32, type: !5, scopeLine: 32, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!695 = !DIFile(filename: "/solana-cctp-contracts/programs/message-transmitter/src/instructions/enable_attester.rs", directory: "")
!696 = !DILocation(line: 32, column: 4, scope: !697)
!697 = !DILexicalBlockFile(scope: !694, file: !695, discriminator: 0)
!698 = !DILocation(line: 33, column: 6, scope: !697)
!699 = !DILocation(line: 34, column: 8, scope: !697)
!700 = !DILocation(line: 36, column: 6, scope: !697)
!701 = !DILocation(line: 37, column: 8, scope: !697)
!702 = !DILocation(line: 42, column: 6, scope: !697)
!703 = !DILocation(line: 49, column: 8, scope: !697)
!704 = !DILocation(line: 51, column: 8, scope: !697)
!705 = distinct !DISubprogram(name: "sol.model.struct.EnableAttesterParams", linkageName: "sol.model.struct.EnableAttesterParams", scope: null, file: !695, line: 56, type: !5, scopeLine: 56, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!706 = !DILocation(line: 56, column: 4, scope: !707)
!707 = !DILexicalBlockFile(scope: !705, file: !695, discriminator: 0)
!708 = !DILocation(line: 57, column: 8, scope: !707)
!709 = distinct !DISubprogram(name: "enable_attester::enable_attester.2", linkageName: "enable_attester::enable_attester.2", scope: null, file: !695, line: 61, type: !5, scopeLine: 61, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!710 = !DILocation(line: 61, column: 4, scope: !711)
!711 = !DILexicalBlockFile(scope: !709, file: !695, discriminator: 0)
!712 = !DILocation(line: 65, column: 4, scope: !711)
!713 = !DILocation(line: 71, column: 4, scope: !711)
!714 = !DILocation(line: 82, column: 9, scope: !711)
!715 = !DILocation(line: 84, column: 4, scope: !711)
!716 = !DILocation(line: 88, column: 4, scope: !711)
!717 = distinct !DISubprogram(name: "sol.model.struct.anchor.AcceptOwnershipContext", linkageName: "sol.model.struct.anchor.AcceptOwnershipContext", scope: null, file: !718, line: 31, type: !5, scopeLine: 31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!718 = !DIFile(filename: "/solana-cctp-contracts/programs/message-transmitter/src/instructions/accept_ownership.rs", directory: "")
!719 = !DILocation(line: 31, column: 4, scope: !720)
!720 = !DILexicalBlockFile(scope: !717, file: !718, discriminator: 0)
!721 = !DILocation(line: 32, column: 6, scope: !720)
!722 = !DILocation(line: 33, column: 8, scope: !720)
!723 = !DILocation(line: 35, column: 6, scope: !720)
!724 = !DILocation(line: 39, column: 8, scope: !720)
!725 = distinct !DISubprogram(name: "sol.model.struct.AcceptOwnershipParams", linkageName: "sol.model.struct.AcceptOwnershipParams", scope: null, file: !718, line: 44, type: !5, scopeLine: 44, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!726 = !DILocation(line: 44, column: 4, scope: !727)
!727 = !DILexicalBlockFile(scope: !725, file: !718, discriminator: 0)
!728 = distinct !DISubprogram(name: "accept_ownership::accept_ownership.2", linkageName: "accept_ownership::accept_ownership.2", scope: null, file: !718, line: 47, type: !5, scopeLine: 47, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!729 = !DILocation(line: 47, column: 4, scope: !730)
!730 = !DILexicalBlockFile(scope: !728, file: !718, discriminator: 0)
!731 = !DILocation(line: 51, column: 63, scope: !730)
!732 = !DILocation(line: 51, column: 4, scope: !730)
!733 = !DILocation(line: 53, column: 4, scope: !730)
!734 = !DILocation(line: 56, column: 4, scope: !730)
!735 = !DILocation(line: 57, column: 40, scope: !730)
!736 = !DILocation(line: 57, column: 4, scope: !730)
!737 = !DILocation(line: 59, column: 4, scope: !730)
!738 = !DILocation(line: 64, column: 4, scope: !730)
!739 = distinct !DISubprogram(name: "sol.model.struct.anchor.MessageSent", linkageName: "sol.model.struct.anchor.MessageSent", scope: null, file: !740, line: 51, type: !5, scopeLine: 51, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!740 = !DIFile(filename: "/solana-cctp-contracts/programs/message-transmitter/src/events.rs", directory: "")
!741 = !DILocation(line: 51, column: 4, scope: !742)
!742 = !DILexicalBlockFile(scope: !739, file: !740, discriminator: 0)
!743 = !DILocation(line: 52, column: 8, scope: !742)
!744 = !DILocation(line: 54, column: 8, scope: !742)
!745 = distinct !DISubprogram(name: "sol.model.struct.MessageSent", linkageName: "sol.model.struct.MessageSent", scope: null, file: !740, line: 51, type: !5, scopeLine: 51, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!746 = !DILocation(line: 51, column: 4, scope: !747)
!747 = !DILexicalBlockFile(scope: !745, file: !740, discriminator: 0)
!748 = !DILocation(line: 52, column: 8, scope: !747)
!749 = !DILocation(line: 54, column: 8, scope: !747)
!750 = distinct !DISubprogram(name: "events::MessageSent::len.1", linkageName: "events::MessageSent::len.1", scope: null, file: !740, line: 58, type: !5, scopeLine: 58, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!751 = !DILocation(line: 58, column: 8, scope: !752)
!752 = !DILexicalBlockFile(scope: !750, file: !740, discriminator: 0)
!753 = !DILocation(line: 64, column: 16, scope: !752)
!754 = !DILocation(line: 63, column: 12, scope: !752)
!755 = !DILocation(line: 67, column: 12, scope: !752)
!756 = !DILocation(line: 62, column: 8, scope: !752)
!757 = distinct !DISubprogram(name: "lib::initialize.2", linkageName: "lib::initialize.2", scope: null, file: !758, line: 46, type: !5, scopeLine: 46, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!758 = !DIFile(filename: "/solana-cctp-contracts/programs/message-transmitter/src/lib.rs", directory: "")
!759 = !DILocation(line: 46, column: 8, scope: !760)
!760 = !DILexicalBlockFile(scope: !757, file: !758, discriminator: 0)
!761 = !DILocation(line: 47, column: 8, scope: !760)
!762 = distinct !DISubprogram(name: "lib::transfer_ownership.2", linkageName: "lib::transfer_ownership.2", scope: null, file: !758, line: 50, type: !5, scopeLine: 50, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!763 = !DILocation(line: 50, column: 8, scope: !764)
!764 = !DILexicalBlockFile(scope: !762, file: !758, discriminator: 0)
!765 = !DILocation(line: 54, column: 8, scope: !764)
!766 = distinct !DISubprogram(name: "lib::accept_ownership.2", linkageName: "lib::accept_ownership.2", scope: null, file: !758, line: 57, type: !5, scopeLine: 57, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!767 = !DILocation(line: 57, column: 8, scope: !768)
!768 = !DILexicalBlockFile(scope: !766, file: !758, discriminator: 0)
!769 = !DILocation(line: 61, column: 8, scope: !768)
!770 = distinct !DISubprogram(name: "lib::update_pauser.2", linkageName: "lib::update_pauser.2", scope: null, file: !758, line: 64, type: !5, scopeLine: 64, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!771 = !DILocation(line: 64, column: 8, scope: !772)
!772 = !DILexicalBlockFile(scope: !770, file: !758, discriminator: 0)
!773 = !DILocation(line: 68, column: 8, scope: !772)
!774 = distinct !DISubprogram(name: "lib::update_attester_manager.2", linkageName: "lib::update_attester_manager.2", scope: null, file: !758, line: 71, type: !5, scopeLine: 71, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!775 = !DILocation(line: 71, column: 8, scope: !776)
!776 = !DILexicalBlockFile(scope: !774, file: !758, discriminator: 0)
!777 = !DILocation(line: 75, column: 8, scope: !776)
!778 = distinct !DISubprogram(name: "lib::pause.2", linkageName: "lib::pause.2", scope: null, file: !758, line: 78, type: !5, scopeLine: 78, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!779 = !DILocation(line: 78, column: 8, scope: !780)
!780 = !DILexicalBlockFile(scope: !778, file: !758, discriminator: 0)
!781 = !DILocation(line: 79, column: 8, scope: !780)
!782 = distinct !DISubprogram(name: "lib::unpause.2", linkageName: "lib::unpause.2", scope: null, file: !758, line: 82, type: !5, scopeLine: 82, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!783 = !DILocation(line: 82, column: 8, scope: !784)
!784 = !DILexicalBlockFile(scope: !782, file: !758, discriminator: 0)
!785 = !DILocation(line: 83, column: 8, scope: !784)
!786 = distinct !DISubprogram(name: "lib::set_max_message_body_size.2", linkageName: "lib::set_max_message_body_size.2", scope: null, file: !758, line: 86, type: !5, scopeLine: 86, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!787 = !DILocation(line: 86, column: 8, scope: !788)
!788 = !DILexicalBlockFile(scope: !786, file: !758, discriminator: 0)
!789 = !DILocation(line: 90, column: 8, scope: !788)
!790 = distinct !DISubprogram(name: "lib::enable_attester.2", linkageName: "lib::enable_attester.2", scope: null, file: !758, line: 93, type: !5, scopeLine: 93, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!791 = !DILocation(line: 93, column: 8, scope: !792)
!792 = !DILexicalBlockFile(scope: !790, file: !758, discriminator: 0)
!793 = !DILocation(line: 97, column: 8, scope: !792)
!794 = distinct !DISubprogram(name: "lib::disable_attester.2", linkageName: "lib::disable_attester.2", scope: null, file: !758, line: 100, type: !5, scopeLine: 100, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!795 = !DILocation(line: 100, column: 8, scope: !796)
!796 = !DILexicalBlockFile(scope: !794, file: !758, discriminator: 0)
!797 = !DILocation(line: 104, column: 8, scope: !796)
!798 = distinct !DISubprogram(name: "lib::set_signature_threshold.2", linkageName: "lib::set_signature_threshold.2", scope: null, file: !758, line: 107, type: !5, scopeLine: 107, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!799 = !DILocation(line: 107, column: 8, scope: !800)
!800 = !DILexicalBlockFile(scope: !798, file: !758, discriminator: 0)
!801 = !DILocation(line: 111, column: 8, scope: !800)
!802 = distinct !DISubprogram(name: "lib::send_message.2", linkageName: "lib::send_message.2", scope: null, file: !758, line: 114, type: !5, scopeLine: 114, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!803 = !DILocation(line: 114, column: 8, scope: !804)
!804 = !DILexicalBlockFile(scope: !802, file: !758, discriminator: 0)
!805 = !DILocation(line: 118, column: 8, scope: !804)
!806 = distinct !DISubprogram(name: "lib::send_message_with_caller.2", linkageName: "lib::send_message_with_caller.2", scope: null, file: !758, line: 121, type: !5, scopeLine: 121, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!807 = !DILocation(line: 121, column: 8, scope: !808)
!808 = !DILexicalBlockFile(scope: !806, file: !758, discriminator: 0)
!809 = !DILocation(line: 125, column: 8, scope: !808)
!810 = distinct !DISubprogram(name: "lib::replace_message.2", linkageName: "lib::replace_message.2", scope: null, file: !758, line: 128, type: !5, scopeLine: 128, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!811 = !DILocation(line: 128, column: 8, scope: !812)
!812 = !DILexicalBlockFile(scope: !810, file: !758, discriminator: 0)
!813 = !DILocation(line: 132, column: 8, scope: !812)
!814 = distinct !DISubprogram(name: "lib::receive_message.2", linkageName: "lib::receive_message.2", scope: null, file: !758, line: 135, type: !5, scopeLine: 135, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!815 = !DILocation(line: 135, column: 8, scope: !816)
!816 = !DILexicalBlockFile(scope: !814, file: !758, discriminator: 0)
!817 = !DILocation(line: 139, column: 8, scope: !816)
!818 = distinct !DISubprogram(name: "lib::reclaim_event_account.2", linkageName: "lib::reclaim_event_account.2", scope: null, file: !758, line: 142, type: !5, scopeLine: 142, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!819 = !DILocation(line: 142, column: 8, scope: !820)
!820 = !DILexicalBlockFile(scope: !818, file: !758, discriminator: 0)
!821 = !DILocation(line: 146, column: 8, scope: !820)
!822 = distinct !DISubprogram(name: "lib::get_nonce_pda.2", linkageName: "lib::get_nonce_pda.2", scope: null, file: !758, line: 149, type: !5, scopeLine: 149, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!823 = !DILocation(line: 149, column: 8, scope: !824)
!824 = !DILexicalBlockFile(scope: !822, file: !758, discriminator: 0)
!825 = !DILocation(line: 153, column: 8, scope: !824)
!826 = distinct !DISubprogram(name: "lib::is_nonce_used.2", linkageName: "lib::is_nonce_used.2", scope: null, file: !758, line: 156, type: !5, scopeLine: 156, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!827 = !DILocation(line: 156, column: 8, scope: !828)
!828 = !DILexicalBlockFile(scope: !826, file: !758, discriminator: 0)
!829 = !DILocation(line: 160, column: 8, scope: !828)
!830 = distinct !DISubprogram(name: "sol.model.anchor.program.message_transmitter", linkageName: "sol.model.anchor.program.message_transmitter", scope: null, file: !758, line: 42, type: !5, scopeLine: 42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!831 = !DILocation(line: 42, scope: !832)
!832 = !DILexicalBlockFile(scope: !830, file: !758, discriminator: 0)
!833 = !DILocation(line: 46, column: 4, scope: !832)
!834 = !DILocation(line: 50, column: 4, scope: !832)
!835 = !DILocation(line: 57, column: 4, scope: !832)
!836 = !DILocation(line: 64, column: 4, scope: !832)
!837 = !DILocation(line: 71, column: 4, scope: !832)
!838 = !DILocation(line: 78, column: 4, scope: !832)
!839 = !DILocation(line: 82, column: 4, scope: !832)
!840 = !DILocation(line: 86, column: 4, scope: !832)
!841 = !DILocation(line: 93, column: 4, scope: !832)
!842 = !DILocation(line: 100, column: 4, scope: !832)
!843 = !DILocation(line: 107, column: 4, scope: !832)
!844 = !DILocation(line: 114, column: 4, scope: !832)
!845 = !DILocation(line: 121, column: 4, scope: !832)
!846 = !DILocation(line: 128, column: 4, scope: !832)
!847 = !DILocation(line: 135, column: 4, scope: !832)
!848 = !DILocation(line: 142, column: 4, scope: !832)
!849 = !DILocation(line: 149, column: 4, scope: !832)
!850 = !DILocation(line: 156, column: 4, scope: !832)
!851 = distinct !DISubprogram(name: "main", linkageName: "main", scope: null, file: !758, line: 42, type: !5, scopeLine: 42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!852 = !DILocation(line: 42, scope: !853)
!853 = !DILexicalBlockFile(scope: !851, file: !758, discriminator: 0)
!854 = distinct !DISubprogram(name: "sol.model.struct.anchor.MessageTransmitter", linkageName: "sol.model.struct.anchor.MessageTransmitter", scope: null, file: !855, line: 34, type: !5, scopeLine: 34, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!855 = !DIFile(filename: "/solana-cctp-contracts/programs/message-transmitter/src/state.rs", directory: "")
!856 = !DILocation(line: 34, column: 4, scope: !857)
!857 = !DILexicalBlockFile(scope: !854, file: !855, discriminator: 0)
!858 = !DILocation(line: 35, column: 8, scope: !857)
!859 = !DILocation(line: 36, column: 8, scope: !857)
!860 = !DILocation(line: 37, column: 8, scope: !857)
!861 = !DILocation(line: 38, column: 8, scope: !857)
!862 = !DILocation(line: 39, column: 8, scope: !857)
!863 = !DILocation(line: 40, column: 8, scope: !857)
!864 = !DILocation(line: 41, column: 8, scope: !857)
!865 = !DILocation(line: 42, column: 8, scope: !857)
!866 = !DILocation(line: 44, column: 8, scope: !857)
!867 = !DILocation(line: 45, column: 8, scope: !857)
!868 = !DILocation(line: 46, column: 8, scope: !857)
!869 = distinct !DISubprogram(name: "sol.model.struct.MessageTransmitter", linkageName: "sol.model.struct.MessageTransmitter", scope: null, file: !855, line: 34, type: !5, scopeLine: 34, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!870 = !DILocation(line: 34, column: 4, scope: !871)
!871 = !DILexicalBlockFile(scope: !869, file: !855, discriminator: 0)
!872 = !DILocation(line: 35, column: 8, scope: !871)
!873 = !DILocation(line: 36, column: 8, scope: !871)
!874 = !DILocation(line: 37, column: 8, scope: !871)
!875 = !DILocation(line: 38, column: 8, scope: !871)
!876 = !DILocation(line: 39, column: 8, scope: !871)
!877 = !DILocation(line: 40, column: 8, scope: !871)
!878 = !DILocation(line: 41, column: 8, scope: !871)
!879 = !DILocation(line: 42, column: 8, scope: !871)
!880 = !DILocation(line: 44, column: 8, scope: !871)
!881 = !DILocation(line: 45, column: 8, scope: !871)
!882 = !DILocation(line: 46, column: 8, scope: !871)
!883 = distinct !DISubprogram(name: "sol.model.struct.anchor.UsedNonces", linkageName: "sol.model.struct.anchor.UsedNonces", scope: null, file: !855, line: 54, type: !5, scopeLine: 54, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!884 = !DILocation(line: 54, column: 4, scope: !885)
!885 = !DILexicalBlockFile(scope: !883, file: !855, discriminator: 0)
!886 = !DILocation(line: 55, column: 8, scope: !885)
!887 = !DILocation(line: 56, column: 8, scope: !885)
!888 = !DILocation(line: 57, column: 4, scope: !885)
!889 = distinct !DISubprogram(name: "sol.model.struct.UsedNonces", linkageName: "sol.model.struct.UsedNonces", scope: null, file: !855, line: 54, type: !5, scopeLine: 54, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!890 = !DILocation(line: 54, column: 4, scope: !891)
!891 = !DILexicalBlockFile(scope: !889, file: !855, discriminator: 0)
!892 = !DILocation(line: 55, column: 8, scope: !891)
!893 = !DILocation(line: 56, column: 8, scope: !891)
!894 = !DILocation(line: 57, column: 4, scope: !891)
!895 = distinct !DISubprogram(name: "state::MessageTransmitter::validate.1", linkageName: "state::MessageTransmitter::validate.1", scope: null, file: !855, line: 64, type: !5, scopeLine: 64, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!896 = !DILocation(line: 64, column: 8, scope: !897)
!897 = !DILexicalBlockFile(scope: !895, file: !855, discriminator: 0)
!898 = !DILocation(line: 65, column: 22, scope: !897)
!899 = !DILocation(line: 65, column: 8, scope: !897)
!900 = !DILocation(line: 66, column: 40, scope: !897)
!901 = !DILocation(line: 66, column: 15, scope: !897)
!902 = !DILocation(line: 67, column: 30, scope: !897)
!903 = !DILocation(line: 67, column: 15, scope: !897)
!904 = !DILocation(line: 68, column: 15, scope: !897)
!905 = !DILocation(line: 69, column: 15, scope: !897)
!906 = !DILocation(line: 69, column: 75, scope: !897)
!907 = !DILocation(line: 70, column: 39, scope: !897)
!908 = !DILocation(line: 70, column: 15, scope: !897)
!909 = !DILocation(line: 71, column: 15, scope: !897)
!910 = distinct !DISubprogram(name: "state::MessageTransmitter::verify_attestation_signatures.anon.2", linkageName: "state::MessageTransmitter::verify_attestation_signatures.anon.2", scope: null, file: !855, line: 114, type: !5, scopeLine: 114, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!911 = !DILocation(line: 114, column: 51, scope: !912)
!912 = !DILexicalBlockFile(scope: !910, file: !855, discriminator: 0)
!913 = !DILocation(line: 115, column: 23, scope: !912)
!914 = !DILocation(line: 115, column: 16, scope: !912)
!915 = distinct !DISubprogram(name: "state::MessageTransmitter::verify_attestation_signatures.anon.1", linkageName: "state::MessageTransmitter::verify_attestation_signatures.anon.1", scope: null, file: !855, line: 101, type: !5, scopeLine: 101, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!916 = !DILocation(line: 101, column: 54, scope: !917)
!917 = !DILexicalBlockFile(scope: !915, file: !855, discriminator: 0)
!918 = !DILocation(line: 104, column: 29, scope: !917)
!919 = !DILocation(line: 103, column: 12, scope: !917)
!920 = !DILocation(line: 112, column: 68, scope: !917)
!921 = !DILocation(line: 112, column: 16, scope: !917)
!922 = !DILocation(line: 111, column: 12, scope: !917)
!923 = !DILocation(line: 114, column: 15, scope: !917)
!924 = !DILocation(line: 114, column: 12, scope: !917)
!925 = !DILocation(line: 114, column: 51, scope: !917)
!926 = !DILocation(line: 119, column: 12, scope: !917)
!927 = !DILocation(line: 124, column: 12, scope: !917)
!928 = distinct !DISubprogram(name: "state::MessageTransmitter::verify_attestation_signatures.3", linkageName: "state::MessageTransmitter::verify_attestation_signatures.3", scope: null, file: !855, line: 85, type: !5, scopeLine: 85, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!929 = !DILocation(line: 85, column: 8, scope: !930)
!930 = !DILexicalBlockFile(scope: !928, file: !855, discriminator: 0)
!931 = !DILocation(line: 90, column: 8, scope: !930)
!932 = !DILocation(line: 99, column: 32, scope: !930)
!933 = !DILocation(line: 99, column: 8, scope: !930)
!934 = !DILocation(line: 101, column: 8, scope: !930)
!935 = !DILocation(line: 127, column: 8, scope: !930)
!936 = distinct !DISubprogram(name: "state::MessageTransmitter::is_enabled_attester.2", linkageName: "state::MessageTransmitter::is_enabled_attester.2", scope: null, file: !855, line: 131, type: !5, scopeLine: 131, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!937 = !DILocation(line: 131, column: 8, scope: !938)
!938 = !DILexicalBlockFile(scope: !936, file: !855, discriminator: 0)
!939 = !DILocation(line: 132, column: 31, scope: !938)
!940 = distinct !DISubprogram(name: "state::MessageTransmitter::recover_attester.anon.1", linkageName: "state::MessageTransmitter::recover_attester.anon.1", scope: null, file: !855, line: 177, type: !5, scopeLine: 177, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!941 = !DILocation(line: 177, column: 55, scope: !942)
!942 = !DILexicalBlockFile(scope: !940, file: !855, discriminator: 0)
!943 = distinct !DISubprogram(name: "state::MessageTransmitter::recover_attester.2", linkageName: "state::MessageTransmitter::recover_attester.2", scope: null, file: !855, line: 136, type: !5, scopeLine: 136, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!944 = !DILocation(line: 136, column: 4, scope: !945)
!945 = !DILexicalBlockFile(scope: !943, file: !855, discriminator: 0)
!946 = !DILocation(line: 138, column: 8, scope: !945)
!947 = !DILocation(line: 143, column: 8, scope: !945)
!948 = !DILocation(line: 150, column: 8, scope: !945)
!949 = !DILocation(line: 151, column: 8, scope: !945)
!950 = !DILocation(line: 157, column: 24, scope: !945)
!951 = !DILocation(line: 160, column: 9, scope: !945)
!952 = !DILocation(line: 157, column: 8, scope: !945)
!953 = !DILocation(line: 161, column: 8, scope: !945)
!954 = !DILocation(line: 169, column: 12, scope: !945)
!955 = !DILocation(line: 167, column: 21, scope: !945)
!956 = !DILocation(line: 177, column: 55, scope: !945)
!957 = !DILocation(line: 172, column: 23, scope: !945)
!958 = !DILocation(line: 172, column: 9, scope: !945)
!959 = !DILocation(line: 167, column: 8, scope: !945)
!960 = !DILocation(line: 183, column: 25, scope: !945)
!961 = !DILocation(line: 183, column: 8, scope: !945)
!962 = !DILocation(line: 184, column: 27, scope: !945)
!963 = !DILocation(line: 184, column: 38, scope: !945)
!964 = !DILocation(line: 184, column: 15, scope: !945)
!965 = !DILocation(line: 185, column: 33, scope: !945)
!966 = !DILocation(line: 185, column: 8, scope: !945)
!967 = !DILocation(line: 186, column: 23, scope: !945)
!968 = !DILocation(line: 186, column: 47, scope: !945)
!969 = !DILocation(line: 186, column: 34, scope: !945)
!970 = !DILocation(line: 188, column: 11, scope: !945)
!971 = !DILocation(line: 188, column: 8, scope: !945)
!972 = distinct !DISubprogram(name: "state::UsedNonces::first_nonce.anon.1", linkageName: "state::UsedNonces::first_nonce.anon.1", scope: null, file: !855, line: 202, type: !5, scopeLine: 202, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!973 = !DILocation(line: 202, column: 22, scope: !974)
!974 = !DILexicalBlockFile(scope: !972, file: !855, discriminator: 0)
!975 = !DILocation(line: 203, column: 19, scope: !974)
!976 = !DILocation(line: 203, column: 12, scope: !974)
!977 = distinct !DISubprogram(name: "state::UsedNonces::first_nonce.1", linkageName: "state::UsedNonces::first_nonce.1", scope: null, file: !855, line: 201, type: !5, scopeLine: 201, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!978 = !DILocation(line: 201, column: 8, scope: !979)
!979 = !DILexicalBlockFile(scope: !977, file: !855, discriminator: 0)
!980 = !DILocation(line: 202, column: 11, scope: !979)
!981 = !DILocation(line: 202, column: 8, scope: !979)
!982 = !DILocation(line: 202, column: 22, scope: !979)
!983 = !DILocation(line: 207, column: 35, scope: !979)
!984 = !DILocation(line: 207, column: 66, scope: !979)
!985 = !DILocation(line: 207, column: 16, scope: !979)
!986 = !DILocation(line: 208, column: 16, scope: !979)
!987 = !DILocation(line: 206, column: 12, scope: !979)
!988 = !DILocation(line: 205, column: 8, scope: !979)
!989 = distinct !DISubprogram(name: "state::UsedNonces::use_nonce.2", linkageName: "state::UsedNonces::use_nonce.2", scope: null, file: !855, line: 215, type: !5, scopeLine: 215, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!990 = !DILocation(line: 215, column: 8, scope: !991)
!991 = !DILexicalBlockFile(scope: !989, file: !855, discriminator: 0)
!992 = !DILocation(line: 216, column: 32, scope: !991)
!993 = !DILocation(line: 216, column: 8, scope: !991)
!994 = !DILocation(line: 218, column: 8, scope: !991)
!995 = !DILocation(line: 223, column: 32, scope: !991)
!996 = !DILocation(line: 225, column: 8, scope: !991)
!997 = distinct !DISubprogram(name: "state::UsedNonces::is_nonce_used.2", linkageName: "state::UsedNonces::is_nonce_used.2", scope: null, file: !855, line: 229, type: !5, scopeLine: 229, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!998 = !DILocation(line: 229, column: 8, scope: !999)
!999 = !DILexicalBlockFile(scope: !997, file: !855, discriminator: 0)
!1000 = !DILocation(line: 230, column: 32, scope: !999)
!1001 = !DILocation(line: 230, column: 8, scope: !999)
!1002 = !DILocation(line: 232, column: 11, scope: !999)
!1003 = !DILocation(line: 232, column: 8, scope: !999)
!1004 = distinct !DISubprogram(name: "state::UsedNonces::get_entry_bit.2", linkageName: "state::UsedNonces::get_entry_bit.2", scope: null, file: !855, line: 235, type: !5, scopeLine: 235, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1005 = !DILocation(line: 235, column: 4, scope: !1006)
!1006 = !DILexicalBlockFile(scope: !1004, file: !855, discriminator: 0)
!1007 = !DILocation(line: 236, column: 8, scope: !1006)
!1008 = !DILocation(line: 242, column: 23, scope: !1006)
!1009 = !DILocation(line: 242, column: 8, scope: !1006)
!1010 = !DILocation(line: 243, column: 20, scope: !1006)
!1011 = !DILocation(line: 243, column: 8, scope: !1006)
!1012 = !DILocation(line: 244, column: 24, scope: !1006)
!1013 = !DILocation(line: 244, column: 21, scope: !1006)
!1014 = !DILocation(line: 244, column: 18, scope: !1006)
!1015 = !DILocation(line: 244, column: 8, scope: !1006)
!1016 = !DILocation(line: 246, column: 8, scope: !1006)
!1017 = distinct !DISubprogram(name: "utils::validate_upgrade_authority.anon.3", linkageName: "utils::validate_upgrade_authority.anon.3", scope: null, file: !1018, line: 39, type: !5, scopeLine: 39, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1018 = !DIFile(filename: "/solana-cctp-contracts/programs/message-transmitter/src/utils.rs", directory: "")
!1019 = !DILocation(line: 39, column: 62, scope: !1020)
!1020 = !DILexicalBlockFile(scope: !1017, file: !1018, discriminator: 0)
!1021 = !DILocation(line: 40, column: 16, scope: !1020)
!1022 = distinct !DISubprogram(name: "utils::validate_upgrade_authority.anon.2", linkageName: "utils::validate_upgrade_authority.anon.2", scope: null, file: !1018, line: 38, type: !5, scopeLine: 38, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1023 = !DILocation(line: 38, column: 88, scope: !1024)
!1024 = !DILexicalBlockFile(scope: !1022, file: !1018, discriminator: 0)
!1025 = !DILocation(line: 39, column: 44, scope: !1024)
!1026 = !DILocation(line: 39, column: 15, scope: !1024)
!1027 = !DILocation(line: 39, column: 12, scope: !1024)
!1028 = !DILocation(line: 39, column: 62, scope: !1024)
!1029 = distinct !DISubprogram(name: "utils::validate_upgrade_authority.anon.1", linkageName: "utils::validate_upgrade_authority.anon.1", scope: null, file: !1018, line: 31, type: !5, scopeLine: 31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1030 = !DILocation(line: 31, column: 70, scope: !1031)
!1031 = !DILexicalBlockFile(scope: !1029, file: !1018, discriminator: 0)
!1032 = !DILocation(line: 32, column: 8, scope: !1031)
!1033 = !DILocation(line: 37, column: 49, scope: !1031)
!1034 = !DILocation(line: 37, column: 8, scope: !1031)
!1035 = !DILocation(line: 38, column: 8, scope: !1031)
!1036 = !DILocation(line: 38, column: 88, scope: !1031)
!1037 = distinct !DISubprogram(name: "utils::validate_upgrade_authority.3", linkageName: "utils::validate_upgrade_authority.3", scope: null, file: !1018, line: 25, type: !5, scopeLine: 25, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1038 = !DILocation(line: 25, column: 4, scope: !1039)
!1039 = !DILexicalBlockFile(scope: !1037, file: !1018, discriminator: 0)
!1040 = !DILocation(line: 30, column: 30, scope: !1039)
!1041 = !DILocation(line: 30, column: 4, scope: !1039)
!1042 = !DILocation(line: 31, column: 47, scope: !1039)
!1043 = !DILocation(line: 31, column: 4, scope: !1039)
!1044 = !DILocation(line: 31, column: 70, scope: !1039)
!1045 = !DILocation(line: 49, column: 4, scope: !1039)
!1046 = distinct !DISubprogram(name: "utils::checked_add.anon.1", linkageName: "utils::checked_add.anon.1", scope: null, file: !1018, line: 57, type: !5, scopeLine: 57, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1047 = !DILocation(line: 57, column: 47, scope: !1048)
!1048 = !DILexicalBlockFile(scope: !1046, file: !1018, discriminator: 0)
!1049 = !DILocation(line: 58, column: 8, scope: !1048)
!1050 = distinct !DISubprogram(name: "utils::checked_add.anon.2", linkageName: "utils::checked_add.anon.2", scope: null, file: !1018, line: 59, type: !5, scopeLine: 59, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1051 = !DILocation(line: 59, column: 11, scope: !1052)
!1052 = !DILexicalBlockFile(scope: !1050, file: !1018, discriminator: 0)
!1053 = !DILocation(line: 60, column: 8, scope: !1052)
!1054 = !DILocation(line: 61, column: 8, scope: !1052)
!1055 = distinct !DISubprogram(name: "utils::checked_add.2", linkageName: "utils::checked_add.2", scope: null, file: !1018, line: 53, type: !5, scopeLine: 53, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1056 = !DILocation(line: 53, column: 4, scope: !1057)
!1057 = !DILexicalBlockFile(scope: !1055, file: !1018, discriminator: 0)
!1058 = !DILocation(line: 57, column: 28, scope: !1057)
!1059 = !DILocation(line: 57, column: 4, scope: !1057)
!1060 = !DILocation(line: 57, column: 47, scope: !1057)
!1061 = !DILocation(line: 59, column: 11, scope: !1057)
!1062 = distinct !DISubprogram(name: "utils::checked_sub.anon.1", linkageName: "utils::checked_sub.anon.1", scope: null, file: !1018, line: 70, type: !5, scopeLine: 70, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1063 = !DILocation(line: 70, column: 47, scope: !1064)
!1064 = !DILexicalBlockFile(scope: !1062, file: !1018, discriminator: 0)
!1065 = !DILocation(line: 71, column: 8, scope: !1064)
!1066 = distinct !DISubprogram(name: "utils::checked_sub.anon.2", linkageName: "utils::checked_sub.anon.2", scope: null, file: !1018, line: 72, type: !5, scopeLine: 72, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1067 = !DILocation(line: 72, column: 11, scope: !1068)
!1068 = !DILexicalBlockFile(scope: !1066, file: !1018, discriminator: 0)
!1069 = !DILocation(line: 73, column: 8, scope: !1068)
!1070 = !DILocation(line: 74, column: 8, scope: !1068)
!1071 = distinct !DISubprogram(name: "utils::checked_sub.2", linkageName: "utils::checked_sub.2", scope: null, file: !1018, line: 66, type: !5, scopeLine: 66, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1072 = !DILocation(line: 66, column: 4, scope: !1073)
!1073 = !DILexicalBlockFile(scope: !1071, file: !1018, discriminator: 0)
!1074 = !DILocation(line: 70, column: 28, scope: !1073)
!1075 = !DILocation(line: 70, column: 4, scope: !1073)
!1076 = !DILocation(line: 70, column: 47, scope: !1073)
!1077 = !DILocation(line: 72, column: 11, scope: !1073)
!1078 = distinct !DISubprogram(name: "utils::checked_div.anon.1", linkageName: "utils::checked_div.anon.1", scope: null, file: !1018, line: 83, type: !5, scopeLine: 83, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1079 = !DILocation(line: 83, column: 47, scope: !1080)
!1080 = !DILexicalBlockFile(scope: !1078, file: !1018, discriminator: 0)
!1081 = !DILocation(line: 84, column: 8, scope: !1080)
!1082 = distinct !DISubprogram(name: "utils::checked_div.anon.2", linkageName: "utils::checked_div.anon.2", scope: null, file: !1018, line: 85, type: !5, scopeLine: 85, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1083 = !DILocation(line: 85, column: 11, scope: !1084)
!1084 = !DILexicalBlockFile(scope: !1082, file: !1018, discriminator: 0)
!1085 = !DILocation(line: 86, column: 8, scope: !1084)
!1086 = !DILocation(line: 87, column: 8, scope: !1084)
!1087 = distinct !DISubprogram(name: "utils::checked_div.2", linkageName: "utils::checked_div.2", scope: null, file: !1018, line: 79, type: !5, scopeLine: 79, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1088 = !DILocation(line: 79, column: 4, scope: !1089)
!1089 = !DILexicalBlockFile(scope: !1087, file: !1018, discriminator: 0)
!1090 = !DILocation(line: 83, column: 28, scope: !1089)
!1091 = !DILocation(line: 83, column: 4, scope: !1089)
!1092 = !DILocation(line: 83, column: 47, scope: !1089)
!1093 = !DILocation(line: 85, column: 11, scope: !1089)
!1094 = distinct !DISubprogram(name: "utils::checked_mul.anon.1", linkageName: "utils::checked_mul.anon.1", scope: null, file: !1018, line: 96, type: !5, scopeLine: 96, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1095 = !DILocation(line: 96, column: 47, scope: !1096)
!1096 = !DILexicalBlockFile(scope: !1094, file: !1018, discriminator: 0)
!1097 = !DILocation(line: 97, column: 8, scope: !1096)
!1098 = distinct !DISubprogram(name: "utils::checked_mul.anon.2", linkageName: "utils::checked_mul.anon.2", scope: null, file: !1018, line: 98, type: !5, scopeLine: 98, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1099 = !DILocation(line: 98, column: 11, scope: !1100)
!1100 = !DILexicalBlockFile(scope: !1098, file: !1018, discriminator: 0)
!1101 = !DILocation(line: 99, column: 8, scope: !1100)
!1102 = !DILocation(line: 100, column: 8, scope: !1100)
!1103 = distinct !DISubprogram(name: "utils::checked_mul.2", linkageName: "utils::checked_mul.2", scope: null, file: !1018, line: 92, type: !5, scopeLine: 92, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!1104 = !DILocation(line: 92, column: 4, scope: !1105)
!1105 = !DILexicalBlockFile(scope: !1103, file: !1018, discriminator: 0)
!1106 = !DILocation(line: 96, column: 28, scope: !1105)
!1107 = !DILocation(line: 96, column: 4, scope: !1105)
!1108 = !DILocation(line: 96, column: 47, scope: !1105)
!1109 = !DILocation(line: 98, column: 11, scope: !1105)
