$includeonce

'$include:'./internal/SizeAt.bi'

function CharacterSize.Width%% (this as long)
	CharacterSize.Width = CharacterSize.internal.SizeAt(this, 0)
end function
