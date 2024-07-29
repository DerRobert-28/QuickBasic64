$includeonce

sub Application.return (this as Application, value as integer)
	this.isRunning = FALSE
	this.returnValue = value
end sub
