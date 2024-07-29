$includeonce
$if SYSTEM_BI then

'$include:'../Object.bi'
'$include:'./ReferenceOf.bi'

function Object.isNull` (this as Object)
	Object.isNull = (Object.ReferenceOf(this) = NULL)
end function

$endif
