$includeonce

'$include:'../String/trim.bi'

function Float.toString$ (this as single)
	Float.toString = String.trim(str$(this), FALSE)
end function
