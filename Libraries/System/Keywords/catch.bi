$includeonce
$if SYSTEM_BI and KEYWORDS_BI then

'$include:'../Classes/Exception/internal/fromError.bi'

sub catch (outException as long)
	outException = Exception.internal.fromError(SharedExceptionHandle)
end sub

$endif
