$includeonce

'$include:'../CpuRegisters/initialize.bi'
'$include:'./hasMemory.bi'

sub CpuType.create (this as CpuType, memsize as _unsigned long)
	if CpuType.hasMemory(this) then exit sub	
	this.Memory = _memnew(memsize)
	CpuRegisters.initialize this.Registers
end sub
