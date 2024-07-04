function String.trim$(this as string)
	dim isNoBr	as bit
	dim isNull	as bit
	dim isSpace	as bit
	dim isTab	as bit
	dim result	as string
	:
	result = this
	do
		isNoBr = String.startsWith(result, Char.NoBr)
		isNull = String.startsWith(result, Char.Null)
		isSpace = String.startsWith(result, Char.Space)
		isTab = String.startsWith(result, Char.Tabulator)

		if Neither(isNoBr, Neither(isNull, Neither(isSpace, isTab))) then exit do

		result = String.subString(result, 1)
	loop
	do
		isNoBr = String.endsWith(result, Char.NoBr)
		isNull = String.endsWith(result, Char.Null)
		isSpace = String.endsWith(result, Char.Space)
		isTab = String.endsWith(result, Char.Tabulator)

		if Neither(isNoBr, Neither(isNull, Neither(isSpace, isTab))) then exit do

		result = String.subStr(result, 0, String.Length(result) - 1)
	loop

	String.trim = result
end function
