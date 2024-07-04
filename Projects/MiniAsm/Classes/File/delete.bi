sub File.delete(this as string)

	if File.exists(this) then kill this

end sub

