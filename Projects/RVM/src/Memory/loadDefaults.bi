sub Memory.loadDefaults (dummy as _byte)
	dim i as _byte
	:
	if not Memory.isCreated then exit sub
	:
	_memfill VirtualMemory, VirtualMemory.offset, VirtualMemory.size, 0 as _byte 
	VirtualMemoryChecking = FALSE
	'
	'Default register values:
	'
	for i = 0 to REGISTER_COUNT - 1
		invoke Memory.poke(ZP_REGISTER_INITVALUES + i, 0)
	next
	invoke Memory.poke(ZP_FLAGS_INITVALUE, 0)
	'
	'Default stack page:
	'
	invoke Memory.poke(ZP_STACKPOINTER_PAGE, 1)
	StackPagePtr = STACK_ADDRESS_DEFAULT
	'
	'Default keyboard buffer:
	'
	invoke Memory.poke(ZP_KEYBOARD_BUFFER_PAGE, 2)
	invoke Memory.poke(ZP_KEYBOARD_BUFFER_READ_OFFSET, 0)
	invoke Memory.poke(ZP_KEYBOARD_BUFFER_WRITE_OFFSET, 0)
end sub
