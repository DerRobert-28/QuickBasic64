function Integer64.parse`(this as string, value as unsigned integer64)
	dim				_
		isException as integer,	_
		isSuccess as bit

	Try
		value = val(this)
		isSuccess = True
	Finally
		Catch isException
	if(isException) then isSuccess = False

	Integer64.parse = isSuccess
end function
