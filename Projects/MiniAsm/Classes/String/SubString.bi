function String.SubStr$(this as string, index as integer, length as integer)
	String.SubStr = mid$(this, index + 1, length)
end function

function String.SubString$(this as string, index as integer)
	String.SubString = mid$(this, index + 1)
end function
