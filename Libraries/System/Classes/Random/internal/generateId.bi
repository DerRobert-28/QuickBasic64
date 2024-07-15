$includeonce

'$include:'../../String/append.bi'
'$include:'../../String/Empty.bi'
'$include:'../../String/equals.bi'
'$include:'../../String/replaceAt.bi'
'$include:'../../Char/at.bi'
'$include:'../initialize.bi'
'$include:'../nextByte.bi'

function Random.internal.generateId$ (idList16() as string)
	dim as _bit shouldRepeat
	dim as long each
	dim as string newId

	Random.initialize
	do
		shouldRepeat = FALSE
		newId = Char.at(idList16(Random.nextByte and 15), 0)
		for each = 1 to 35
			String.append newId, Char.at(idList16(Random.nextByte and 15), each)
		next
		for each = 1 to ubound(SharedIdBuffer)
			if String.equals(newId, SharedIdBuffer(each)) then
				shouldRepeat = TRUE
				exit for
			endif
		next
	loop while shouldRepeat
	
	each = internal.malloc(SharedIdBuffer(), newId)
	if each < 1 then
		Random.internal.generateId = String.Empty
	else
		Random.internal.generateId = newID
	endif
end function
