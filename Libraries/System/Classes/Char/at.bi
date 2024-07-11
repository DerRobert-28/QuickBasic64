$includeonce

'$include:'../String/CharAt.bi'

function Char.at$ (this as string, index as long)
	Char.at = String.CharAt(this, index)
end function
