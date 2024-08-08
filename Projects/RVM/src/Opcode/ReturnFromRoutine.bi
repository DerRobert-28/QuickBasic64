function Opcode.ReturnFromRoutine% ()
	dim i			as _byte
	dim pick		as integer
	dim returnAddress	as string
	:
	returnAddress = ""
	for i = 1 to 2
		pick = Memory.peek(StackPagePtr + CpuRegisters(STACKPOINTER))
		if isException(pick) then exit for 
		returnAddress = chr$(pick) + returnAddress
		CpuRegisters(STACKPOINTER) = CpuRegisters(STACKPOINTER) + 1
	next
	InstructionPtr = cvi(left$(returnAddress + mki$(0), 2))
	:
	Opcode.ReturnFromRoutine = DefaultResult
end function
