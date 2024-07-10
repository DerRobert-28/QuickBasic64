$includeonce

'$include:'../String/equals.bi'
'$include:'../String/toLower.bi'

function Boolean.fromString` (this as string)
	if String.equals(String.toLower(this), "false") then
		Boolean.fromString = FALSE
	else
		Boolean.fromString = TRUE
	endif
end function
