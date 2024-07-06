$includeonce

'$include:'../../Char/Null.bi'
'$include:'../../Char/from.bi'
'$include:'../../String/concat.bi'

function Keycode.internal.fromExtended$ (this as integer)
	Keycode.internal.fromExtended = String.concat(Char.Null, Char.from(this))
end function
