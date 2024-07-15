$if SYSTEM_BI then
$includeonce

$if CHARACTER_SIZE_BI then
$else
$let CHARACTER_SIZE_BI=1
$endif

'$include:'./CharacterSize/_constructor.bi'
'$include:'./CharacterSize/Height.bi'
'$include:'./CharacterSize/Width.bi'

$endif
