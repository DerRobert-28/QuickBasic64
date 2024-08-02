$includeonce

'$include:'./CpuFlags.bi'

type CpuRegisters
	AccuRegister as _unsigned _byte
	IndexRegister as _unsigned _byte
	Flags as CpuFlags
	InstructionPointer as _unsigned long
end type

'$include:'./CpuRegisters/initialize.bi'
