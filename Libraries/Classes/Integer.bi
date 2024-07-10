$if SYSTEM_BI then
$includeonce

$if INTEGER_BI then
$else
$let INTEGER_BI=1
$endif

'$include:'./Integer/pack.bi'
'$include:'./Integer/unpack.bi'

$endif
