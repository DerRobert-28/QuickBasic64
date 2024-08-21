sub Interrupts.checkBreak ()
	if CpuFlags and _shl(1, INTERUPT_FLAG) then
		timer(VirtualKeyboardInterrupt) stop
	else
		timer(VirtualKeyboardInterrupt) on
	endif
end sub
