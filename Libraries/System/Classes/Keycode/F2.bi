$includeonce

'$include:'./internal/fromExtended.bi'

function Keycode.F2$ ()
	Keycode.F2 = Keycode.internal.fromExtended(60)
end function
