function String.startsWith`(this as string, search as string)
	dim other as string
	:
	other = String.SubStr(this, 0, String.Length(search))
	:
	String.startsWith = Strings.areEqual(other, search)
end function
