$includeonce

function CpuFlag.get` (this as CpuFlag)
	dim as _byte bitValue
	dim as _mem thisPtr
	thisPtr = _mem(this)
	bitValue = _memget(thisPtr, thisPtr.offset, _byte)
	CpuFlag.get = bitValue and 1
end function
