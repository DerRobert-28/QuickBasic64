$includeonce

function File.readBytes$ (this as integer, count as long)
	File.readBytes = input$(count, this)
end function
