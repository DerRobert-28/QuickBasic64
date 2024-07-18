$if SYSTEM_BI then
$includeonce

$if OBJECT_BI then
$else
$let OBJECT_BI=1
$endif

type Object
	Reference as long
	Size as long
end type

'$include:'./Object/_constructor.bi'

$endif
