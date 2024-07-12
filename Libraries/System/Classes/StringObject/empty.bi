$includeonce

'$include:'../String/Empty.bi'

sub StringObject.empty (this as StringObject)
	SharedStringBuffer(this.Reference) = String.Empty
	this.Length = 0
end sub
