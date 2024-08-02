$if SYSTEM_BI then
$includeonce

'$include:'./pack.bi'

sub Integer.invoke (this as integer)
	invokes Integer.pack(this)
end sub

$endif
