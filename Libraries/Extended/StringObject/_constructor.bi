$includeonce

'$include:'../../System/Classes/String/Length.bi'
'$include:'../../System/Keywords/internal/malloc.bi'

sub StringObject (this as StringObject, value as string)
	this.Length = String.Length(value)	
	Object this.internal, internal.malloc(SharedStringBuffer(), value), this.Length
end sub
