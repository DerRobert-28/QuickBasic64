$includeonce

'$include:'./internal/FalseLiteral.bi'
'$include:'./internal/illegalBoolean.bi'
'$include:'./internal/TrueLiteral.bi'

function Boolean.isBoolean` (this as _byte)
	dim as _bit result
	
	result = Boolean.internal.FalseLiteral
	if (this) = (Boolean.internal.FalseLiteral) then result = Boolean.internal.TrueLiteral
	if (this) = (Boolean.internal.illegalBoolean) then result = Boolean.internal.TrueLiteral
	if (this) = (Boolean.internal.TrueLiteral) then result = Boolean.internal.TrueLiteral

	Boolean.isBoolean = result
end function
