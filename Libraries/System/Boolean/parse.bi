$includeonce

'$include:'../String/equals.bi'
'$include:'../String/toUpper.bi'
'$include:'./internal/FalseLiteral.bi'
'$include:'./internal/illegalBoolean.bi'
'$include:'./internal/TrueLiteral.bi'
'$include:'./FalseString.bi'
'$include:'./TrueString.bi'

function Boolean.parse%% (this as string)
	dim as _byte result
	dim as string upper

	result = Boolean.illegalBoolean
	upper = String.toUpper(this)

	if String.equals(upper, Boolean.FalseString) then result = Boolean.FalseLiteral
	if String.equals(upper, Boolean.TrueString) then result = Boolean.TrueLiteral

	Boolean.parse = result
end function
