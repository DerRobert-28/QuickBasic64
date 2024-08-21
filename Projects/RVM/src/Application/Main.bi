variables:
	dim dummy as string
	dim result as integer

begin:
	'
	'Prepare console window: 
	'
	screen 0
	'width 40, 25
	_fullscreen
	print "RVM - Demo CPU"
	print
	'
	'Create/initialize memory and interrupts: 
	'
	VirtualMemoryChecking = FALSE
	Memory.loadDefaults Memory.create(MEMORY_SIZE)
	Interrupts.initialize
	'
	'Load and execute test programme: 
	'
	Programs.loadProgram8 START_ADDRESS_DEFAULT
	result = Cpu.debug(START_ADDRESS_DEFAULT)
	'
	'Dump the last results: 
	'
	invoke Memory.dump(StackPagePtr + 240)		'for debugging purposes
	invoke Memory.dump(START_ADDRESS_DEFAULT)	'for debugging purposes
	'
	'Release interrupts and memory: 
	'
	Cpu.releaseInterrupts
	Memory.release
	print
	print "CPU halted with result: " + Hex.fromWord(result)
	line input dummy
end
