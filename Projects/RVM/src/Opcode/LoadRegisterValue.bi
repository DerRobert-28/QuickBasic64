function Opcode.LoadRegisterValue% (opcode as _unsigned _byte, value as _unsigned _byte)
	CpuRegisters(opcode and 3) = value
	:
	Cpu.flagIf ZEROFLAG, value = 0
	Cpu.flagIf SIGNFLAG, value and 128
	:
	if opcode and 2 then
		Opcode.LoadRegisterValue = ReservedInstructionException2
	else
		Opcode.LoadRegisterValue = 2
	endif
end function
