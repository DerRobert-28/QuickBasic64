$includeonce

'$include:'./concat.bi'

sub String.append (this as string, other as string)
	this = String.concat(this, other)
end function
