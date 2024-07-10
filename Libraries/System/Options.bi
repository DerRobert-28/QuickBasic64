$if MAIN_BI= then
$else
$includeonce

$if OPTIONS_BI then
$else
$let OPTIONS_BI=1
$endif

option _explicit
option _explicitarray
option base 0

$endif
