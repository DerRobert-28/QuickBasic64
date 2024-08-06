sub Cpu.flagIf (bitNumber as _unsigned _byte, value as integer)
	if value then Cpu.setFlag bitNumber else Cpu.clearFlag bitNumber
end sub
