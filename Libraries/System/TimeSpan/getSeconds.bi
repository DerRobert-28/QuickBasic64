$includeonce

'$include:'./getMilliSeconds.bi'

function TimeSpan.getSeconds& ()
	TimeSpan.getSeconds = TimeSpan.getMilliSeconds / 1000
end function
