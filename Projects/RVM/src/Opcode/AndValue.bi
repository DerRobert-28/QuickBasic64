function Opcode.AndValue% (value as _unsigned _byte)
	dim result as _unsigned _byte
	:
	result = CpuRegisters(ACCU_REGISTER) and value
	Cpu.flagIf ZERO_FLAG, result = 0
	Cpu.flagIf SIGN_FLAG, result and 128
	:
	CpuRegisters(ACCU_REGISTER) = result
	Opcode.AndValue = 2
end function
