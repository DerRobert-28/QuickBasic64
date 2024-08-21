sub Interrupts.initialize ()
	'
	'Keyboard interrupt:
	'
	VirtualKeyboardInterrupt = _freetimer
	on timer(VirtualKeyboardInterrupt, 0.2) Interrupt.Keyboard
	timer(VirtualKeyboardInterrupt) on
end sub
