function Memory.peek% (address as _unsigned long)
	if not Memory.isCreated then
		Memory.peek = MissingMemoryException
		exit function
	elseif address >= VirtualMemory.size then
		Memory.peek = IllegalAddressException
		exit function
	endif
	:
	Memory.peek = _memget(VirtualMemory, VirtualMemory.offset + address, _unsigned _byte)
end function
