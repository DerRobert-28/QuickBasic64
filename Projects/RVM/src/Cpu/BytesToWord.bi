function Cpu.BytesToWord% (loByte as _byte, hiByte as _byte)
	Cpu.BytesToWord = cvi(chr$(loByte and 255) + chr$(hiByte and 255))
end function
