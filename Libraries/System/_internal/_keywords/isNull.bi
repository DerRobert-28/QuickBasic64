$includeonce
$if KEYWORDS_BI then

'$include:'../Classes/Object.bi'
'$include:'../Classes/Object/isNull.bi'

function isNull` (this as Object)
	isNull = Object.isNull(this)
end function

$endif
