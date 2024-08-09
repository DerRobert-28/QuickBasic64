function Opcode.TransferFromAccu% (opcode as _unsigned _byte)
	dim value as _unsigned _byte
	:
	value = CpuRegisters(ACCU_REGISTER)
	CpuRegisters(INDEX_REGISTER + (opcode mod INDEX_COUNT)) = value
	:
	Cpu.flagIf ZERO_FLAG, value = 0
	Cpu.flagIf SIGN_FLAG, value and 128
	:
	Opcode.TransferFromAccu = 1
end function
