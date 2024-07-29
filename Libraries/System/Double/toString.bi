$includeonce

'$include:'../String/trim.bi'

function Double.toString$ (this as double)
	Double.toString = String.trim(str$(this), FALSE)
end function
