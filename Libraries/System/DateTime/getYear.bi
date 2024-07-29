$includeonce

'$include:'../Integer/parse.bi'
'$include:'../String/Substr.bi'
'$include:'./toString.bi'

function DateTime.getYear% ()
	DateTime.getYear = Integer.parse(String.Substr(DateTime.toString, 6, 4))
end function
