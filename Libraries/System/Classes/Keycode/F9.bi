$includeonce

'$include:'./internal/fromExtended.bi'

function Keycode.F9$ ()
	Keycode.F9 = Keycode.internal.fromExtended(67)
end function
