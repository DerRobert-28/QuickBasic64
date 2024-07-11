$includeonce

'$include:'./equals.bi'
'$include:'./Length.bi'
'$include:'./Substring.bi'

function String.endsWith` (this as string, search as string)
	dim other as string
	other = String.Substring(this, -String.Length(search))
	String.endsWith = String.equals(search, other)
end function
