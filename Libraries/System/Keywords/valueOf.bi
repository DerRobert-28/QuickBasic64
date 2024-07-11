$if KEYWORDS_BI then
$includeonce

'$include:'../Classes/String/Empty.bi'

function valueOf$ (this as long)
	dim as long objectCount

	if (this < 1) then
		valueOf = String.Empty
		exit function
	endif

	objectCount = ubound(SharedObjectBuffer)
	if (this > objectCount) then
		valueOf = String.Empty
		exit function
	endif

	valueOf = SharedObjectBuffer(this)
end function

$endif
