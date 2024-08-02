$includeonce

'$include:'./hasMemory.bi'

sub CpuType.release (this as CpuType)
	dim as _mem notInitialized
	if not CpuType.hasMemory(this) then exit sub
	_memfree this.Memory
	this.Memory = notInitialized
end sub
