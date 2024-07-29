$if SYSTEM_BI then
$includeonce

'$include:'../../System/Classes/Boolean/isTrue.bi'
'$include:'../../System/Classes/String/Empty.bi'
'$include:'../../System/Classes/String/Substr.bi'

function StringObject.ValueOf$ (this as Object)
	dim as _bit condition1, condition2, condition3
	dim as string value

	condition1 = Boolean.isTrue(isNull(this))
	condition2 = Boolean.isTrue(ref(this) > ubound(SharedStringBuffer))
	condition3 = Boolean.isTrue(this.Length = 0)
	if Boolean.or2(condition1, condition2, condition3) then
		StringObject.ValueOf = String.Empty
		exit function
	endif

	value = SharedStringBuffer(ref(this))
	value = String.Substr(value, 0, this.Length)

	StringObject.ValueOf = value
end function

$endif
