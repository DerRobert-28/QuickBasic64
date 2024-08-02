$includeonce
$if SYSTEM_BI then

'$include:'../Object.bi'

sub Object (this as Object, constructor as string)
	dim as _mem thisPtr
	dim as long objectRef
	thisPtr = _mem(this)
	objectRef = new(constructor)
	_memput thisPtr, thisPtr.offset, objectRef
end sub

$endif
