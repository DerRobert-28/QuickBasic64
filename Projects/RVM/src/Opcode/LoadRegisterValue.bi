function Opcode.LoadRegisterValue% (opcode as _unsigned _byte, value as _unsigned _byte)
	CpuRegisters(opcode and 3) = value
	:
	Cpu.flagIf ZERO_FLAG, value = 0
	Cpu.flagIf SIGN_FLAG, value and 128
	:
	Opcode.LoadRegisterValue = 2
end function
