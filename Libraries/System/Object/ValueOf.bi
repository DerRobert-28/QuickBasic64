$includeonce
$if SYSTEM_BI then

'$include:'../Object.bi'
'$include:'./ReferenceOf.bi'

function Object.ValueOf$ (this as Object)
	Object.ValueOf = SharedObjectBuffer(Object.ReferenceOf(this))
end function

$endif
