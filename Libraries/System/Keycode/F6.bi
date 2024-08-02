$includeonce

'$include:'./internal/fromExtended.bi'

function Keycode.F6$ ()
	Keycode.F6 = Keycode.internal.fromExtended(64)
end function
