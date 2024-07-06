$includeonce

function String.concat$ (this as string, other as string)
	String.concat = this + other
end function

function String.concat2$ (this as string, first as string, second as string)
	String.concat2 = this + first + second
end function

function String.concat3$ (this as string, first as string, second as string, third as string)
	String.concat3 = this + first + second + third
end function
