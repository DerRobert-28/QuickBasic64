function File.readLine$(this as integer)
	dim				_
		isException as integer,	_
		readLine as string

	Try
		line input #this, readLine
	Finally
		Catch isException
	if isException then readLine = String.Empty

	File.readLine = readLine
end function
