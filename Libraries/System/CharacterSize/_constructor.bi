$includeonce
$if SYSTEM_BI then

'$include:'../Boolean/or.bi'
'$include:'../Byte/pack.bi'
'$include:'../String/concat.bi'
'$include:'../String/Empty.bi'

function CharacterSize$ (charWidth as _byte, charHeight as _byte)
	dim as string packed

	if Boolean.or(charWidth < 1, charHeight < 1) then
		CharacterSize = String.Empty
		exit function
	endif

	CharacterSize = String.concat(Byte.pack(charWidth), Byte.pack(charHeight))
end function

$endif
