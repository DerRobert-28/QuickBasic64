function Opcode.SetFlag% (opcode as _unsigned _byte)
	dim flag as _unsigned _byte
	:
	flag = opcode mod FLAGCOUNT
	Cpu.setFlag flag
	:
	if flag = CARRYFLAG then
		Opcode.SetFlag = 1
	else
		Opcode.SetFlag = ReservedInstructionException
	endif
end function
