$if SYSTEM_BI=_defined then
$includeonce

$if APPLICATION_BI=_undefined then
$let APPLICATION_BI=_defined
$endif

'$include:'./Application/return.bi'

$endif
