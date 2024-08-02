$if SYSTEM_BI then
$includeonce

function StringObject.isNull` (this as Object)
	StringObject.isNull = isNull(this)
end function

$endif
