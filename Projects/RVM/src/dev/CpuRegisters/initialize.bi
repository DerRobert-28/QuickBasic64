$includeonce

'$include:'../CpuFlags/initialize.bi'

sub CpuRegisters.initialize (this as CpuRegisters)
	this.AccuRegister = 0
	this.IndexRegister = 0
	this.InstructionPointer = 0
	CpuFlags.initialize this.Flags
end sub
