$includeonce

sub CpuFlag.set (this as CpuFlag, value as _byte)
	dim as _byte bitValue
	dim as _mem thisPtr
	bitValue = value and 1
	thisPtr = _mem(this)
	_memput thisPtr, thisPtr.offset, bitValue
end sub
