$includeonce

'$include:'../../System/Classes/Strings/areEqual.bi'

function StringArray.contains` (this() as string, search as string)
	dim as long each

	for each = lbound(this) to ubound(this)
		if Strings.areEqual(this(each), search) then
			StringArray.contains = TRUE
			exit function
		endif
	next

	StringArray.contains = FALSE
end function
