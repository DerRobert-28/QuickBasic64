$includeonce

'$include:'../Boolean/isTrue.bi'

function String.contains` (this as string, search as string)
	String.contains = Boolean.isTrue(instr(this, search))
end function
