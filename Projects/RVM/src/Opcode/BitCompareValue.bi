function Opcode.BitCompareValue% (value as _unsigned _byte)
	dim result as _unsigned _byte
	:
	result = CpuRegisters(ACCU_REGISTER) and value
	:
	Cpu.flagIf ZERO_FLAG, result = 0
	Cpu.flagIf OVERFLOW_FLAG, result and 64
	Cpu.flagIf SIGN_FLAG, result and 128
	:
	Opcode.BitCompareValue = 2
end function
