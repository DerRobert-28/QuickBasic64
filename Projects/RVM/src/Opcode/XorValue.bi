function Opcode.XorValue% (value as _unsigned _byte)
	dim result as _unsigned _byte
	:
	result = CpuRegisters(ACCU_REGISTER) xor value
	Cpu.flagIf ZERO_FLAG, result = 0
	Cpu.flagIf SIGN_FLAG, result and 128
	:
	CpuRegisters(ACCU_REGISTER) = result
	Opcode.XorValue = 2
end function
