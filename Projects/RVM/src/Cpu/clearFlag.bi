sub Cpu.clearFlag (bitNumber as _unsigned _byte)
	dim flag as _unsigned _byte
	:
	flag = _shl(1, bitNumber)
	CpuFlags = (CpuFlags or flag) xor flag
end sub
