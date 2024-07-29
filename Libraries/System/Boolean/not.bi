$includeonce

'$include:'./isFalse.bi'

function Boolean.not` (this as _byte)
	Boolean.not = Boolean.isFalse(this)
end function
