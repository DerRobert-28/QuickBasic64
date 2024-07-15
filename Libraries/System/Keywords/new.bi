$if KEYWORDS_BI then
$includeonce

'$include:'./internal/malloc.bi'

function new& (this as string)
	new = internal.malloc(SharedObjectBuffer(), this)
end function

'Xinclude:'../Classes/String/equals.bi'
'Xinclude:'../Classes/String/isEmpty.bi'
' function new& (this as string)
' 	dim as long each, newItem

' 	if String.isEmpty(this) then
' 		new = NULL
' 		exit function
' 	endif

' 	newItem = ubound(SharedObjectBuffer) + 1
' 	for each = 1 to newItem - 1
' 		if String.equals(this, SharedObjectBuffer(each)) then
' 			new = each
' 			exit function
' 		endif
' 	next
	
' 	redim _preserve SharedObjectBuffer(newItem)
' 	SharedObjectBuffer(newItem) = this

' 	new = newItem
' end function

$endif
