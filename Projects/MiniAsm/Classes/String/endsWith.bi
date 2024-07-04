function String.endsWith`(this as string, search as string)
	String.endsWith = Strings.areEqual(right$(this, String.Length(search)), search)
end function
