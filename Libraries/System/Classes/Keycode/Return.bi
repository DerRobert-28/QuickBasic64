$includeonce

'$include:'./internal/from.bi'

function Keycode.Return$ ()
	Keycode.Return = Keycode.internal.from(13)
end function
