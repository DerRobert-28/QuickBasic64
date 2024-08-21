function Memory.poke% (address as _unsigned long, value as _unsigned _byte)
	if not Memory.isCreated then
		Memory.poke = MissingMemoryException
		exit function
	elseif address >= VirtualMemory.size then
		Memory.poke = IllegalAddressException
		exit function
	'elseif Memory.checkFailed(VirtualMemoryChecking, address) then
	'	Memory.poke = IllegalAddressException
	'	exit function
	endif
	:
	_memput VirtualMemory, VirtualMemory.offset + address, value
	:
	Memory.poke = SuccessResult
end function
