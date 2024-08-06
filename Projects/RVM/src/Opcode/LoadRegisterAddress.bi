function Opcode.LoadRegisterAddress% (opcode as _unsigned _byte, address as _unsigned integer)
	dim result	as integer
	dim value	as _unsigned _byte
	:
	result = Memory.peek(address)
	if isException(result) then
		Opcode.LoadRegisterAddress = result
		exit function
	endif
	:
	value = result and 255
	CpuRegisters(opcode and 3) = value
	:
	Cpu.flagIf ZEROFLAG, value = 0
	Cpu.flagIf SIGNFLAG, value and 128
	:
	if opcode and 2 then
		Opcode.LoadRegisterAddress = ReservedInstructionException3
	else
		Opcode.LoadRegisterAddress = 3
	endif
end function
