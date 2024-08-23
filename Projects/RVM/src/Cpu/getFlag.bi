function Cpu.getFlag~` (bitNumber as _unsigned _byte)
	dim flag as _unsigned _byte
	:
	flag = _shl(1, bitNumber)
	Cpu.getFlag = (CpuFlags and flag) <> 0
end function
