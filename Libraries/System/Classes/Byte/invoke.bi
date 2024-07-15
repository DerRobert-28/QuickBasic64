$if SYSTEM_BI then
$includeonce

'$include:'./pack.bi'

sub Byte.invoke (this as _byte)
	invokes Byte.pack(this)
end sub

$endif
