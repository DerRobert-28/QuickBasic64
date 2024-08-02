$includeonce

'$include:'./getMinutes.bi'

function TimeSpan.getHours& ()
	TimeSpan.getHours = TimeSpan.getMinutes / 60
end function
