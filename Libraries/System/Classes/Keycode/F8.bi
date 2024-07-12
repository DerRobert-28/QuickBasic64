$includeonce

'$include:'./internal/fromExtended.bi'

function Keycode.F8$ ()
	Keycode.F8 = Keycode.internal.fromExtended(66)
end function
