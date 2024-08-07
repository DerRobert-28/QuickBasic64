function Opcode.LoadRegisterValue% (opcode as _unsigned _byte, value as _unsigned _byte)
	CpuRegisters(opcode and 3) = value
	:
	Cpu.flagIf ZEROFLAG, value = 0
	Cpu.flagIf SIGNFLAG, value and 128
	:
	Opcode.LoadRegisterValue = 2
end function
