$if SYSTEM_BI then
$includeonce

$if FILE_ACCESS_BI then
$else
$let FILE_ACCESS_BI=1
$endif

'$include:'./FileAccess/Binary.bi'
'$include:'./FileAccess/of.bi'
'$include:'./FileAccess/Read.bi'
'$include:'./FileAccess/Write.bi'

$endif
