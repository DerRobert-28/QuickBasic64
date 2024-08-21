function Opcode.SetFlag% (opcode as _unsigned _byte)
	dim flag as _unsigned _byte
	:
	'flag = opcode mod FLAGS_COUNT
	flag = opcode and FLAGS_BITMASK
	Cpu.setFlag flag
	Interrupts.checkBreak
	:
	Opcode.SetFlag = 1
end function
