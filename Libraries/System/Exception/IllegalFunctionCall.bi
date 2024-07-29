$includeonce
$if SYSTEM_BI then

'$include:'./internal/fromError.bi'

function IllegalFunctionCallException& ()
	IllegalFunctionCallException = Exception.internal.fromError(5)
end function

$endif
