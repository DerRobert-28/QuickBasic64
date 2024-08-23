sub Programs.loadProgram0 (address as _unsigned long)
	'LDA #41
	Memory.push address, &H08
	Memory.push address, &H99
	'TAX
	Memory.push address, &H06
	'TAY
	Memory.push address, &H07
	'HLT
	Memory.push address, &HFF
end sub
