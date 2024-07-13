$if KEYWORDS_BI then
$includeonce

'$include:'../Classes/String/Empty.bi'

function ValueOf$ (this as long)
	dim as long objectCount

	if (this < 1) then
		ValueOf = String.Empty
		exit function
	endif

	objectCount = ubound(SharedObjectBuffer)
	if (this > objectCount) then
		ValueOf = String.Empty
		exit function
	endif

	ValueOf = SharedObjectBuffer(this)
end function

$endif
