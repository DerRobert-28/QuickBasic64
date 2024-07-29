$includeonce
$if SYSTEM_BI and KEYWORDS_BI then

'$include:'../Classes/Object.bi'
'$include:'../Classes/Object/ValueOf.bi'

function ValueOf$ (this as Object)
	ValueOf = Object.ValueOf(this)
end function

$endif
