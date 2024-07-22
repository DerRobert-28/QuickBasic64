$includeonce
$if KEYWORDS_BI then

'$include:'../Classes/Object.bi'
'$include:'./Ref.bi'

function Ptr& (this as Object)
	Ptr = Ref(this)
end function

$endif
