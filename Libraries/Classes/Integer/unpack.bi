$includeonce

'$include:'../String/concat.bi'
'$include:'../String/Substring.bi'
'$include:'./pack.bi'

function Integer.unpack% (integerString as string)
	dim this as string
	this = String.concat(integerString, Integer.pack(0))
	Integer.unpack = cvi(String.Substring(this, 0, 2))
end function
