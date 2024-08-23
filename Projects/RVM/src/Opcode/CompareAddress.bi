function Opcode.CompareAddress% (address as _unsigned integer)
	dim result as integer
	:
	result = Memory.peek(address)
	if isException(result) then
		Opcode.CompareAddress = result
		exit function
	endif
	:
	result = CpuRegisters(ACCU_REGISTER) - result
	Cpu.flagIf ZERO_FLAG, result = 0
	Cpu.flagIf SIGN_FLAG, result < 0
	Cpu.flagIf CARRY_FLAG, result >= 0
	:
	Opcode.CompareAddress = 3
end function
