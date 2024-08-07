function Opcode.StoreRegisterAddress% (opcode as _unsigned _byte, address as _unsigned integer)
	dim result	as integer
	dim value	as _unsigned _byte
	:
	value = CpuRegisters(opcode and 3)
	result = Memory.poke(address, value)
	if result <> SuccessResult then
		Opcode.StoreRegisterAddress = result
		exit function
	endif
	:
	Cpu.flagIf ZEROFLAG, value = 0
	Cpu.flagIf SIGNFLAG, value and 128
	:
	Opcode.StoreRegisterAddress = 3
end function
