sub Memory.release ()
	dim notInitializedMemory as _mem
	:
	if Memory.isCreated then _memfree VirtualMemory
	VirtualMemory = notInitializedMemory
end sub
