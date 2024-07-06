$if SYSTEM_BI=_defined then
$includeonce

$if STRINGS_BI=_undefined then
$let STRINGS_BI=_defined
$endif

'$include:'./Strings/areEqual.bi'

$endif
