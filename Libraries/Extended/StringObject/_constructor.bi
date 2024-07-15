
$includeonce

'$include:'../../System/Classes/String/Length.bi'
'$include:'../../System/Keywords/internal/malloc.bi'

sub StringObject (this as StringObject, value as string)
	Object this, internal.malloc(SharedStringBuffer(), value)
	this.Length = String.Length(value)
end sub
