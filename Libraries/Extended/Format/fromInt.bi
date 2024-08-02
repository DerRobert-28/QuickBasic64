$includeonce

'$include:'../../System/Integer/toString.bi'
'$include:'./internal/createTempFile.bi'
'$include:'./internal/readTempFile.bi'

function Format.fromInt$ (formatString as string, value as integer)
	dim as integer tempFile
	dim as string fileName, result

	result = Integer.toString(value)
	if not Format.internal.createTempFile(tempFile, fileName) then
		Format.fromInt = result
		exit function
	endif

	'Low level due to lack of implementation:
	print #tempFile, using formatString; value;
	
	if Format.internal.readTempFile(tempFile, fileName) then result = File.readLine(tempFile)
	File.close tempFile
	File.delete fileName

	Format.fromInt = result
end function
