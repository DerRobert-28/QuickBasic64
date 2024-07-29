$includeonce
$if SYSTEM_BI and MAIN_BI then

	goto onFinally
	dim shared  as integer SharedExceptionHandle
ExceptionHandler:
	SharedExceptionHandle = err
	resume next
onFinally:

$endif
