sub Programs.loadProgram6 (address as _unsigned long)
	'LDA #00
	Memory.push address, &H08
	Memory.push address, &H00
	:
	'BIT #FF
	Memory.push address, &H20
	Memory.push address, &HFF
	:
	'BNE #02
	Memory.push address, &HA0
	Memory.push address, &H02
	:
	'LDX #11
	Memory.push address, &H09
	Memory.push address, &H11
	:
	'LDA #40
	Memory.push address, &H08
	Memory.push address, &H40
	:
	'BIT #FF
	Memory.push address, &H20
	Memory.push address, &HFF
	:
	'BVC #02
	Memory.push address, &HA1
	Memory.push address, &H02
	:
	'LDY #22
	Memory.push address, &H0A
	Memory.push address, &H22
	:
	'LDA #80
	Memory.push address, &H08
	Memory.push address, &H80
	:
	'BIT #FF
	Memory.push address, &H20
	Memory.push address, &HFF
	:
	'BPL #02
	Memory.push address, &HA2
	Memory.push address, &H02
	:
	'LDA #33
	Memory.push address, &H08
	Memory.push address, &H33
	:
	'HLT
	Memory.push address, &HFF
end sub
