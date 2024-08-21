sub Cpu.writeBuffer (address as _unsigned long, buffer as string)
	dim i		as _unsigned integer
	dim value	as integer
	:
	if not Memory.isCreated then exit sub
	:
	for i = 1 to len(buffer)
		value = asc(buffer, i)
		if value < 1 then exit for
		invoke Memory.poke(address + i - 1, value)
	next
end sub
