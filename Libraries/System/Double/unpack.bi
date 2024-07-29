$includeonce

'$include:'../String/concat.bi'
'$include:'../String/Substr.bi'
'$include:'./pack.bi'

function Double.unpack# (doubleString as string)
	dim this as string
	this = String.concat(doubleString, Double.pack(0))
	Double.unpack = cvd(String.Substr(this, 0, 8))
end function
