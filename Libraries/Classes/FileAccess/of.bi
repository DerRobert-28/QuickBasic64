$includeonce

'$include:'../Char/from.bi'

function FileAccess.of$ (fileAccess as _byte)
	FileAccess.of = Char.from((fileAccess and 31) + 64)
end function
