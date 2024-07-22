$includeonce
$if SYSTEM_BI then
$if MAIN_BI then
$else
$let SHARED_BI=1

redim shared as string SharedExceptionBuffer(0)
redim shared as string SharedIdBuffer(0)
redim shared as string SharedObjectBuffer(0)
redim shared as string SharedStringBuffer(0)

$endif
$endif
