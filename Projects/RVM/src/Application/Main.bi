variables:
	dim result as integer

begin:
	screen 0
	'width 40, 25
	_fullscreen
	:
	print "RVM - Demo CPU"
	print
	:
	VirtualMemoryChecking = FALSE
	Memory.loadDefaults Memory.create(MEMORY_SIZE)
	:
	Programs.loadProgram3 START_ADDRESS_DEFAULT
	result = Cpu.debug(START_ADDRESS_DEFAULT)
	:
	invoke Memory.dump(StackPagePtr + 240)			'for debugging purposes
	invoke Memory.dump(START_ADDRESS_DEFAULT)		'for debugging purposes
	:
	Memory.release
	:
	print
	print "CPU halted with result: " + Hex.fromWord(result)
end
