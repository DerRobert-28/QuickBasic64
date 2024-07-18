$includeonce

'$include:'../../../System/Classes/Boolean/isTrue.bi'
'$include:'../../../System/Classes/File/close.bi'
'$include:'../../../System/Classes/FileAccess/Read.bi'

function Format.internal.readTempFile` (outHandle as integer, fileName as string)
	File.close outHandle
	outHandle = File.open(fileName, FileAccess.Read)
	
	Format.internal.readTempFile = Boolean.isTrue(outHandle)
end function
