$if SYSTEM_BI then
$includeonce

'$include:'../Boolean/isTrue.bi'
'$include:'../FileAccess/of.bi'

function File.open% (fileName as string, fileAccessType as integer)
	dim as integer exception, handle

	handle = freefile
	try
		open FileAccess.of(fileAccessType), handle, fileName
	finally
		catch exception
	if Boolean.isTrue(exception) then handle = NULL

	File.open = handle
end function

$endif
