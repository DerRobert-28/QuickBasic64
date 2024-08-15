function Opcode.Break% ()
	VirtualMemoryChecking = FALSE
	:
	'Keyboard Interrupt:
	[0300] 
	:
	Opcode.Break = 1
end function
