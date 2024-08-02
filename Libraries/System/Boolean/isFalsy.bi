$includeonce

'$include:'./equals.bi'
'$include:'./internal/TrueLiteral.bi
'$include:'./internal/FalseLiteral.bi'

function Boolean.isFalsy` (this as _byte)
	if Boolean.equals(this, Boolean.internal.TrueLiteral) then
		Boolean.isFalsy = Boolean.internal.FalseLiteral
	else
		Boolean.isFalsy = Boolean.internal.TrueLiteral
	endif
end function
