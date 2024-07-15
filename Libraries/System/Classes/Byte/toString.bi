$includeonce

'$include:'../String/trim.bi'

function Byte.toString$ (this as _byte)
	Byte.toString = String.trim(str$(this), FALSE)
end function
