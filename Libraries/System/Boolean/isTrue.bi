$includeonce

'$include:'./internal/TrueLiteral.bi'
'$include:'./equals.bi'

function Boolean.isTrue` (this as _byte)
	Boolean.isTrue = Boolean.equals(this, Boolean.internal.TrueLiteral)
end function
