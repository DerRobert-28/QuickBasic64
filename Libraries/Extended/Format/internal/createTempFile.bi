$includeonce

'$include:'../../../System/Boolean/isTrue.bi'
'$include:'../../../System/FileAccess/Write.bi'
'$include:'./createTempFileName.bi'

function Format.internal.createTempFile` (outHandle as integer, outFileName as string)
	outFileName = Format.internal.createTempFileName
	outHandle = File.open(outFileName, FileAccess.Write)

	Format.internal.createTempFile = Boolean.isTrue(outHandle)
end function
