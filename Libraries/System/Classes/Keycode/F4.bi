$includeonce

'$include:'./internal/fromExtended.bi'

function Keycode.F4$ ()
	Keycode.F4 = Keycode.internal.fromExtended(62)
end function
