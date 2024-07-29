$includeonce

function Time.getMilliSeconds& ()
	dim as double doubleTimer

	doubleTimer = timer(0.001#)

	Time.getMilliSeconds = 1000 * doubleTimer
end function
