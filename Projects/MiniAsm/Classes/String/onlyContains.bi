function String.onlyContains`(this as string, search as string)
	dim				_
		ch	as string,	_ 
		i	as integer,	_
		result	as bit,		_
		trimmed	as string

	result = False
	trimmed = String.trim$(this)
	for i = 0 to String.Length(trimmed) - 1
		ch = String.CharAt(trimmed, i)
		result = String.contains(search, ch)
		if not result then exit for
	next

	String.onlyContains = result
end function
