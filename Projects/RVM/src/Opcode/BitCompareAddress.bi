function Opcode.BitCompareAddress% (address as _unsigned integer)
	dim result as integer
	:
	result = Memory.peek(address)
	if isException(result) then
		Opcode.BitCompareAddress = result
		exit function
	endif
	:
	result = CpuRegisters(ACCU_REGISTER) and result
	:
	Cpu.flagIf ZERO_FLAG, result = 0
	Cpu.flagIf OVERFLOW_FLAG, result and 64
	Cpu.flagIf SIGN_FLAG, result and 128
	:
	Opcode.BitCompareAddress = 3
end function
