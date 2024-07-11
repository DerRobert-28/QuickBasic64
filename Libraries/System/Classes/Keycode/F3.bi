$includeonce

'$include:'./internal/fromExtended.bi'

function Keycode.F3$ ()
	Keycode.F3 = Keycode.internal.fromExtended(61)
end function
