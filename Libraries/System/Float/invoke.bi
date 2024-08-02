$if SYSTEM_BI then
$includeonce

'$include:'./pack.bi'

sub Float.invoke (this as single)
	invokes Float.pack(this)
end sub

$endif
