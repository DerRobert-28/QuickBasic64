$includeonce
$if SYSTEM_BI then
$let TIME_SPAN_BI=1

'$include:'./TimeSpan/getHours.bi'
'$include:'./TimeSpan/getMilliSeconds.bi'
'$include:'./TimeSpan/getMinutes.bi'
'$include:'./TimeSpan/getSeconds.bi'

$endif
