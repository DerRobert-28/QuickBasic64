$if MAIN_BI then
$includeonce

$if KEYWORDS_BI then
$else
$let KEYWORDS_BI=1
$endif

'$include:'./Keywords/catch.bi'
'$include:'./Keywords/finally.bi'
'$include:'./Keywords/new.bi'
'$include:'./Keywords/try.bi'
'$include:'./Keywords/valueOf.bi'

$endif
