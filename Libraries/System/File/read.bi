$includeonce

'$include:'../Boolean/isTrue.bi'
'$include:'../String/Empty.bi'

function File.read$ (this as integer)
	dim as integer isException
	dim as string result

	try
		input #this, result
	finally
		catch isException
	if Boolean.isTrue(isException) then result = String.Empty

	File.read = result
end function
