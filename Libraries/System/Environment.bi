$if SYSTEM_BI then
$includeonce

$if ENVIRONMENT_BI then
$else
$let ENVIRONMENT_BI=1
$endif

'$include:'./Environment/getVariable.bi'
'$include:'./Environment/PathSeparator.bi'

$endif
