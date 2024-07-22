$includeonce
$if SYSTEM_BI then
$if MAIN_BI then
$else
$let EXCEPTION_HANDLER_BI=1

dim shared SharedExceptionHandle as integer

goto onFinally

ExceptionHandler:
	SharedExceptionHandle = err
	resume next

onFinally:

$endif
$endif
