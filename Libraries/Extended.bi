$if SYSTEM_BI then
$includeonce

$if EXTENDED_BI then
$else
$let EXTENDED_BI=1
$endif

'$include:'./Extended/StringObject.bi'

$endif
