function Opcode.TransferIntoAccu% (opcode as _unsigned _byte)
	dim source as _unsigned _byte
	dim value as _unsigned _byte
	:
	'source = opcode mod INDEX_COUNT
	source = opcode mod REGISTER_COUNT
	value = CpuRegisters(source)
	CpuRegisters(ACCU_REGISTER) = value
	:
	Cpu.flagIf ZERO_FLAG, value = 0
	Cpu.flagIf SIGN_FLAG, value and 128
	:
	if (source = 0) or (source = 3) then
		Opcode.TransferIntoAccu = ReservedInstructionException
	else
		Opcode.TransferIntoAccu = 1
	endif
end function
