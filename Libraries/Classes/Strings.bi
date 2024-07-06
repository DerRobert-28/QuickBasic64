$if SYSTEM_BI then
$includeonce

$if STRINGS_BI then
$else
$let STRINGS_BI=1
$endif

'$include:'./Strings/areEqual.bi'

$endif
