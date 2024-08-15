function Opcode.BranchOnSetFlag% (opcode as _unsigned _byte, value as _byte)
	dim flag as _unsigned _byte
	:
	'flag = opcode mod FLAGS_COUNT
	flag = opcode and FLAGS_BITMASK
	if (flag and 4) then
		Opcode.BranchOnSetFlag = ReservedInstructionException2
		exit function
	endif
	:
	flag = _shl(1, flag)
	if (CpuFlags and flag) then
		InstructionPtr = InstructionPtr + 2 + value
		Opcode.BranchOnSetFlag = DefaultResult
	else
		Opcode.BranchOnSetFlag = 2
	endif
end function
