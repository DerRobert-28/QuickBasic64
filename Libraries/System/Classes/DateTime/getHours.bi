$includeonce

'$include:'../Byte/parse.bi'
'$include:'../String/Substr.bi'
'$include:'./toString.bi'

function DateTime.getHours%% ()
	DateTime.getHours = Byte.parse(String.Substr(DateTime.toString, 11, 2))
end function
