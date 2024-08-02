$includeonce

$if win or windows then

'$include:'../Char/Backslash.bi'

function Environment.PathSeparator$ ()
	Environment.PathSeparator = Char.Backslash
end function

$elseif linux or maxos or macosx then

'$include:'../Char/Slash.bi'

function Environment.PathSeparator$ ()
	Environment.PathSeparator = Char.Slash
end function

$else

'$include:'../String/Empty.bi'

function Environment.PathSeparator$ ()
	Environment.PathSeparator = String.Empty
end function

$endif
