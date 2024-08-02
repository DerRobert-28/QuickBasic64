$if SYSTEM_BI then
$includeonce

$if NUMBER_BI then
$else
$let NUMBER_BI=1
$endif

type Number
	Mantissa as long
	Exponent as long
end type

'$include:'./Number/_constructor.bi'
'$include:'./Number/fromInt.bi'

$endif
