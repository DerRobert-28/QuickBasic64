function Opcode.TransferIntoAccu% (opcode as _unsigned _byte)
	dim value as _unsigned _byte
	:
	value = CpuRegisters(INDEXREGISTER + (opcode mod INDEXCOUNT))
	CpuRegisters(ACCUREGISTER) = value
	:
	Cpu.flagIf ZEROFLAG, value = 0
	Cpu.flagIf SIGNFLAG, value and 128
	:
	Opcode.TransferIntoAccu = 1
end function
