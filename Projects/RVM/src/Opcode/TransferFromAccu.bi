function Opcode.TransferFromAccu% (opcode as _unsigned _byte)
	dim value as _unsigned _byte
	:
	value = CpuRegisters(ACCUREGISTER)
	CpuRegisters(INDEXREGISTER + (opcode mod INDEXCOUNT)) = value
	:
	Cpu.flagIf ZEROFLAG, value = 0
	Cpu.flagIf SIGNFLAG, value and 128
	:
	Opcode.TransferFromAccu = 1
end function
