function Cpu.run% (startAddress as _unsigned long)
	dim hiByte	as _unsigned _byte
	dim loByte	as _unsigned _byte
	dim opcode	as _unsigned _byte
	dim result	as integer
	:
	Cpu.initialize
	InstructionPtr = startAddress
	do
		opcode = Memory.peek(InstructionPtr)
		loByte = Memory.peek(InstructionPtr + 1)
		hiByte = Memory.peek(InstructionPtr + 2)
		:
		result = Cpu.execute(opcode, loByte, hiByte)
		if result < 0 then exit do
		:
		InstructionPtr = Memory.correct(InstructionPtr + result)
	loop
	:
	Cpu.run = result
end function
