$if SYSTEM_BI then
$includeonce

'$include:'../../System/Classes/Boolean/isFalse.bi'
'$include:'../../System/Classes/Boolean/isTrue.bi'
'$include:'../../System/Classes/Boolean/and.bi'
'$include:'../../System/Classes/String/isEmpty.bi'

function StringObject.isEmpty` (this as Object)
	dim as _bit condition1, condition2

	condition1 = Boolean.isFalse(isNull(this))
	condition2 = Boolean.isTrue(ref(this) <= ubound(SharedStringBuffer))
	
	if Boolean.and(condition1, condition2) then
		StringObject.isEmpty = String.isEmpty(SharedStringBuffer(ref(this)))
	else
		StringObject.isEmpty = FALSE
	endif
end function
