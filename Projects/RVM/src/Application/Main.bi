begin:
	screen 0
	_fullscreen
	print "RVM - Demo CPU"
	print
	:
	invoke Memory.create(65536)
	invoke Memory.poke(0, &H04)	'LDA #41
	invoke Memory.poke(1, &H41)
	invoke Memory.poke(2, &H12)	'TAX
	invoke Memory.poke(3, &H13)	'TAY
	invoke Memory.poke(4, &HFF)	'HLT
	invoke Memory.dump(0)		'for debugging purposes
	result = Cpu.debug(0)
	invoke Memory.dump(0)		'for debugging purposes
	Memory.release
	:
	print
	print "CPU halted with result: " + Hex.fromWord(result)
end
