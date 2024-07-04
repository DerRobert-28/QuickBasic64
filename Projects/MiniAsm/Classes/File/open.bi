function File.open%(fileName as string, fileAccessType as integer)
	dim					_
		handle		as integer,	_
		isException	as integer

	handle = freefile
	Try
		open FileAccess.of(fileAccessType), handle, fileName
	Finally
		Catch isException
	if isException then handle = NULL

	File.open = handle
end function
