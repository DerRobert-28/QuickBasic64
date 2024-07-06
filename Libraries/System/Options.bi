$if MAIN_BI=_undefined then
$includeonce

$if OPTIONS_BI=_undefined then
$let OPTIONS_BI=_defined
$endif

option _explicit
option _explicitarray
option base 0

$endif
