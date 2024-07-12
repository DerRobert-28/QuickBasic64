$includeonce

'$include:'./ValueOf.bi'

sub Application.initialize (this as Application)
'	nothing to do here ...
end sub

sub Application.run (this as Application)
	call Application.execute (this)
	call Application.return(this, Application.ValueOf(this))
end sub

sub Application.dispose (this as Application)
'	nothing to do here ...
end sub
