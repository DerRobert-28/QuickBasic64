$if KEYWORDS_BI=_defined then
$includeonce

'$include:'../../Classes/String/equals.bi'
'$include:'../../Classes/String/isEmpty.bi'

function new& (this as string)
	dim as long each, newItem

	if String.isEmpty(this) then
		new = NULL
		exit function
	endif

	newItem = ubound(ObjectHandler) + 1
	for each = 1 to newItem - 1
		if String.equals(this, ObjectHandler(each)) then
			new = each
			exit function
		endif
	next
	
	redim _preserve ObjectHandler(newItem)
	ObjectHandler(newItem) = this

	new = newItem
end function

$endif
