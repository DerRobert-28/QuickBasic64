$includeonce

'$include:'../Char/Null.bi'
'$include:'../String/concat.bi'

function Byte.fromChar%% (this as string)
	Byte.fromChar = asc(String.concat(this, Char.Null))
end function
