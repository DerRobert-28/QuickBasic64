$includeonce

'$include:'../Char/from.bi'

function Byte.pack$ (this as integer)
	Byte.pack = Char.from(this)
end function
