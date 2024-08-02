$if SYSTEM_BI=defined then
$includeonce

$if RANDOM_BI then
$else
$let RANDOM_BI=1
$endif

'$include:'./Random/GUID.bi'
'$include:'./Random/initialize.bi'
'$include:'./Random/usingSeed.bi'
'$include:'./Random/UUID.bi'

$endif
