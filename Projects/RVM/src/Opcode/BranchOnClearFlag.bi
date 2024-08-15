function Opcode.BranchOnClearFlag% (opcode as _unsigned _byte, value as _byte)
	dim flag as _unsigned _byte
	:
	'flag = opcode mod FLAGS_COUNT
	flag = opcode and FLAGS_BITMASK
	if (flag and 4) then
		Opcode.BranchOnClearFlag = ReservedInstructionException2
		exit function
	endif
	:
	flag = _shl(1, flag)
	if (CpuFlags and flag) = 0 then
		InstructionPtr = InstructionPtr + 2 + value
		Opcode.BranchOnClearFlag = DefaultResult
	else
		Opcode.BranchOnClearFlag = 2
	endif
end function
