$if MAIN_BI=_undefined then
$includeonce

$if EXCEPTION_HANDLER_BI=_undefined then
$let EXCEPTION_HANDLER_BI=_defined
$endif

dim shared ExceptionHandle as integer

goto onFinally

ExceptionHandler:
	ExceptionHandle = err
	resume next

onFinally:

$endif
