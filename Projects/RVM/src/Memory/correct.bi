function Memory.correct~& (address as _unsigned long)
	dim this as _unsigned long
	:
	this = cvl(left$(_mk$(_offset, VirtualMemory.size), 4))
	:
	Memory.correct = address mod this
end function
