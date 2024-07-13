$includeonce

'$include:'../FileAccess/Read.bi'
'$include:'./close.bi'
'$include:'./EndOf.bi'
'$include:'./open.bi'
'$include:'./readLine.bi'

function File.readAllLines` (target() as string, sourceFile as string)
	dim as integer sourceHandle
	dim as long lineCounter

	sourceHandle = File.open(sourceFile, FileAccess.Read)
	if isNull(sourceHandle) then
		File.readAllLines = FALSE
		exit function
	endif

	lineCounter = 0
	do until File.EndOf(sourceHandle)
		redim _preserve target(0 to lineCounter)
		target(lineCounter) = File.readLine(sourceHandle)
	loop
	File.close sourceHandle

	File.readAllLines = TRUE
end function
