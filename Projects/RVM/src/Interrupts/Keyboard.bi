sub Interrupt.Keyboard()
	dim as string		buffer
	dim as string		nullBuffer
	dim as _unsigned long	bufferAdress 
	dim as _unsigned _byte	currentKey, i
	:
	if not Memory.isCreated then exit sub
	:
	VirtualMemoryChecking = FALSE
	nullBuffer = string$(256, 0)
	:
	bufferAdress = Memory.peek(Cpu.BytesToWord(ZP_KEYBOARD_BUFFER_PAGE, 0))
	buffer = Cpu.readBuffer(bufferAdress, 256)
	:
	currentKey = 0
	for i = 1 to 127
		if _keydown(Cpu.BytesToLong(i, 0)) then
			currentKey = i
			exit for
		elseif _keydown(Cpu.BytesToLong(0, i)) then
			currentKey = i + 128
			exit for
		endif
	next
	buffer = left$(buffer + chr$(currentKey) + nullBuffer, 256)
	:
	Cpu.writeBuffer bufferAdress, buffer
	VirtualMemoryChecking = TRUE
end sub
