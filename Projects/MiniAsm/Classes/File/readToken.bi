function File.readToken`(			_
	this as integer,			_
	lineCounter as unsigned integer64,	_
	readLine as string,			_
	token as string				_
)
	dim			_
		isEmpty as bit,	_
		isEndOf as bit
	
	isEmpty = String.isEmpty(readLine)
	isEndOf = File.EndOf(this)

	if AndAlso(isEmpty, isEndOf) then
		File.readToken = False
		exit function
	endif

	if isEmpty then
		readLine = String.trim(File.readLine(this))
		lineCounter = lineCounter + 1
	endif

	token = String.readToken(readLine)

	File.readToken = True
end function
