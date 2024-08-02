$includeonce

'$include:'./CpuRegisters.bi'

type CpuType
	Registers as CpuRegisters
	Memory as _mem
end type

'$include:'./CpuType/create.bi'
'$include:'./CpuType/execute.bi'
'$include:'./CpuType/hasMemory.bi'
'$include:'./CpuType/initialize.bi'
'$include:'./CpuType/release.bi'
