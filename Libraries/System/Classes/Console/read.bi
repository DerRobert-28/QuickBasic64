$includeonce

function Console.read$ ()
	dim this as string
	line input; this
	Console.read = this
end function
