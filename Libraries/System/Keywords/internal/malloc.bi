$if KEYWORDS_BI then
$includeonce

'$include:'../../Classes/String/equals.bi'
'$include:'../../Classes/String/isEmpty.bi'

function internal.malloc& (buffer() as string, value as string)
	dim as long each, newItem

	if String.isEmpty(value) then
		internal.malloc = NULL
		exit function
	endif

	newItem = ubound(buffer) + 1
	for each = 1 to newItem - 1
		if String.equals(value, buffer(each)) then
			internal.malloc = each
			exit function
		endif
	next
	
	redim _preserve buffer(newItem)
	buffer(newItem) = value

	internal.malloc = newItem
end function

$endif
