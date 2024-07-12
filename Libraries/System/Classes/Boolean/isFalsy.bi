$includeonce

'$include:'./isFalse.bi'

function Boolean.isFalsy` (this as _byte)
	Boolean.isFalsy = Boolean.isFalse(this)
end function
