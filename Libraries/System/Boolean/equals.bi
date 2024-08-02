$includeonce

'$include:'./internal/illegalBoolean.bi'
'$include:'./isBoolean.bi'

function Boolean.equals` (first as _byte, second as _byte)
	if not Boolean.isBoolean(first) then
		Boolean.equals = Boolean.internal.illegalBoolean
		exit function
	endif
	if not Boolean.isBoolean(second) then
		Boolean.equals = Boolean.internal.illegalBoolean
		exit function
	endif

	Boolean.equals` = (first) = (second)
end function

