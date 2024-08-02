$includeonce

'$include:'./internal/from.bi'

function Keycode.Newline$ ()
	Keycode.Newline = Keycode.internal.from(10)
end function
