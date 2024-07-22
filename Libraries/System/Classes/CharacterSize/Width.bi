$includeonce
$if SYSTEM_BI then

'$include:'../Object.bi'
'$include:'./internal/SizeAt.bi'

function CharacterSize.Width%% (this as Object)
	CharacterSize.Width = CharacterSize.internal.SizeAt(this, 0)
end function

$endif
