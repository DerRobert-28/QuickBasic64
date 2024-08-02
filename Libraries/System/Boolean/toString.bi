$includeonce

'$include:'../String/Empty.bi'
'$include:'./FalseString.bi'
'$include:'./isFalse.bi'
'$include:'./isTrue.bi'
'$include:'./TrueString.bi'

function Boolean.toString$ (this as _byte)
	dim as string result

	result = String.Empty
	if Boolean.isFalse(this) then result = Boolean.FalseString
	if Boolean.isTrue(this) then result = Boolean.TrueString
	
	Boolean.toString = result
end function
