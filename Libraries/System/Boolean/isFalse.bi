$includeonce

'$include:'./equals.bi'
'$include:'./internal/FalseLiteral.bi'

function Boolean.isFalse` (this as _byte)
	Boolean.isFalse = Boolean.equals(this, Boolean.internal.FalseLiteral)
end function
