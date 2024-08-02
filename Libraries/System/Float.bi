$if SYSTEM_BI then
$includeonce

$if FLOAT_BI then
$else
$let FLOAT_BI=1
$endif

'$include:'./Float/invoke.bi'
'$include:'./Float/pack.bi'
'$include:'./Float/toString.bi'
'$include:'./Float/unpack.bi'

$endif
