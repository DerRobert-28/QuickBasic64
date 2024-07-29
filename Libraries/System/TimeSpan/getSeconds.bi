$includeonce

'$include:'./getMilliSeconds.bi'

function Time.getSeconds& ()
	Time.getSeconds = Time.getMilliSeconds / 1000
end function
