$includeonce

'$include:'../Boolean/or.bi'
'$include:'../Byte/pack.bi'
'$include:'../String/concat.bi'

function CharacterSize& (charWidth as _byte, charHeight as _byte)
	dim as string packed

	if Boolean.or(charWidth < 1, charHeight < 1) then
		CharacterSize = NULL
		exit function
	endif

	packed = String.concat(Byte.pack(charWidth), Byte.pack(charHeight))
	CharacterSize = new(packed)
end function
