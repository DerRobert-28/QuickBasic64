$includeonce

'$include:'./Empty.bi'
'$include:'./equals.bi'

function String.isEmpty` (this as string)
	String.isEmpty = String.equals(this, String.Empty)
end function
