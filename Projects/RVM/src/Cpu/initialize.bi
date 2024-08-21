sub Cpu.initialize ()
	dim i as _byte
	:
	if not Memory.isCreated then exit sub
	:
	for i = 0 to REGISTER_COUNT - 1
		CpuRegisters(i) = Memory.peek(ZP_REGISTER_INITVALUES + i)
	next
	CpuFlags = Memory.peek(ZP_FLAGS_INITVALUE)
	:
	StackPagePtr = Cpu.BytesToLong(Memory.peek(ZP_STACKPOINTER_PAGE), 0)
	if StackPagePtr < 256 then
		StackPagePtr = 256
		invoke Memory.poke(ZP_STACKPOINTER_PAGE, 1)
	endif
	:
	'invoke Memory.poke(ZP_KEYBOARD_BUFFER_READ_OFFSET, 0)
	'invoke Memory.poke(ZP_KEYBOARD_BUFFER_WRITE_OFFSET, 0)
end sub
