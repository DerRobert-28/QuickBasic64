function String.subStr$(this as string, position as integer, length as integer)
	String.subStr = mid$(this, position + 1, length)
end function
