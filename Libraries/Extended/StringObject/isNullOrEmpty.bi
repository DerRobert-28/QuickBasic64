$if SYSTEM_BI then
$includeonce

'$include:'../../System/Classes/Boolean/or.bi'
'$include:'./isEmpty.bi'
'$include:'./isNull.bi'

function StringObject.isNullOrEmpty` (this as Object)
	StringObject.isNullOrEmpty = Boolean.or(StringObject.isNull(this), StringObject.isEmpty(this))
end function

$endif
