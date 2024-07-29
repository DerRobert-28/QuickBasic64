$includeonce

'$include:'../../Char/from.bi'
'$include:'../endsWith.bi'

function String.internal.endsWithChar`(this as string, search as integer)
	String.internal.endsWithChar = String.endsWith(this, Char.from(search))
end function
