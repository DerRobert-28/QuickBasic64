$includeonce

'$include:'../startsWith.bi'

function String.internal.startsWithChar`(this as string, search as integer)
	$if CHAR_BI then
		String.internal.startsWithChar = String.startsWith(this, Char.from(search))
	$else
		String.internal.startsWithChar = String.startsWith(this, chr$(search and 255))
	$endif
end function
