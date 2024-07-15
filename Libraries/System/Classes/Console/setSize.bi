$includeonce

'$include:'./setWindowSize.bi'

sub Console.setSize (xWidth as integer, yHeight as integer)
	Console.setWindowSize xWidth, yHeight
	_fullscreen _stretch, _smooth
end sub
