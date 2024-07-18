$includeonce

'$include:'./internal/createTempFileName.bi'
'$include:'./internal/readTempFile.bi'

function Format.fromString$ (formatString as string, value as string)
	dim as integer tempFile
	dim as string fileName, result

	result = value
	if not Format.internal.createTempFile(tempFile, fileName) then
		Format.fromString = result
		exit function
	endif

	'Low level due to lack of implementation:
	print #tempFile, using formatString; value;
	
	if Format.internal.readTempFile(tempFile, fileName) then result = File.readLine(tempFile)
	File.close tempFile
	File.delete fileName

	Format.fromString = result
end function
