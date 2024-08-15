function Cpu.BytesToLong& (loByte as _byte, hiByte as _byte)
	Cpu.BytesToLong = cvl(chr$(loByte and 255) + chr$(hiByte and 255) + mki$(0))
end function
