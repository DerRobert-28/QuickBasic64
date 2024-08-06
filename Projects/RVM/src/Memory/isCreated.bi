function Memory.isCreated` ()
	dim result as _bit
	:
	result = 0
	if VirtualMemory.offset then result = 1
	if VirtualMemory.size then result = 1
	if VirtualMemory.type then result = 1
	:
	Memory.isCreated = result
end function
