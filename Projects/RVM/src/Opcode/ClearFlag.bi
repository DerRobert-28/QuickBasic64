function Opcode.ClearFlag% (opcode as _unsigned _byte)
	dim flag as _unsigned _byte
	:
	flag = opcode mod FLAGCOUNT
	Cpu.clearFlag flag
	:
	if flag = CARRYFLAG then
		Opcode.ClearFlag = 1
	else
		Opcode.ClearFlag = ReservedInstructionException
	endif
end function
