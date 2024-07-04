sub File.closeAllAndDelete(this as string)

	File.closeAll
	File.delete this

end sub
