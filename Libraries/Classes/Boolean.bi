$if SYSTEM_BI=_defined then
$includeonce

$if BOOLEAN_BI=_undefined then
$let BOOLEAN_BI=_defined
$endif

'$inlcude:'./Boolean/isFalse.bi'
'$inlcude:'./Boolean/isTrue.bi'

$endif
