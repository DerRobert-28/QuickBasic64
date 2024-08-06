function Opcode.JumpByte% (opcode as _unsigned _byte, value as _byte)
	InstructionPtr = InstructionPtr + 2 + value
	:
	Opcode.JumpByte = DefaultResult
end function
