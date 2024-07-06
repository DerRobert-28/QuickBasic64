$includeonce

'$include:'./isTrue.bi'

function Boolean.or` (first as _byte, second as _byte)
	Boolean.or = Boolean.isTrue(first) or Boolean.isTrue(second)
end function

function Boolean.or2` (first as _byte, second as _byte, third as _byte)
	Boolean.or2 = Boolean.or(Boolean.or(first, second), third)
end function

function Boolean.or3` (first as _byte, second as _byte, third as _byte, fourth as _byte)
	Boolean.or3 = Boolean.or(Boolean.or2(first, second, third), fourth)
end function
