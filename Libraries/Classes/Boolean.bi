$if SYSTEM_BI then
$includeonce

$if BOOLEAN_BI then
$else
$let BOOLEAN_BI=1
$endif

'$inlcude:'./Boolean/isFalse.bi'
'$inlcude:'./Boolean/isTrue.bi'

$endif
