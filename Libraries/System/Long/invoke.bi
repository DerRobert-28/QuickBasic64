$if SYSTEM_BI then
$includeonce

'$include:'./pack.bi'

sub Long.invoke (this as long)
	invokes Long.pack(this)
end sub

$endif
