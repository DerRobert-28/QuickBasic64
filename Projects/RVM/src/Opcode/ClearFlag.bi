function Opcode.ClearFlag% (opcode as _unsigned _byte)
	Cpu.clearFlag opcode and 3
	:
	if (opcode and 3) = CARRYFLAG then
		Opcode.ClearFlag = 1
	else
		Opcode.ClearFlag = ReservedInstructionException
	endif
end function
