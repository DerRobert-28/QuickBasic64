$includeonce

'$include:'../../Boolean/neither.bi'
'$include:'../Substr.bi'
'$include:'../Substring.bi'
'$include:'../Length.bi'
'$include:'./endsWithChar.bi'
'$include:'./startsWithChar.bi'

function String.internal.trimExtended$(this as string)
	dim as _bit isNoBr, isNul, isSpace, isTab
	dim result as string

	result = this
	do
		isNoBr = String.startsWith(result, Char.NoBreak)
		isNul = String.startsWith(result, Char.Null)
		isSpace = String.startsWith(result, Char.Space)
		isTab = String.startsWith(result, Char.Tabulator)
		if Boolean.neither3(isNoBr, isNul, isSpace, isTab) then exit do
		result = String.Substring(result, 1)
	loop
	do
		isNul = String.endsWith(result, Char.Null)
		isTab = String.endsWith(result, Char.Tabulator)
		isSpace = String.endsWith(result, Char.Space)
		isNoBr = String.endsWith(result, Char.NoBreak)
		if Boolean.neither3(isNoBr, isNul, isSpace, isTab) then exit do
		result = String.Substr(result, 0, String.Length(result) - 1)
	loop

	String.internal.trimExtended = result
end function
