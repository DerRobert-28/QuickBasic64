$includeonce

function String.internal.trimSimple$ (this as string)
	String.internal.trimSimple = ltrim$(rtrim$(this))
end function
