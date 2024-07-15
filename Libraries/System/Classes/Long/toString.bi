$includeonce

'$include:'../String/trim.bi'

function Long.toString$ (this as long)
	Long.toString = String.trim(str$(this), FALSE)
end function
