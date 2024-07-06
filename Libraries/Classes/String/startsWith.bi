$includeonce

'$include:'./equals.bi'
'$include:'./Length.bi'
'$include:'./Substr.bi'

function String.startsWith` (this as string, search as string)
	dim as string other
	other = String.Substr(this, 0, String.Length(search))
	String.startsWith = String.equals(search, other)
end function
