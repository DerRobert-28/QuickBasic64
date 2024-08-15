function Opcode.TransferFromAccu% (opcode as _unsigned _byte)
	dim target as _unsigned _byte
	dim value as _unsigned _byte
	:
	target = opcode mod INDEX_COUNT
	value = CpuRegisters(ACCU_REGISTER)
	CpuRegisters(target) = value
	:
	Cpu.flagIf ZERO_FLAG, value = 0
	Cpu.flagIf SIGN_FLAG, value and 128
	:
	if (source = 0) or (source = 3) then
		Opcode.TransferFromAccu = ReservedInstructionException
	else
		Opcode.TransferFromAccu = 1
	endif
end function
