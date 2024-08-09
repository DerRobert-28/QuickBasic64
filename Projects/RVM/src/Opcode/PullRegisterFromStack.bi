function Opcode.PullRegisterFromStack% (opcode as _unsigned _byte)
	dim value as _unsigned _byte
	:
	value = opcode mod REGISTER_COUNT
	CpuRegisters(value) = Memory.peek(StackPagePtr + CpuRegisters(STACKPOINTER))
	CpuRegisters(STACKPOINTER) = CpuRegisters(STACKPOINTER) + 1
	:
	if value = ACCU_REGISTER then
		Opcode.PullRegisterFromStack = 1
	else
		Opcode.PullRegisterFromStack = ReservedInstructionException
	endif
end function
