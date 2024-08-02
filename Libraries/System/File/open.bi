$includeonce

'$include:'../Boolean/isTrue.bi'
'$include:'../FileAccess/of.bi'

function File.open% (fileName as string, fileAccessType as integer)
	dim as integer isException, handle

	handle = freefile
	try
		open FileAccess.of(fileAccessType), handle, fileName
	finally
		catch isException
	if Boolean.isTrue(isException) then handle = NULL

	File.open = handle
end function
