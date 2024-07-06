$if MAIN_BI then
$else
$includeonce

$if EXCEPTION_HANDLER_BI then
$else
$let EXCEPTION_HANDLER_BI=1
$endif

dim shared ExceptionHandle as integer

goto onFinally

ExceptionHandler:
	ExceptionHandle = err
	resume next

onFinally:

$endif
