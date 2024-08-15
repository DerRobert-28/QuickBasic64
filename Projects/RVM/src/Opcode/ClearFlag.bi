function Opcode.ClearFlag% (opcode as _unsigned _byte)
	dim flag as _unsigned _byte
	:
	'flag = opcode mod FLAGS_COUNT
	flag = opcode and FLAGS_BITMASK
	Cpu.clearFlag flag
	:
	if flag = CARRY_FLAG then
		Opcode.ClearFlag = 1
	else
		Opcode.ClearFlag = ReservedInstructionException
	endif
end function
