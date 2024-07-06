$includeonce

'$include:'./equals.bi'
'$include:'./Length.bi'
'$include:'./Substr.bi'

function String.endsWith` (this as string, search as string)
	dim other as string
	other = String.Substr(this, -String.Length(search))
	String.endsWith = String.equals(search, other)
end function
