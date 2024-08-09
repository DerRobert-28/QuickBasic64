sub Cpu.setFlag (bitNumber as _unsigned _byte)
	CpuFlags = CpuFlags or _shl(1, bitNumber)
end sub
