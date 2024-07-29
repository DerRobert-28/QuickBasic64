$includeonce

'$include:'./isFalse.bi'

function Boolean.toString$ (this as _byte)
	if Boolean.isFalse(this) then
		Boolean.toString = "false"
	else
		Boolean.toString = "true"
	endif
end function
