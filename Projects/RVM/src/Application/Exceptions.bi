function IllegalAddressException% ()
	IllegalAddressException = &hff00
end function

function InvalidInstructionException% ()
	InvalidInstructionException = &hfe00
end function

function InvalidMemorySizeException% ()
	InvalidMemorySizeException = &hfd00
end function

function MemoryAlreadyReservedException% ()
	MemoryAlreadyReservedException = &hfc00
end function

function MissingMemoryException% ()
	MissingMemoryException = &hfb00
end function

function ReservedInstructionException% ()
	ReservedInstructionException = &hfa00
end function

function ReservedInstructionException2% ()
	ReservedInstructionException2 = &hf900
end function

function ReservedInstructionException3% ()
	ReservedInstructionException3 = &hfb00
end function
