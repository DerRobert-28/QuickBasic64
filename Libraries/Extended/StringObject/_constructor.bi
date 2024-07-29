$if SYSTEM_BI then
$includeonce

'$include:'../../System/Classes/String/Length.bi'
'$include:'../../System/Keywords/internal/malloc.bi'

sub StringObject (this as Object, value as string)
	' dim as _mem thisPtr
	' dim as long objectRef
	' thisPtr = _mem(this)
	' objectRef = new(constructor)
	' _memput thisPtr, thisPtr.offset, objectRef

	this.Reference = internal.malloc(SharedStringBuffer(), value)
	this.Size = String.Length(value)	
end sub

$endif
