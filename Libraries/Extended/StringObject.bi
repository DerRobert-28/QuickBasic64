$if SYSTEM_BI then
$includeonce

$if STRING_OBJECT_BI then
$else
$let STRING_OBJECT_BI=1
$endif

type StringObject
	Reference as long
	Length as long
end type

'$include:'./StringObject/_constructor.bi'
'$include:'./StringObject/empty.bi'
'$include:'./StringObject/isEmpty.bi'
'$include:'./StringObject/isNull.bi'
'$include:'./StringObject/isNullOrEmpty.bi'
'$include:'./StringObject/ReferenceOf.bi'
'$include:'./StringObject/ValueOf.bi'

$endif
