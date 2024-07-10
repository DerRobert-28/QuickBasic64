$if MAIN_BI then
$else
$includeonce

$if SHARED_BI then
$else
$let SHARED_BI=1
$endif

redim shared SharedObjectBuffer(0) as string
redim shared SharedStringBuffer(0) as string

$endif
