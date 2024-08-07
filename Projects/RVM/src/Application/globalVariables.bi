dim shared VirtualMemory			as _mem

dim shared CpuRegisters(0 to REGISTERCOUNT - 1)	as _unsigned _byte
dim shared CpuFlags				as _unsigned _byte

dim shared InstructionPtr			as _unsigned long
