sub Programs.loadProgram8 (address as _unsigned long)
	'LDA #37
	Memory.push address, &H08
	Memory.push address, &H37
	:
	'AND #0F
	Memory.push address, &H22
	Memory.push address, &H0F
	:
	'TAX
	Memory.push address, &H05
	:
	'LDA #30
	Memory.push address, &H08
	Memory.push address, &H30
	:
	'ORA #06
	Memory.push address, &H24
	Memory.push address, &H06 
	:
	'TAY
	Memory.push address, &H06
	:
	'LDA #A5
	Memory.push address, &H08
	Memory.push address, &HA5
	:
	'EOR #FF
	Memory.push address, &H26
	Memory.push address, &HFF
	:
	'HLT
	Memory.push address, &HFF
end sub
