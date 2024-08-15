sub Programs.loadProgram5 (address as _unsigned long)
	'LDA #01
	Memory.push address, &H08
	Memory.push address, &H01
	:
	'BNE #02
	Memory.push address, &HA0
	Memory.push address, &H02
	:
	'JMP #02
	Memory.push address, &HF8
	Memory.push address, &H02
	:
	'LDA #77
	Memory.push address, &H08
	Memory.push address, &H77
	:
	'HLT
	Memory.push address, &HFF
end sub
