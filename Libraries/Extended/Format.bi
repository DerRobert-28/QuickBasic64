$if SYSTEM_BI then
$includeonce

$if FORMAT_BI then
$else
$let FORMAT_BI=1
$endif

'$include:'./Format/fromInt.bi'
'$include:'./Format/fromLong.bi'
'$include:'./Format/fromString.bi'

$endif
