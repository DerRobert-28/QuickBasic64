$includeonce
$if KEYWORDS_BI then

'$include:'../../String/equals.bi'
'$include:'../../String/isEmpty.bi'

function malloc& (redimable() as string, value as string)
	dim as long each, newItem

	if String.isEmpty(value) then
		malloc = NULL
		exit function
	endif

	newItem = ubound(redimable) + 1
	for each = 1 to newItem - 1
		if String.equals(value, redimable(each)) then
			malloc = each
			exit function
		endif
	next
	
	redim _preserve redimable(newItem)
	redimable(newItem) = value

	malloc = newItem
end function

$endif
