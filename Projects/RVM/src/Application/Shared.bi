dim shared	_
		CpuFlags				as _unsigned _byte,	_
		CpuRegisters(0 to REGISTER_COUNT - 1)	as _unsigned _byte,	_
		InstructionPtr				as _unsigned long,	_
		StackPagePtr				as _unsigned long,	_
		VirtualKeyboardInterrupt		as integer,		_
		VirtualMemoryChecking			as _bit,		_
		VirtualMemory				as _mem
