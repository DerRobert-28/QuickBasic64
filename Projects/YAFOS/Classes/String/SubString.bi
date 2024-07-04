function String.SubStr$(this as string, index as long, length as long)
	dim position	as long
	dim thisLength	as long
	:
	thisLength = String.Length(this)
	do
		position = position + thisLength
	loop while position < 0
	position = position mod thisLength
	:
	String.SubStr = mid$(this, position + 1, length)
end function

function String.SubString$(this as string, index as integer)
	dim position	as long
	dim thisLength	as long
	:
	thisLength = String.Length(this)
	do
		position = position + thisLength
	loop while position < 0
	position = position mod thisLength
	:
	String.SubString = mid$(this, position + 1)
end function
