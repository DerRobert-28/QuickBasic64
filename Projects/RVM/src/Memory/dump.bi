function Memory.dump% (address as _unsigned long)
	dim i as _byte
	:
	if not Memory.isCreated then
		Memory.dump = MissingMemoryException
		exit function
	elseif address >= VirtualMemory.size then
		Memory.dump = IllegalAddressException
		exit function
	endif
	:
	print Hex.fromWord(address) + ": ";
	for i = 0 to 15
		print Hex.fromByte(Memory.peek(address + i));
		if i = 7 then print "-"; else print " ";
	next
	print
	:
	Memory.dump = SuccessResult
end function
