$if SYSTEM_BI then
$includeonce

'$include:'../../System/Classes/String/Empty.bi'

sub StringObject.empty (this as StringObject)
	if isNull(this) then exit sub
	
	SharedStringBuffer(ref(this)) = String.Empty
	this.Size = 0
end sub

$endif
