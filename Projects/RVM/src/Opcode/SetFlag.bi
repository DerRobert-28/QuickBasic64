function Opcode.SetFlag% (opcode as _unsigned _byte)
	Cpu.setFlag opcode and 3
	:
	if (opcode and 3) = CARRYFLAG then
		Opcode.SetFlag = 1
	else
		Opcode.SetFlag = ReservedInstructionException
	endif
end function
