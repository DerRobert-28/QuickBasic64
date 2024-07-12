$includeonce

'$include:'../endsWith.bi'

function String.internal.endsWithChar`(this as string, search as integer)
	$if CHAR_BI then
		String.internal.endsWithChar = String.endsWith(this, Char.from(search))
	$else
		String.internal.endsWithChar = String.endsWith(this, chr$(search and 255))
	$endif
end function
