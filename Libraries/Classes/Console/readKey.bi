function Console.readKey$(shouldWait as _bit)
	dim as string this, empty

	empty = Console.emptyKey
	do
		this = left$(inkey$ + empty, 2)
		if not(shouldWait) then exit do
	loop while (this = empty)

	Console.readKey = this
end function
