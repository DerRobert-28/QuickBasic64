$includeonce

'$include:'../../Boolean/neither.bi'
'$include:'../Substr.bi'
'$include:'../Substring.bi'
'$include:'../Length.bi'

$if CHAR_BI then
$else
'$include:'./endsWithChar.bi'
'$include:'./startsWithChar.bi'
$endif

function String.internal.trimExtended$(this as string)
	dim as _bit isNoBr, isNul, isSpace, isTab
	dim result as string

	result = this
	do
$if CHAR_BI then
			isNoBr = String.startsWith(result, Char.NoBreak)
			isNul = String.startsWith(result, Char.Null)
			isSpace = String.startsWith(result, Char.Space)
			isTab = String.startsWith(result, Char.Tabulator)
$else
			isNoBr = String.startsWithChar(result, 255)
			isNul = String.startsWithChar(result, 0)
			isSpace = String.startsWithChar(result, 32)
			isTab = String.startsWithChar(result, 9)
$endif
		if Boolean.neither3(isNoBr, isNul, isSpace, isTab) then exit do
		result = String.Substring(result, 1)
	loop
	do
$if CHAR_BI then
			isNul = String.endsWith(result, Char.Null)
			isTab = String.endsWith(result, Char.Tabulator)
			isSpace = String.endsWith(result, Char.Space)
			isNoBr = String.endsWith(result, Char.NoBreak)
$else
			isNul = String.endsWithChar(result, 0)
			isTab = String.endsWithChar(result, 9)
			isSpace = String.endsWithChar(result, 32)
			isNoBr = String.endsWithChar(result, 255)
$endif
		if Boolean.neither3(isNoBr, isNul, isSpace, isTab) then exit do
		result = String.Substr(result, 0, String.Length(result) - 1)
	loop

	String.internal.trimExtended = result
end function
