sub invoke (dummy as integer)
	'nothing to do here ...'
end sub

function isException` (result as integer)
	isException = (asc(mki$(result), 2) <> 0)
end function
