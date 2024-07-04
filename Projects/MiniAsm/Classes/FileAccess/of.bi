function FileAccess.of$(fileAccess as integer)
	FileAccess.of = Char.from((fileAccess and 31) + 64)
end function
