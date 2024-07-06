$includeonce

'$include:'./isTrue.bi'

function Boolean.isTruthy` (this as _byte)
	Boolean.isTruthy = Boolean.isTrue(this)
end function
