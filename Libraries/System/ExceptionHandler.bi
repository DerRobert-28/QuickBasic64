goto OnFinally

dim shared ExceptionHandle as integer

ExceptionHandler:
	ExceptionHandle = err
	resume next

OnFinally:
