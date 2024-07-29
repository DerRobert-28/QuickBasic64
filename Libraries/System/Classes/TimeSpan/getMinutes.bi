$includeonce

'$include:'./getSeconds.bi'

function Time.getMinutes& ()
	Time.getMinutes = Time.getSeconds / 60
end function
