$includeonce

'$include:'./internal/illegalBoolean.bi'
'$include:'./isTrue.bi'
'$include:'./isTruthy.bi'

function Boolean.and%% (first as _byte, second as _byte)
	if not Boolean.isTruthy(first) then
		Boolean.and = Boolean.internal.illegalBoolean
	elseif not Boolean.isTruthy(second) then
		Boolean.and = Boolean.internal.illegalBoolean
	else
		Boolean.and = Boolean.isTrue(first) and Boolean.isTrue(second)
	endif
end function

function Boolean.and2%% (first as _byte, second as _byte, third as _byte)
	Boolean.and2 = Boolean.and(Boolean.and(first, second), third)
end function

function Boolean.and3` (first as _byte, second as _byte, third as _byte, fourth as _byte)
	Boolean.and3 = Boolean.and(Boolean.and2(first, second, third), fourth)
end function
