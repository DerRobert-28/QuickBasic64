$includeonce

'$include:'./equals.bi'
'$include:'./internal/FalseLiteral.bi'
'$include:'./internal/illegalBoolean.bi'
'$include:'./internal/TrueLiteral.bi

function Boolean.isTruthy` (this as _byte)
	if Boolean.equals(this, Boolean.internal.illegalBoolean) then
		Boolean.isTruthy = Boolean.internal.FalseLiteral
	else
		Boolean.isTruthy = Boolean.internal.TrueLiteral
	endif
end function
