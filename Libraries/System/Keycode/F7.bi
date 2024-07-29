$includeonce

'$include:'./internal/fromExtended.bi'

function Keycode.F7$ ()
	Keycode.F7 = Keycode.internal.fromExtended(65)
end function
