function Opcode.XorAddress% (address as _unsigned integer)
	dim result as integer
	:
	result = Memory.peek(address)
	if isException(result) then
		Opcode.XorAddress = result
		exit function
	endif
	:
	CpuRegisters(ACCU_REGISTER) = CpuRegisters(ACCU_REGISTER) xor result
	:
	Cpu.flagIf ZERO_FLAG, result = 0
	Cpu.flagIf SIGN_FLAG, result and 128
	:
	Opcode.XorAddress = 3
end function
