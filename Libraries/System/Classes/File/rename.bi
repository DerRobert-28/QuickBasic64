$includeonce

sub File.rename (this as string, other as string)
	if File.exists(this) then name this as other
end sub
