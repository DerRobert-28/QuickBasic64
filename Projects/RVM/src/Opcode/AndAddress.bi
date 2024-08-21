function Opcode.AndAddress% (address as _unsigned integer)
	dim result as integer
	:
	result = Memory.peek(address)
	if isException(result) then
		Opcode.AndAddress = result
		exit function
	endif
	:
	CpuRegisters(ACCU_REGISTER) = CpuRegisters(ACCU_REGISTER) and result
	:
	Cpu.flagIf ZERO_FLAG, result = 0
	Cpu.flagIf SIGN_FLAG, result and 128
	:
	Opcode.AndAddress = 3
end function
