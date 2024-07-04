function Char.at$(this as string, index as integer)
	Char.at = Char.from(asc(this, index + 1))
end function
