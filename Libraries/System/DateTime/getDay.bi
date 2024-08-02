$includeonce

'$include:'../Byte/parse.bi'
'$include:'../String/Substr.bi'
'$include:'./toString.bi'

function DateTime.getDay%% ()
	DateTime.getDay = Byte.parse(String.Substr(DateTime.toString, 3, 2))
end function
