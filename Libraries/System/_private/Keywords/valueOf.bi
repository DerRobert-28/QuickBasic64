$includeonce
$if SYSTEM_BI and KEYWORDS_BI then

'$include:'../../Object.bi'
'$include:'../../Object/ValueOf.bi'

function valueOf$ (this as Object)
	valueOf = Object.ValueOf(this)
end function

$endif
