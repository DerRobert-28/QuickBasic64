function String.IndexOf%(this as string, search as string)
	String.IndexOf = instr(1, this, search) - 1
end function
