$if SYSTEM_BI then
$includeonce

'$include:'../Boolean/isTrue.bi'
'$include:'../String/Empty.bi'

function File.read$ (this as integer)
	dim as integer exception
	dim as string result

	try
		input #this, result
	finally
		catch exception
	if Boolean.isTrue(exception) then result = String.Empty

	File.read = result
end function

$endif
