$includeonce
$if KEYWORDS_BI then

'$include:'../Classes/Object.bi'
'$include:'../Classes/Object/ReferenceOf.bi'

function Ref& (this as Object)
	Ref = Object.ReferenceOf(this)
end function

$endif
