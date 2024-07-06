$if MAIN_BI then
$else
$includeonce

$if SHARED_BI then
$else
$let SHARED_BI=1
$endif

redim shared ObjectHandler(0) as string
dim shared ObjectHandle as long

$endif
