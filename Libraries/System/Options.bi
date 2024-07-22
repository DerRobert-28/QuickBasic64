$includeonce
$if SYSTEM_BI then
$if MAIN_BI then
$else
$let OPTIONS_BI=1

option _explicit
option _explicitarray
option base 0

$endif
$endif
