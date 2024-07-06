$includeonce

'$include:'./internal/fromExtended.bi'

function Keycode.F10$ ()
	Keycode.F10 = Keycode.internal.fromExtended(68)
end function
