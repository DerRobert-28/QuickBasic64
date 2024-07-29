$includeonce
$if SYSTEM_BI and KEYWORDS_BI then

'$include:'../../Exception/internal/asError.bi'

sub throw (this as long)
	error Exception.internal.asError(this)
end sub

$endif
