function Memory.create% (size as _unsigned long)
	if Memory.isCreated then
		Memory.create = MemoryAlreadyReservedException
		exit function
	endif
	'Current implementation limit:
	if size > 65536 then
		Memory.create = InvalidMemorySizeException
		exit function
	endif
	VirtualMemory = _memnew(size)
	Memory.create = SuccessResult
end function
