function Opcode.XorValue% (value as _unsigned _byte)
	dim result as _unsigned _byte
	:
	CpuRegisters(ACCU_REGISTER) = CpuRegisters(ACCU_REGISTER) xor value
	:
	Cpu.flagIf ZERO_FLAG, result = 0
	Cpu.flagIf SIGN_FLAG, result and 128
	:
	Opcode.XorValue = 2
end function
