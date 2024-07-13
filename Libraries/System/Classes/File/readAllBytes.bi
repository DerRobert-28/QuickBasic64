$includeonce

'$include:'../FileAccess/Binary.bi'
'$include:'../String/Empty.bi'
'$include:'./close.bi'
'$include:'./Length.bi'
'$include:'./open.bi'
'$include:'./readBytes.bi'

function File.readAllBytes$ (sourceFile as string)
	dim as integer sourceHandle
	dim as long fileSize
	dim as string readAllBytes

	sourceHandle = File.open(sourceFile, FileAccess.Binary)
	if isNull(sourceHandle) then
		File.readAllBytes = String.Empty
		exit function
	endif

	fileSize = File.Length(sourceHandle)
	readAllBytes = File.readBytes(sourceHandle, fileSize)
	File.close sourceHandle

	File.readAllBytes = readAllBytes
end function
