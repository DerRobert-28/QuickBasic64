$includeonce
'$include:'./isFalse.bi'

function Boolean.neither` (first as _byte, second as _byte)
	Boolean.neither = Boolean.isFalse(first) and Boolean.isFalse(second)
end function

function Boolean.neither2` (first as _byte, second as _byte, third as _byte)
	Boolean.neither2 = Boolean.neither(Boolean.neither(first, second), third)
end function

function Boolean.neither3` (first as _byte, second as _byte, third as _byte, fourth as _byte)
	Boolean.neither3 = Boolean.neither(Boolean.neither2(first, second, third), fourth)
end function
