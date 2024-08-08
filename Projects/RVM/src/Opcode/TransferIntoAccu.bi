function Opcode.TransferIntoAccu% (opcode as _unsigned _byte)
	dim value as _unsigned _byte
	:
	value = CpuRegisters(INDEX_REGISTER + (opcode mod INDEX_COUNT))
	CpuRegisters(ACCU_REGISTER) = value
	:
	Cpu.flagIf ZERO_FLAG, value = 0
	Cpu.flagIf SIGN_FLAG, value and 128
	:
	Opcode.TransferIntoAccu = 1
end function
