$includeonce
$if KEYWORDS_BI then

'$include:'../../Object.bi'
'$include:'../../Object/ReferenceOf.bi'

function ref& (this as Object)
	ref = Object.ReferenceOf(this)
end function

$endif
