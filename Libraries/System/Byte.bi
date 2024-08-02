$if SYSTEM_BI then
$includeonce

$if BYTE_BI then
$else
$let BYTE_BI=1
$endif

'$include:'./Byte/invoke.bi'
'$include:'./Byte/pack.bi'
'$include:'./Byte/toString.bi'
'$include:'./Byte/unpack.bi'

$endif
