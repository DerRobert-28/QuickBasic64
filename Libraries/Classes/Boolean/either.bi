$includeonce

'$include:'./isTrue.bi'

function Boolean.either` (first as _byte, second as _byte)
	Boolean.either = Boolean.isTrue(first) xor Boolean.isTrue(second)
end function

function Boolean.either2` (first as _byte, second as _byte, third as _byte)
	Boolean.either2 = Boolean.either(Boolean.either(first, second), third)
end function

function Boolean.either3` (first as _byte, second as _byte, third as _byte, fourth as _byte)
	Boolean.either3 = Boolean.either(Boolean.either2(first, second, third), fourth)
end function
