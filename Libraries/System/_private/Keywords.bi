$includeonce
$if SYSTEM_BI and MAIN_BI then
$let KEYWORDS_BI=1

'$include:'./Keywords/catch.bi'
'$include:'./Keywords/finally.bi'
'$include:'./Keywords/invoke.bi'
'$include:'./Keywords/isNull.bi'
'$include:'./Keywords/malloc.bi'
'$include:'./Keywords/new.bi'
'$include:'./Keywords/of.bi'
'$include:'./Keywords/ptr.bi'
'$include:'./Keywords/ref.bi'
'$include:'./Keywords/set.bi'
'$include:'./Keywords/throw.bi'
'$include:'./Keywords/try.bi'
'$include:'./Keywords/valueOf.bi'

$endif
