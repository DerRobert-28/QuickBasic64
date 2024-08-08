function Opcode.PullFlagsFromStack% ()
	CpuFlags = Memory.peek(StackPagePtr + CpuRegisters(STACKPOINTER))
	CpuRegisters(STACKPOINTER) = CpuRegisters(STACKPOINTER) + 1
	:
	Opcode.PullFlagsFromStack = 1
end function
