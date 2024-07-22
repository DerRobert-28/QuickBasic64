$includeonce
$if SYSTEM_BI then

'$include:'../Object.bi'
'$include:'./internal/SizeAt.bi'

function CharacterSize.Height%% (this as Object)
	CharacterSize.Height = CharacterSize.internal.SizeAt(this, 1)
end function

$endif
