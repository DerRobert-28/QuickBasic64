'$include:'../Application.bi'

function Main%(argc as integer, argv() as string)
	dim as string dummy
	dim as long a, b, c, d

	a = New("Hallo")
	b = New("Tschau")
	c = New("Hallo")
	d = New("Hallo, Welt")

	print "A is equal to       :", a
	print "B is equal to       :", b
	print "C is equal to       :", c
	print "D is equal to       :", d
	print
	print "A should not equal B:", (a <> b)
	print "A should equal C    :", (a = c)
	print "A should not equal D:", (a <> d)
	print
	print "B should not equal C:", (b <> c)
	print "B should not equal D:", (b <> d)
	print
	print "C should not equal D:", (c <> d)
	print
	line input dummy
end function
