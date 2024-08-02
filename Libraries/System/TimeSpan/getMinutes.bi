$includeonce

'$include:'./getSeconds.bi'

function TimeSpan.getMinutes& ()
	TimeSpan.getMinutes = TimeSpan.getSeconds / 60
end function
