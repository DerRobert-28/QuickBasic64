$includeonce
$if SYSTEM_BI then

'$include:'./internal/SizeAt.bi'

function CharacterSize.Height%% (this as string)
	CharacterSize.Height = CharacterSize.internal.SizeAt(this, 1)
end function

$endif
