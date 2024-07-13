$if KEYWORDS_BI then
$includeonce

sub invoke (this as _integer64)
	invokes _mk$(_integer64, this)
end sub

sub invokes (this as string)
	' nothing to do there ...
end sub

$endif
