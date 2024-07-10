$includeonce

'$include:'../String/Empty.bi'
'$include:'../String/Substr.bi'

function StringObject.ValueOf$ (this as StringObject)
	dim as _bit condition1, condition2, condition3
	dim as string value

	condition1 = Boolean.isTrue(this.Reference < 1)
	condition2 = Boolean.isTrue(this.Reference > ubound(SharedStringBuffer))
	condition3 = Boolean.isTrue(this.Length = 0)
	if Boolean.or(condition1, condition2, condition3) then
		StringObject.ValueOf = String.Empty
		exit function
	endif

	value = SharedStringBuffer(this.Reference)
	value = String.Substr(value, 0, this.Length)

	StringObject.ValueOf = value
end function
