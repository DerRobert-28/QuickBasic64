$if KEYWORDS_BI=_defined then
$includeonce

'$include:'../../Classes/String/Empty.bi'

function valueOf$ (this as long)
	dim as long objectCount

	if (this < 1) then
		valueOf = String.Empty
		exit function
	endif

	objectCount = ubound(ObjectHandler)
	if (this > objectCount) then
		valueOf = String.Empty
		exit function
	endif

	valueOf = ObjectHandler(this)
end function

$endif
