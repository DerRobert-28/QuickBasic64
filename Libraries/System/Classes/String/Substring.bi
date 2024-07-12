$includeonce

'$include:'./Length.bi'

function String.Substring$ (this as string, index as integer)
	dim as long position, strLength

	strLength = String.Length(this)
	do
		position = position + strLength
	loop while (position < 0)
	position = position mod strLength
	
	String.Substring = mid$(this, position + 1)
end function
