$includeonce

'$include:'./internal/fromExtended.bi'

function Keycode.F1$ ()
	Keycode.F1 = Keycode.internal.fromExtended(59)
end function
