function File.read$(this as integer)
	dim					_
		isException	as integer,	_
		result		as string

	Try
		input #this, result
	Finally
		Catch isException
	if isException then result = String.Empty

	File.read = result
end function