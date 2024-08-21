function Cpu.readBuffer$ (address as _unsigned long, size as _unsigned integer)
	dim buffer	as string			
	dim i		as _unsigned integer
	dim value	as integer
	:
	if not(Memory.isCreated) then
		Cpu.readBuffer = ""
		exit function
	endif
	:
	buffer = ""
	for i = 0 to size - 1
		value = Memory.peek(address + i)
		if value < 1 then
			Cpu.readBuffer = buffer
			exit function
		endif
		buffer = buffer + chr$(value)
	next
	:
	Cpu.readBuffer = buffer
end function
