$includeonce

'$include:'../../System/Classes/Long/toString.bi'
'$include:'./internal/createTempFile.bi'
'$include:'./internal/readTempFile.bi'

function Format.fromLong$ (formatString as string, value as long)
	dim as integer tempFile
	dim as string fileName, result

	result = Long.toString(value)
	if not Format.internal.createTempFile(tempFile, fileName) then
		Format.fromLong = result
		exit function
	endif

	'Low level due to lack of implementation:
	print #tempFile, using formatString; value;
	
	if Format.internal.readTempFile(tempFile, fileName) then result = File.readLine(tempFile)
	File.close tempFile
	File.delete fileName

	Format.fromLong = result
end function
