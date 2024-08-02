$includeonce

function TimeSpan.getMilliSeconds& ()
	dim as double doubleTimer

	doubleTimer = timer(0.001#)

	TimeSpan.getMilliSeconds = 1000 * doubleTimer
end function
