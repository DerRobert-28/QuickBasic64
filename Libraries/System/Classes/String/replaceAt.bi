$includeonce

'$include:'./concat.bi'
'$include:'./Substr.bi'
'$include:'./Substring.bi'

sub String.replaceAt (this as string, index as long, value as string)
	dim as string l, r

	l = String.SubStr(this, 0, index)
	r = String.SubString(this, index + 1)
	this = String.concat2(l, value, r)
end sub
