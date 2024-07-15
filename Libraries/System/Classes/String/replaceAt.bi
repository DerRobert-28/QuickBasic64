$includeonce

sub String.replaceAt (this as string, index as long, value as string)
	mid$(this, index + 1, len(value)) = value
end sub
