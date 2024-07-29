$if SYSTEM_BI then
$includeonce

$if INTEGER_BI then
$else
$let INTEGER_BI=1
$endif

'$include:'./Integer/invoke.bi'
'$include:'./Integer/pack.bi'
'$include:'./Integer/toString.bi'
'$include:'./Integer/unpack.bi'

$endif
