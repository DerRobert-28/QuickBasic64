function Console.readKey$()
	dim length as integer
	dim this as string
	:
	length = String.Length(Char.Null)
	this = String.concat(inkey$, Char.Null)
	:
	Console.readKey = String.subStr(this, 0, length)
end function
