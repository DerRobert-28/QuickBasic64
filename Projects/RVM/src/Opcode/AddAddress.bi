function Opcode.AddAddress% (address as _unsigned integer, useCarry as _byte)
	dim accu as _unsigned _byte
	dim sign1 as _bit
	dim sign2 as _bit
	dim sign3 as _bit
	dim result as integer
	:
	accu = CpuRegisters(ACCU_REGISTER)
	sign1 = Cpu.signOf(accu) 
	sign2 = Cpu.signOf(value) 
	:
	result = Memory.peek(address)
	if isException(result) then
		Opcode.AddAddress = result
		exit function
	endif
	result = result + accu
	if useCarry then result = result + Cpu.getFlag(CARRY_FLAG)
	sign3 = Cpu.signOf(result) 
	:
	Cpu.flagIf ZERO_FLAG, (result and 255) = 0
	Cpu.flagIf SIGN_FLAG, result and 128
	Cpu.flagIf OVERFLOW_FLAG, (sign1 = sign2) and (sign1 <> sign3) 
	Cpu.flagIf CARRY_FLAG, result > 255
	:
	CpuRegisters(ACCU_REGISTER) = result
	Opcode.AddAddress = 2
end function
