function String.isInteger`(this as string)
	String.isInteger = String.onlyContains(this, "0123456789")
end function
