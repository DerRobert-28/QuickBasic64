$if SYSTEM_BI then
$includeonce

$if APPLICATION_BI then
$else
$let APPLICATION_BI=1
$endif

'$include:'./Application/return.bi'

$endif
