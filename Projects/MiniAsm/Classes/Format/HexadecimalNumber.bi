function Format.HexadecimalNumber$(this as string)
	Format.HexadecimalNumber = String.concat("&H", String.trim(this))
end function
