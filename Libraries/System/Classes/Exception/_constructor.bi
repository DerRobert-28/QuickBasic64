$includeonce
$if SYSTEM_BI then

function Exception& (message as string)
	Exception = internal.malloc(SharedExceptionBuffer(), message)
end function

$endif
