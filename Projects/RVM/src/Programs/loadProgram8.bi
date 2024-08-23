sub Programs.loadProgram8 (address as _unsigned long)
	'LDA #01
	Memory.push address, &H08
	Memory.push address, &H01
	:
	'ADD #FF
	Memory.push address, &H32
	Memory.push address, &HFF
	:
	'TAX
	Memory.push address, &H05
	:
	'LDA #01
	Memory.push address, &H08
	Memory.push address, &H01
	:
	'ADD #FE
	Memory.push address, &H32
	Memory.push address, &HFE 
	:
	'TAY
	Memory.push address, &H06
	:
	'LDA #7F
	Memory.push address, &H08
	Memory.push address, &H7F
	:
	'ADD #01
	Memory.push address, &H32
	Memory.push address, &H01
	:
	'HLT
	Memory.push address, &HFF
end sub
