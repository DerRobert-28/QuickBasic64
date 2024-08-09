sub Memory.push (address as _unsigned long, value as _unsigned _byte)
	if not Memory.isCreated then exit sub
	if address >= VirtualMemory.size then exit sub
	:
	_memput VirtualMemory, VirtualMemory.offset + address, value
	address = address + 1
end sub
