function String.readToken$(this as string)
	dim					_
		index		as integer,	_
		result		as string,	_
		workToken	as string

	workToken = String.trim(this)

	if String.isEmpty(workToken) then
		'will be ignored ...
		:
	elseif String.startsWith(workToken, Char.Comma) then
		result = String.Empty
		workToken = String.subString(workToken, 1)
		:
	'elseif String.startsWith(workToken, Char.Semicolon) then
	'	result = String.Empty
	'	workToken = String.subString(workToken, 1)
	'	:
	elseif String.startsWith(workToken, Char.Apostrophe) then
		workToken = String.subString(workToken, 1)
		if String.contains(workToken, Char.Apostrophe) then
			index = String.IndexOf(workToken, Char.Apostrophe)
			result = Format.quote(String.SubStr(workToken, 0, index))
			workToken = String.SubString(workToken, index + 1)
		else
			result = Format.quote(workToken)
			workToken = String.Empty
		endif
		:
	elseif String.startsWith(workToken, Char.Quote) then
		workToken = String.subString(workToken, 1)
		if String.contains(workToken, Char.Quote) then
			index = String.IndexOf(workToken, Char.Quote)
			result = Format.doubleQuote(String.SubStr(workToken, 0, index))
			workToken = String.SubString(workToken, index + 1)
		else
			result = Format.quote(workToken)
			workToken = String.Empty
		endif
		:
	elseif String.contains(workToken, Char.Comma) then
		index = String.IndexOf(worktoken, Char.Comma)
		result = String.subStr(workToken, 0, index)
		workToken = String.subString(workToken, index + 1)
		:
	'elseif String.contains(workToken, Char.Semicolon) then
	'	index = String.IndexOf(worktoken, Char.Semicolon)
	'	result = String.subStr(workToken, 0, index)
	'	workToken = String.subString(workToken, index + 1)
	'	:
	else
		result = workToken
		workToken = String.Empty
	endif

	this = workToken
	String.readToken = String.trim(result)
end function
