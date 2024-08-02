$includeonce

'$include:'../Boolean/isTrue.bi'
'$include:'../String/Empty.bi'

function File.readLine$ (this as integer)
	dim as integer isException
	dim as string readLine

	try
		line input #this, readLine
	finally
		catch isException
	if Boolean.isTrue(isException) then readLine = String.Empty

	File.readLine = readLine
end function
