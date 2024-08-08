function Opcode.PushRegisterToStack% (opcode as _unsigned _byte)
	dim value as _unsigned _byte
	:
	value = opcode mod REGISTER_COUNT
	CpuRegisters(STACKPOINTER) = CpuRegisters(STACKPOINTER) - 1
	invoke Memory.poke(StackPagePtr + CpuRegisters(STACKPOINTER), CpuRegisters(value))
	:
	if value = ACCU_REGISTER then
		Opcode.PushRegisterToStack = 1
	else
		Opcode.PushRegisterToStack = ReservedInstructionException
	endif
end function
