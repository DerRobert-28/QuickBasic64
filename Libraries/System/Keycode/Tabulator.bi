$includeonce

'$include:'./internal/from.bi'

function Keycode.Tabulator$ ()
	Keycode.Tabulator = Keycode.internal.from(9)
end function
