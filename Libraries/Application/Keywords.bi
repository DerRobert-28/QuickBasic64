function New&(this as string)
	dim as long each, newItem
	:
	if (this = "") then
		New = NULL
		exit function
	endif
	newItem = ubound(ObjectHandler) + 1
	for each = 1 to newItem - 1
		if (this = ObjectHandler(each)) then
			New = each
			exit function
		endif
	next
	redim _preserve ObjectHandler(newItem)
	ObjectHandler(newItem) = this
	:
	New = newItem
end function

sub Catch(eh as integer)
	eh = ExceptionHandle
end sub

sub Finally()
	on error goto 0
end sub

sub Try()
	on error goto ExceptionHandler
end sub
