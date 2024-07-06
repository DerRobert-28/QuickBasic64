$if MAIN_BI=_defined then
$includeonce

$if KEYWORDS_BI=_undefined then
$let KEYWORDS_BI=_defined
$endif

'$include:'./Keywords/catch.bi'
'$include:'./Keywords/finally.bi'
'$include:'./Keywords/new.bi'
'$include:'./Keywords/try.bi'
'$include:'./Keywords/valueOf.bi'

$endif
