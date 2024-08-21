sub Cpu.releaseInterrupts ()
	if not Memory.isCreated then exit sub
	:
	if VirtualKeyboardInterrupt then
		timer(VirtualKeyboardInterrupt) off
		timer(VirtualKeyboardInterrupt) free
	endif
end sub
