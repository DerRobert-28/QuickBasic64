$includeonce

'$include:'../Boolean/isTrue.bi'
'$include:'../String/Empty.bi'

function File.readLine$ (this as integer)
	dim as integer exception
	dim as string readLine

	try
		line input #this, readLine
	finally
		catch exception
	if Boolean.isTrue(exception) then readLine = String.Empty

	File.readLine = readLine
end function
