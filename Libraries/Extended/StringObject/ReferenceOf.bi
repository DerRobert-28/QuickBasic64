$if SYSTEM_BI then
$includeonce

'$include:'../../System/Classes/Boolean/and.bi'
'$include:'../../System/Classes/Boolean/isFalse.bi'
'$include:'../../System/Classes/Boolean/isTrue.bi'

function StringObject.ReferenceOf& (this as Object)
	dim as _bit condition1, condition2

	condition1 = Boolean.isFalse(isNull(this))
	condition2 = Boolean.isTrue(ref(this) <= ubound(SharedStringBuffer))

	if Boolean.and(condition1, condition2) then
		StringObject.ReferenceOf = ref(this)
	else
		StringObject.ReferenceOf = NULL
	endif
end function

$endif
