$includeonce

'$include:'../Byte/parse.bi'
'$include:'../String/Substr.bi'
'$include:'./toString.bi'

function DateTime.getMonth%% ()
	DateTime.getMonth = Byte.parse(String.Substr(DateTime.toString, 0, 2))
end function
