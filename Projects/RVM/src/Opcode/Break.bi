function Opcode.Break% ()
	VirtualMemoryChecking = FALSE
	:
	Interrupt.Keyboard
	:
	Opcode.Break = 1
end function
