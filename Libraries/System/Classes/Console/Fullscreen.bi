$includeonce

'$include:'../Boolean/neither.bi'
'$include:'../CharacterSize/Height.bi'
'$include:'../CharacterSize/Width.bi'

sub Console.Fullscreen (charSize as long)
	dim as _byte charWidth, charHeight
	dim as integer xWidth, yHeight

	charWidth = CharacterSize.Width(charSize)
	charHeight = CharacterSize.Height(charSize)

	if Boolean.neither(charWidth < 1, charHeight < 1) then
		xWidth = _desktopwidth \ charWidth
		yHeight = _desktopheight \ charHeight
		width xWidth, yHeight
	endif

	_fullscreen _stretch, _smooth
end sub
