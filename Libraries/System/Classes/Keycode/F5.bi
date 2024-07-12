$includeonce

'$include:'./internal/fromExtended.bi'

function Keycode.F5$ ()
	Keycode.F5 = Keycode.internal.fromExtended(63)
end function
