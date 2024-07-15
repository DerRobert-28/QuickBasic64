$includeonce

'$include:'../String/of.bi'
'$include:'../String/replaceAt.bi'
'$include:'./internal/generateId.bi'

function Random.GUID$ (kind as long)
	dim as _byte each
	dim as string guid(15)

	if kind < 1 then
		Random.GUID = "00000000-0000-0000-C000-000000000046"
		exit function
	endif

	for each = 0 to 15
		guid(each) = String.of(hex$(each), 36)
		String.replaceAt guid(each), 8, "-"
		String.replaceAt guid(each), 13, "-"
		String.replaceAt guid(each), 14, "4"
		String.replaceAt guid(each), 18, "-"
		String.replaceAt guid(each), 23, "-"
	next
	for each = 0 to 15 step 4
		String.replaceAt guid(each), 19, "8"
		String.replaceAt guid(each + 1), 19, "9"
		String.replaceAt guid(each + 2), 19, "A"
		String.replaceAt guid(each + 3), 19, "B"
	next
	String.replaceAt guid(14), 19, "C"
	String.replaceAt guid(15), 19, "D"

	Random.GUID = Random.internal.generateId(guid())
end function
