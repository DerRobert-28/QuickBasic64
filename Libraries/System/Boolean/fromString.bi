$includeonce
$if SYSTEM_BI then

'$include:'../String/equals.bi'
'$include:'../String/toLower.bi'
'$include:'../String/toLower.bi'

function Boolean.fromString` (this as string)
	dim as string bool
	bool = String.toLower(this)
	if String.equals(String.toLower(this), "true") then
		Boolean.fromString = TRUE
	else
		Boolean.fromString = FALSE
	endif
end function

$endif
