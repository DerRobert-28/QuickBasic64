sub Console.log(handle as unsigned integer64, this as string, cause as string)
	dim				_
		message as string,	_
		product as string,	_
		where as string

	product = String.concat(Application.ProductName, ": ")
	where = ": "
	if handle > 0 then where = String.concat2(" in line ", Integer64.toString(handle), where)
	message = String.concat2(this, where, cause)

	Console.writeLine(String.concat(product, message))
end sub
