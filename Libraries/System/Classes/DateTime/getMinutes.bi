$includeonce

'$include:'../Byte/parse.bi'
'$include:'../String/Substr.bi'
'$include:'./toString.bi'

function DateTime.getMinutes%% ()
	DateTime.getMinutes = Byte.parse(String.Substr(DateTime.toString, 14, 2))
end function
