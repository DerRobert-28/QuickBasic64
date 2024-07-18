$includeonce

$if version >= 3.12 then

sub File.writeAllBytes (this as string, targetFile as string)
	_writefile targetFile, this
end sub

$else

'$include:'../FileAccess/Write.bi'
'$include:'./close.bi'
'$include:'./open.bi'
'$include:'./write.bi'

sub File.writeAllBytes (this as string, targetFile as string)
	dim as integer targetHandle
	
	targetHandle = File.open(targetFile, FileAccess.Write)
	if isNull(targetHandle) then exit sub
	File.write targetHandle, this
	File.close targetHandle
end sub

$endif
