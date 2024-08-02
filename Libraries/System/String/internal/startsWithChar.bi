$includeonce

'$include:'../../Char/from.bi'
'$include:'../startsWith.bi'

function String.internal.startsWithChar`(this as string, search as integer)
	String.internal.startsWithChar = String.startsWith(this, Char.from(search))
end function
