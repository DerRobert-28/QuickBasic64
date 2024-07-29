$includeonce
$if SYSTEM_BI then

'$include:'./internal/fromError.bi'

function TypeMismatchException& ()
	TypeMismatchException = internal.fromError(13)
end function

$endif
