$includeonce

'$include:'../Byte/parse.bi'
'$include:'../String/Substring.bi'
'$include:'./toString.bi'

function DateTime.getSeconds%% ()
	DateTime.getSeconds = Byte.parse(String.Substring(DateTime.toString, 17))
end function
