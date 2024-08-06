function Hex.fromByte$ (value as _unsigned _byte)
	Hex.fromByte = right$("0" + hex$(value), 2)
end function
