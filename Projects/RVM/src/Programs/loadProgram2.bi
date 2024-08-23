sub Programs.loadProgram2 (address as _unsigned long)
	dim addressStr	as string
	dim loByte	as _byte
	dim hiByte	as _byte
	:
	'JMP #03
	Memory.push address, &HF8
	Memory.push address, &H03
	:
	addressStr = mkl$(address)
	loByte = asc(addressStr, 1)
	hiByte = asc(addressStr, 2)
	:
	'LDA #12
	Memory.push address, &H08
	Memory.push address, &H12
	'RTS
	Memory.push address, &HFB
	'JSR 
	Memory.push address, &HFA
	Memory.push address, loByte
	Memory.push address, hiByte
	'HLT
	Memory.push address, &HFF
end sub
