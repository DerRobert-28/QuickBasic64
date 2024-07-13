$includeonce

'$include:'../../System/Classes/Boolean/and.bi'
'$include:'../../System/Classes/Boolean/isTrue.bi'

function StringObject.ReferenceOf& (this as StringObject)
	dim as _bit condition1, condition2

	condition1 = Boolean.isTrue(this.Reference > NULL)
	condition2 = Boolean.isTrue(this.Reference <= ubound(SharedStringBuffer))

	if Boolean.and(condition1, condition2) then
		StringObject.ReferenceOf = this.Reference
	else
		StringObject.ReferenceOf = NULL
	endif
end function
