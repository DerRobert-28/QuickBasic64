$includeonce

'$include:'../../Char/Null.bi'
'$include:'../../Char/from.bi'
'$include:'../../String/concat.bi'

function Keycode.internal.from$ (this as integer)
	Keycode.internal.from = String.concat(Char.from(this), Char.Null)
end function
