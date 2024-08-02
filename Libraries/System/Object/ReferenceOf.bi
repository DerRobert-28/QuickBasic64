$includeonce
$if SYSTEM_BI then

'$include:'../Object.bi'

function Object.ReferenceOf& (this as Object)
	dim as _mem thisPtr
	thisPtr = _mem(this)
	Object.ReferenceOf = _memget(thisPtr, thisPtr.offset, long)
end function

$endif
