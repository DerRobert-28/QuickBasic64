function String.startsWith`(this as string, search as string)
	String.startsWith = Strings.areEqual(left$(this, String.Length(search)), search)
end function
