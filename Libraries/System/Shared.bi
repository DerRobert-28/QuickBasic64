$if MAIN_BI=_undefined then
$includeonce

$if SHARED_BI=_undefined then
$let SHARED_BI=_defined
$endif

redim shared ObjectHandler(0) as string
dim shared ObjectHandle as long

$endif
