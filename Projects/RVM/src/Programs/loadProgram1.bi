sub Programs.loadProgram1 (address as _unsigned long)
	'LDA #12
	Memory.push address, &H08
	Memory.push address, &H12
	'PHA
	Memory.push address, &H14
	'LDA #34
	Memory.push address, &H08
	Memory.push address, &H34
	'TAX
	Memory.push address, &H06
	'PLA
	Memory.push address, &H18
	'HLT
	Memory.push address, &HFF
end sub
