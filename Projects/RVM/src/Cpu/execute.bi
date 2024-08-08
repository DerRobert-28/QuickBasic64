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
		case &H00: result = Opcode.NoOperation
		case &H01: result = Opcode.Break
		:
		case &H04 to &H05: result = Opcode.TransferIntoAccu(opcode)
		case &H06 to &H07: result = Opcode.TransferFromAccu(opcode)
		case &H08 to &H0B: result = Opcode.LoadRegisterValue(opcode, loByte)
		case &H0C to &H0F: result = Opcode.LoadRegisterAddress(opcode, address)
		case &H10 to &H13: result = Opcode.StoreRegisterAddress(opcode, address)
		case &H14 to &H17: result = Opcode.PushRegisterToStack(opcode)
		case &H18 to &H1B: result = Opcode.PullRegisterFromStack(opcode)
		case &H80 to &H83: result = Opcode.ClearFlag(opcode)
		case &H84 to &H87: result = Opcode.SetFlag(opcode)
		case &H88: result = Opcode.PushFlagsToStack
		case &H89: result = Opcode.PullFlagsFromStack
		:
		case &HF8: result = Opcode.JumpByte(loByte)
		case &HF9: result = Opcode.JumpWord(address)
		case &HFA: result = Opcode.JumpToRoutine(address)
		case &HFB: result = Opcode.ReturnFromRoutine
		:
		case &HFE: result = Opcode.Stop
		case &HFF: result = Opcode.Halt
	end select
	VirtualMemoryChecking = FALSE
	:
	Cpu.execute = result
end function
