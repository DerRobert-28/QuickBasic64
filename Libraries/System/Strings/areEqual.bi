$includeonce

'$include:'../String/equals.bi'

function Strings.areEqual` (first as string, second as string)
	Strings.areEqual = String.equals(first, second)
end function
