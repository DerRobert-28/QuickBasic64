$if MAIN_BI then
$else
$includeonce

$if EXCEPTION_HANDLER_BI then
$else
$let EXCEPTION_HANDLER_BI=1
$endif

dim shared SharedExceptionHandle as integer

goto onFinally

ExceptionHandler:
	SharedExceptionHandle = err
	resume next

onFinally:

$endif
