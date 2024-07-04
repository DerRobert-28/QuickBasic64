function Format.doubleQuote$(this as string)
	Format.doubleQuote = String.concat2(Char.Quote, this, Char.Quote)
end function
