function String.endsWith`(this as string, search as string)
	dim other as string
	:
	other = right$(this, String.Length(search))
	:
	String.endsWith = Strings.areEqual(other, search)
end function
