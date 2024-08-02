$includeonce

sub Random.initialize ()
	dim as double mtimer

	mtimer = timer(0.001!) * 1000
	randomize mtimer	
end sub
