$includeonce

'$include:'./getMinutes.bi'

function Time.getHours& ()
	Time.getHours = Time.getMinutes / 60
end function
