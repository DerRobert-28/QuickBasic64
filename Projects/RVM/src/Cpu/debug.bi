function Cpu.debug% (startAddress as _unsigned long)
	dim hiByte	as _unsigned _byte
	dim i		as _unsigned _byte 
	dim loByte	as _unsigned _byte
	dim opcode	as _unsigned _byte
	dim result	as integer
	:
	print "Starting at address: " + Hex.fromWord(startAddress)
	Cpu.initialize
	:
	print "+------+----------+----------------+"
	print "|  IP  | xx xx-xx | AC XR YR SP FL |"
	print "+------+----------+----------------+"
	:
	InstructionPtr = startAddress
	:
	print "| " + Hex.fromWord(InstructionPtr) + " | 00 00-00 | ";
	for i = 0 to ubound(CpuRegisters)
		print Hex.fromByte(CpuRegisters(i)) + " ";
	next
	print Hex.fromByte(CpuFlags) + " |"
	:
	do
		print "| " + Hex.fromWord(InstructionPtr) + " | ";
		opcode = Memory.peek(InstructionPtr)
		loByte = Memory.peek(Memory.correct(InstructionPtr + 1))
		hiByte = Memory.peek(Memory.correct(InstructionPtr + 2))
		print Hex.fromByte(opcode) + " ";
		print Hex.fromByte(loByte) + "-";
		print Hex.fromByte(hiByte) + " | ";
		:
		result = Cpu.execute(opcode, loByte, hiByte)
		:
		for i = 0 to ubound(CpuRegisters)
			print Hex.fromByte(CpuRegisters(i)) + " ";
		next
		print Hex.fromByte(CpuFlags) + " |"
		:
		if result >= 0 then
			InstructionPtr = Memory.correct(InstructionPtr + result)
		elseif result = IllegalAddressException then
			print "Illegal address."
			exit do
		elseif result = InvalidInstructionException then
			print "Invalid CPU instruction."
			exit do
		elseif result = ReservedInstructionException then
			print "Reserved CPU instruction."
			exit do
		elseif result = ReservedInstructionException2 then
			print "Reserved CPU instruction with 8 bit operant."
			exit do
		elseif result = ReservedInstructionException3 then
			print "Reserved CPU instruction with 16 bit operant."
			exit do
		elseif result = HaltResult then
			print "CPU halted."
			exit do
		elseif result = StopResult then
			print "CPU stopped."
			exit do
		elseif result = SuccessResult then
			print "Operation successful."
			exit do
		endif
	loop
	:
	Cpu.debug = result
end function
