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
	select case opcode
		case &H00: result = Opcode.NoOperation
		case &H04 to &H07: result = Opcode.LoadRegisterValue(opcode, loByte)
		case &H08 to &H0B: result = Opcode.LoadRegisterAddress(opcode, address)
		case &H0C to &H0F: result = Opcode.StoreRegisterAddress(opcode, address)
		case &H80 to &H82: result = Opcode.ClearFlag(opcode)
		case &H84 to &H86: result = Opcode.SetFlag(opcode)
		case &HFC: result = Opcode.JumpByte(opcode, loByte)
		case &HFD: result = Opcode.JumpWord(opcode, address)
		case &HFE: result = Opcode.Stop
		case &HFF: result = Opcode.Halt
	end select
	:
	Cpu.execute = result
end function
