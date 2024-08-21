function Opcode.AndValue% (value as _unsigned _byte)
	dim result as _unsigned _byte
	:
	CpuRegisters(ACCU_REGISTER) = CpuRegisters(ACCU_REGISTER) and value
	:
	Cpu.flagIf ZERO_FLAG, result = 0
	Cpu.flagIf SIGN_FLAG, result and 128
	:
	Opcode.AndValue = 2
end function
