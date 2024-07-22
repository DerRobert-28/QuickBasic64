$includeonce
$if KEYWORDS_BI then

'$include:'./malloc.bi'

function new& (this as string)
	new = malloc(SharedObjectBuffer(), this)
end function

$endif
