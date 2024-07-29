$includeonce
$if SYSTEM_BI then

'$include:'../../Byte/unpack.bi'
'$include:'../../Char/at.bi'

function CharacterSize.internal.SizeAt%% (this as String, index as _byte)
	CharacterSize.internal.SizeAt = Byte.unpack(Char.at(this, index))
end function

$endif
