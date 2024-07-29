$includeonce

'$include:'../System/Classes/String/toString.bi'

sub Application (this as Application, appName as string)
	this.isRunning = TRUE
	this.Reference = new(String.toString(appName))
	this.returnValue = 0
end sub
