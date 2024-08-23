sub Programs.loadProgram3 (address as _unsigned long)
	'LDA #00
	Memory.push address, &H08
	Memory.push address, &H00
	:
	'BEQ #02
	Memory.push address, &HA8
	Memory.push address, &H02
	:
	'JMP #02
	Memory.push address, &HF8
	Memory.push address, &H02
	:
	'LDA #99
	Memory.push address, &H08
	Memory.push address, &H99
	:
	'HLT
	Memory.push address, &HFF
end sub
