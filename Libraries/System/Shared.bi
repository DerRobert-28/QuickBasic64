$if MAIN_BI then
$else
$includeonce

$if SHARED_BI then
$else
$let SHARED_BI=1
$endif

redim shared as string SharedIdBuffer(0)
redim shared as string SharedObjectBuffer(0)
redim shared as string SharedStringBuffer(0)

$endif
