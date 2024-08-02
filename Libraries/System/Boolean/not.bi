$includeonce

'$include:'./internal/illegalBoolean.bi'
'$include:'./isTruthy.bi'

function Boolean.not%% (this as _byte)
	if Boolean.isTruthy(this) then
		Boolean.not = not(this)
	else
		Boolean.not = Boolean.internal.illegalBoolean
	endif
end function
