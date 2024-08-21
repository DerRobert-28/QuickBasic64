function Opcode.ClearFlag% (opcode as _unsigned _byte)
	dim flag as _unsigned _byte
	:
	'flag = opcode mod FLAGS_COUNT
	flag = opcode and FLAGS_BITMASK
	Cpu.clearFlag flag
	Interrupts.checkBreak
	:
	Opcode.ClearFlag = 1
end function
