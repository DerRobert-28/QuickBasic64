function Opcode.JumpByte% (value as _byte)
	InstructionPtr = InstructionPtr + 2 + value
	:
	Opcode.JumpByte = DefaultResult
end function
