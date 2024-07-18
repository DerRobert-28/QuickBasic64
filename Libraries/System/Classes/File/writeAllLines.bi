$includeonce

'$include:'../FileAccess/Write.bi'
'$include:'./close.bi'
'$include:'./open.bi'
'$include:'./writeLine.bi'

sub File.writeAllBytes (source() as string, targetFile as string)
	dim as integer each, targetHandle
	
	targetHandle = File.open(targetFile, FileAccess.Write)
	if isNull(targetHandle) then exit sub
	for each = lbound(source) to ubound(source)
		File.writeLine targetHandle, source(each)
	next
	File.close targetHandle
end sub
