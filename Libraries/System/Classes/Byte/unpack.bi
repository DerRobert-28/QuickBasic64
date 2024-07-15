$includeonce

'$include:'./fromChar.bi'

function Byte.unpack%% (byteString as string)
	Byte.unpack = Byte.fromChar(byteString)
end function
