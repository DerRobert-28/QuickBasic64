$includeonce

'$include:'../String/concat.bi'
'$include:'../String/equals.bi'
'$include:'../String/Substr.bi'
'$include:'./internal/EmptyKey.bi'

function Console.readKey$ (shouldWait as integer)
	dim as string empty, this, thisKey

	empty = Console.internal.EmptyKey
	do
		thisKey = String.concat(inkey$, empty)
		this = String.Substr(thisKey, 0, 2)
		if Boolean.isFalse(shouldWait) then exit do
	loop while String.equals(this, empty)

	Console.readKey = this
end function
