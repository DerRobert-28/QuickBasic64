$includeonce
$if SYSTEM_BI then

function Exception.internal.asError& (this as long)
	Exception.internal.asError = this + 1000
end function

$endif
