function Opcode.PushFlagsToStack% ()
	CpuRegisters(STACKPOINTER) = CpuRegisters(STACKPOINTER) - 1
	invoke Memory.poke(StackPagePtr + CpuRegisters(STACKPOINTER), CpuFlags)
	:
	Opcode.PushFlagsToStack = 1
end function
