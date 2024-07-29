$includeonce

'$include:'../String/concat.bi'
'$include:'../String/Substr.bi'
'$include:'./pack.bi'

function Long.unpack& (longString as string)
	dim this as string
	this = String.concat(longString, Long.pack(0))
	Long.unpack = cvl(String.Substr(this, 0, 4))
end function
