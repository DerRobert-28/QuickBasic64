$if SYSTEM_BI then
$includeonce

$if DOUBLE_BI then
$else
$let DOUBLE_BI=1
$endif

'$include:'./Double/invoke.bi'
'$include:'./Double/pack.bi'
'$include:'./Double/toString.bi'
'$include:'./Double/unpack.bi'

$endif
