$includeonce

'$include:'../../Byte/unpack.bi'
'$include:'../../Char/at.bi'
'$include:'../../String/Length.bi'

function CharacterSize.internal.SizeAt%% (this as long, index as _byte)
	dim as string packed

	if isNull(this) then
		CharacterSize.internal.SizeAt = 0
		exit function
	endif

	packed = ValueOf(this)
	if String.Length(packed) <> 2 then
		CharacterSize.internal.SizeAt = 0
		exit function
	endif

	CharacterSize.internal.SizeAt = Byte.unpack(Char.at(packed, index))
end function
