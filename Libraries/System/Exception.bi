$includeonce
$if SYSTEM_BI then
$let EXCEPTION_BI=1

'$include:'./Exception/_constructor.bi'
'$include:'./Exception/IllegalFunctionCall.bi'
'$include:'./Exception/TypeMismatch.bi'

$endif
