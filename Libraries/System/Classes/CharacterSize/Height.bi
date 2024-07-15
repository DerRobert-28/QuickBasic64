$includeonce

'$include:'./internal/SizeAt.bi'

function CharacterSize.Height%% (this as long)
	CharacterSize.Height = CharacterSize.internal.SizeAt(this, 1)
end function
