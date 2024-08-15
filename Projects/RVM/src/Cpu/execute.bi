'	Executes one single instruction.
'	Return values can be following:
'	- positive: instruction size of the currect command
'	- zero    : instruction was of branching type
'	- negative: code is a special 'Result' or 'Exception'

function Cpu.execute% (opcode as _unsigned _byte, loByte as _unsigned _byte, hiByte as _unsigned _byte)
	dim address	as _unsigned integer
	dim result	as integer
	:
	address = Cpu.BytesToWord(loByte, hiByte)
	result = InvalidInstructionException
	VirtualMemoryChecking = TRUE
	select case opcode
		'
		'Actually $00 means TAA, and would therefore be equal to $04.
		'So exceptionally, $00 will be treaded as NOP.
		'
		case &H00: result = Opcode.NoOperation
		'
		'Transfer commands:
		'
		case &H01 to &H03: result = Opcode.TransferIntoAccu(opcode)
		case &H04 to &H07: result = Opcode.TransferFromAccu(opcode)
		'
		'Load register commands:
		'
		case &H08 to &H0B: result = Opcode.LoadRegisterValue(opcode, loByte)
		case &H0C to &H0F: result = Opcode.LoadRegisterAddress(opcode, address)
		'
		'Storing register commands:
		'
		case &H10 to &H13: result = Opcode.PullRegisterFromStack(opcode)
		case &H14 to &H17: result = Opcode.PushRegisterToStack(opcode)
		case &H18 to &H1B: result = Opcode.StoreRegisterAddress(opcode, address)
		'
		'Bit arithmetic
		'
		case &H20: result = Opcode.StoreRegisterAddress(opcode, address)
		'
		'Flag commands:
		'
		case &H80 to &H87: result = Opcode.ClearFlag(opcode)
		case &H88 to &H8F: result = Opcode.SetFlag(opcode)
		case &H90: result = Opcode.PushFlagsToStack
		case &H91: result = Opcode.PullFlagsFromStack
		'
		'Conditional jump commands:
		'
		case &HA0 to &HA7: result = Opcode.BranchOnClearFlag(opcode, loByte)
		case &HA8 to &HAF: result = Opcode.BranchOnSetFlag(opcode, loByte)
		'
		'Processor interrupt commands:
		'
		case &HF0: result = Opcode.Break
		'
		'Unconditional jump commands:
		'
		case &HF8: result = Opcode.JumpByte(loByte)
		case &HF9: result = Opcode.JumpWord(address)
		case &HFA: result = Opcode.JumpToRoutine(address)
		case &HFB: result = Opcode.ReturnFromRoutine
		'
		'Programme terminating commands:
		'
		case &HFE: result = Opcode.Stop
		case &HFF: result = Opcode.Halt
	end select
	VirtualMemoryChecking = FALSE
	:
	Cpu.execute = result
end function
