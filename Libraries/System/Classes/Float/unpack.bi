$includeonce

'$include:'../String/concat.bi'
'$include:'../String/Substr.bi'
'$include:'./pack.bi'

function Float.unpack! (floatString as string)
	dim this as string
	this = String.concat(floatString, Float.pack(0))
	Float.unpack = cvs(String.Substr(this, 0, 4))
end function
