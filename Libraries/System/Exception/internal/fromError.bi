$includeonce
$if SYSTEM_BI then

function Exception.internal.fromError& (this as long)
	Exception.internal.fromError = this - 1000
end function

$endif
