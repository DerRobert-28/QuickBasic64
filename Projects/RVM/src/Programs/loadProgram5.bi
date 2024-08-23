sub Programs.loadProgram5 (address as _unsigned long)
	'LDA #00
	Memory.push address, &H08
	Memory.push address, &H00
	:
	'JSR $0300
	Memory.push address, &HFA
	Memory.push address, &H00
	Memory.push address, &H03
	:
	'BEQ #FB
	Memory.push address, &HA8
	Memory.push address, &HFB
	:
	'HLT
	Memory.push address, &HFF
end sub
