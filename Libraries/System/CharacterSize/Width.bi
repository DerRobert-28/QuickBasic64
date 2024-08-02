$includeonce
$if SYSTEM_BI then

'$include:'./internal/SizeAt.bi'

function CharacterSize.Width%% (this as string)
	CharacterSize.Width = CharacterSize.internal.SizeAt(this, 0)
end function

$endif
