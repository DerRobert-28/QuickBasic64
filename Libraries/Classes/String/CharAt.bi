$includeonce

'$include:'./Substr.bi'

function String.CharAt$ (this as string, index as long)
	String.CharAt = String.Substr(this, index, 1)
end function
