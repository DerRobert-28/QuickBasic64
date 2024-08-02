$includeonce

'$include:'./hasMemory.bi'

sub CpuType.execute (this as CpuType)
	if not CpuType.hasMemory(this) then exit sub
end sub
