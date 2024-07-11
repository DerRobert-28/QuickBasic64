$if SYSTEM_BI then
$includeonce

$if LONG_BI then
$else
$let LONG_BI=1
$endif

'$include:'./Long/invoke.bi'
'$include:'./Long/pack.bi'
'$include:'./Long/toString.bi'
'$include:'./Long/unpack.bi'

$endif
