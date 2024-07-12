$includeonce

'$include:'./return.bi'
'$include:'./ValueOf.bi'

sub Application.terminate (this as Application, value as integer)
	call Application.return(this, value)
	call Application.dispose(this)
	system Application.ValueOf(this)
end sub
