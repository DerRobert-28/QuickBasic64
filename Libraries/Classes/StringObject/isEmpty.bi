$includeonce

'$include:'../Boolean/and.bi'
'$include:'../String/isEmpty.bi'

function StringObject.isEmpty` (this as StringObject)
	dim as _bit condition1, condition2

	condition1 = Boolean.isTrue(this.Reference > NULL)
	condition2 = Boolean.isTrue(this.Reference <= ubound(SharedStringBuffer))
	
	if Boolean.and(condition1, condition2) then
		StringObject.isEmpty = String.isEmpty(SharedStringBuffer(this.Reference))
	else
		StringObject.isEmpty = FALSE
	endif
end function
