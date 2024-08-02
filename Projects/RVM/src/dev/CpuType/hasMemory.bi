$includeonce

function CpuType.hasMemory` (this as CpuType)
	dim as _bit result
	result = 0
	if this.Memory.offset then result = 1
	if this.Memory.size then result = 1
	if this.Memory.type then result = 1
	if this.Memory.elementsize then result = 1
	CpuType.hasMemory = result
end function
