sub File.writeToken(this as integer, tokenValue as unsigned integer64)
	dim						_
		charValue	as integer,		_
		value		as unsigned integer64

	value = tokenValue
	if value = 0 then
		File.write this, Char.from(0)
	else
		while value > 0
			charValue = value and 255
			File.write this, Char.from(charValue)
			value = value \ 256
		wend
	endif

end sub
