$includeonce

'$include:'../String/of.bi'
'$include:'../String/replaceAt.bi'
'$include:'./internal/generateId.bi'

function Random.UUID$ (kind as long)
	dim as integer each
	dim as string uuid(15)

	if kind < 1 then
		Random.UUID = "00000000-0000-0000-0000-000000000000"
		exit function
	endif

	for each = 0 to 15
		uuid(each) = String.of(hex$(each), 36)
		String.replaceAt uuid(each), 8, "-"
		String.replaceAt uuid(each), 13, "-"
		String.replaceAt uuid(each), 18, "-"
		String.replaceAt uuid(each), 23, "-"
	next

	Random.UUID = Random.internal.generateId(uuid())
end function
