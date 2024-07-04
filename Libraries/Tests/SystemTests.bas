'$include:'../System.bi'

function Main%(argc as integer, argv() as string)
	dim as string dummy

	print "Main function should be called, ..."
	print "... so this text should be displayed."

	line input dummy
end function
