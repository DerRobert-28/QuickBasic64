$includeonce

'$include:'./Length.bi'

function String.Substr$ (this as string, index as long, length as long)
	dim as long position, strLength

	position = index
	strLength = String.Length(this)
	do
		position = position + strLength
	loop while (position < 0)
	position = position mod strLength

	String.Substr = mid$(this, position + 1, length)
end function
