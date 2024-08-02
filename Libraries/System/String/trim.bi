$includeonce

'$include:'../Boolean/isTrue.bi'
'$include:'./internal/trimExtended.bi'
'$include:'./internal/trimSimple.bi'

function String.trim$ (this as string, isExtended as integer)
	if Boolean.isTrue(isExtended) then
		String.trim = String.internal.trimExtended(this)
	else
		String.trim = String.internal.trimSimple(this)
	endif
end function
