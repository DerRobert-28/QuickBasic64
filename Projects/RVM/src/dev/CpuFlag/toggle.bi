$includeonce

sub CpuFlag.toggle (this as CpuFlag)
	dim as _byte bitValue
	dim as _mem thisPtr
	thisPtr = _mem(this)
	bitValue = _memget(thisPtr, thisPtr.offset, _byte) xor 255
	_memput thisPtr, thisPtr.offset, bitValue
end sub
