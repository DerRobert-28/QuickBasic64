$if SYSTEM_BI then
$includeonce

'$include:'./pack.bi'

sub Double.invoke (this as double)
	invokes Double.pack(this)
end sub

$endif
