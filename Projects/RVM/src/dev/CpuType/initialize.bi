$includeonce

'$include:'../CpuRegisters/initialize.bi'
'$include:'./hasMemory.bi'

sub CpuType.initialize (this as CpuType, memory as _mem)
	if CpuType.hasMemory(this) then exit sub	
	this.Memory = memory
	CpuRegisters.initialize this.Registers
end sub
