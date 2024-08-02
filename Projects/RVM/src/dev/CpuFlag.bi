$includeonce

type CpuFlag
	Value as _bit * 1
	reserved as _bit * 7
end type

'$include:'./CpuFlag/get.bi'
'$include:'./CpuFlag/set.bi'
'$include:'./CpuFlag/toggle.bi'
