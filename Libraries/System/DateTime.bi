$includeonce
$if SYSTEM_BI then
$let DATE_TIME_BI=1

'$include:'./DateTime/getDay.bi'
'$include:'./DateTime/getHours.bi'
'$include:'./DateTime/getMinutes.bi'
'$include:'./DateTime/getMonth.bi'
'$include:'./DateTime/getSeconds.bi'
'$include:'./DateTime/getYear.bi'
'$include:'./DateTime/now.bi'
'$include:'./DateTime/toString.bi'

$endif
