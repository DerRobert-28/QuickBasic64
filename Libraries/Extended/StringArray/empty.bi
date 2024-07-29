$includeonce

'$include:'../../System/Classes/String/Empty.bi'

sub StringArray.empty (this() as string)
	dim as long each

	for each = lbound(this) to ubound(this)
		this(each) = String.Empty
	next
end sub
