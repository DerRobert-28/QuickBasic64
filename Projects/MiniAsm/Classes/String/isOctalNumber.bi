function String.isOctalNumber`(this as string)
	String.isOctalNumber = String.onlyContains(this, "01234567")
end function
