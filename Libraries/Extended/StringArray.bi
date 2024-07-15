$if SYSTEM_BI then
$includeonce

$if STRING_ARRAY_BI then
$else
$let STRING_ARRAY_BI=1
$endif

'$include:'./StringArray/contains.bi'
'$include:'./StringArray/empty.bi'

$endif
