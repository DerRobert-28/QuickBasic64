$if SYSTEM_BI=_defined then
$includeonce

$if INTEGER_BI=_undefined then
$let INTEGER_BI=_defined
$endif

'$include:'./Integer/pack.bi'
'$include:'./Integer/unpack.bi'

$endif
