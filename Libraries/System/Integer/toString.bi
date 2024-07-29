$includeonce

'$include:'../String/trim.bi'

function Integer.toString$ (this as integer)
	Integer.toString = String.trim(str$(this), FALSE)
end function
