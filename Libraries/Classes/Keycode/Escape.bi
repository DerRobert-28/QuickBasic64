$includeonce

'$include:'./internal/from.bi'

function Keycode.Escape$ ()
	Keycode.Escape = Keycode.internal.from(27) 
end function
