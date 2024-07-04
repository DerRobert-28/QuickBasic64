function Keycode.fromExtended%(this as string)
	Keycode.fromExtended = Keycode.from(chr$(0) + this)
end function
