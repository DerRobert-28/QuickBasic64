$includeonce

'$include:'../../System/Classes/String/equals.bi'
'$include:'../../System/Classes/String/isEmpty.bi'

sub StringObject (this as StringObject, value as string)
	dim as long each, newItem

	if String.isEmpty(value) then
		this.Reference = NULL
		this.Length = 0
		exit sub
	endif

	newItem = ubound(SharedStringBuffer) + 1
	this.Length = len(value)
	for each = 1 to newItem - 1
		if String.equals(value, SharedStringBuffer(each)) then
			this.Reference = each			
			exit sub
		endif
	next
	
	redim _preserve SharedStringBuffer(newItem)
	SharedStringBuffer(newItem) = value

	this.Reference = newItem
end sub
