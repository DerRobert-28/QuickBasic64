function Opcode.CompareValue% (value as _unsigned _byte)
	dim result as _byte
	:
	result = CpuRegisters(ACCU_REGISTER) - value
	Cpu.flagIf ZERO_FLAG, result = 0
	Cpu.flagIf SIGN_FLAG, result < 0
	Cpu.flagIf CARRY_FLAG, result >= 0
	:
	Opcode.CompareValue = 2
end function
