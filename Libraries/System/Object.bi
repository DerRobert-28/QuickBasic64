$includeonce
$if SYSTEM_BI then
$let OBJECT_BI=1

type Object
	Reference as _unsigned _bit * 32
end type

'$include:'./Object/_constructor.bi'
'$include:'./Object/isNull.bi'
'$include:'./Object/ReferenceOf.bi'
'$include:'./Object/ValueOf.bi'

$endif
