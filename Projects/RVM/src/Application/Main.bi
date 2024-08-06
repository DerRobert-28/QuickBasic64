begin:
	screen 0
	_fullscreen
	print "RVM - Demo CPU"
	print
	:
	invoke Memory.create(65536)
	invoke Memory.poke(0, &H82)	'CLC
	invoke Memory.poke(1, &H00)	'NOP
	invoke Memory.poke(2, &H04)	'LDA #FF
	invoke Memory.poke(3, &HFF)
	invoke Memory.poke(4, &H0C)	'STA $0001
	invoke Memory.poke(5, &H01)
	invoke Memory.poke(6, &H00)
	invoke Memory.poke(7, &HFD)	'JMP $0001
	invoke Memory.poke(8, &H01)
	invoke Memory.poke(9, &H00)
	invoke Memory.poke(10, &HFF)	'HLT
	invoke Memory.dump(0)		'for debugging purposes
	result = Cpu.debug(0)
	invoke Memory.dump(0)		'for debugging purposes
	Memory.release
	:
	print
	print "CPU halted with result: " + Hex.fromWord(result)
end
