function Opcode.SetFlag% (opcode as _unsigned _byte)
	dim flag as _unsigned _byte
	:
	flag = opcode mod FLAGS_COUNT
	Cpu.setFlag flag
	:
	if flag = CARRY_FLAG then
		Opcode.SetFlag = 1
	else
		Opcode.SetFlag = ReservedInstructionException
	endif
end function
