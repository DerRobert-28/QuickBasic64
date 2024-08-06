function Hex.fromWord$ (value as _unsigned integer)
	Hex.fromWord = right$("000" + hex$(value), 4)
end function

