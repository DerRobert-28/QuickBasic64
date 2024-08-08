function Opcode.JumpToRoutine% (address as _unsigned integer)
	dim i			as _byte
	dim returnAddress	as string
	:
	returnAddress = mkl$(Memory.correct(InstructionPtr + 3))
	for i = 1 to 2
		CpuRegisters(STACKPOINTER) = CpuRegisters(STACKPOINTER) - 1
		invoke Memory.poke(StackPagePtr + CpuRegisters(STACKPOINTER), asc(returnAddress, i))
	next
	InstructionPtr = address
	:
	Opcode.JumpToRoutine = DefaultResult
end function
