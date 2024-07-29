$includeonce

'$include:'../Char/Space.bi'
'$include:'../String/concat.bi'

function DateTime.toString$ ()
	DateTime.toString = String.concat2(date$, Char.Space, time$)
end function
