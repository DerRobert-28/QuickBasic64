$includeonce
$if SYSTEM_BI and MAIN_BI then
$let KEYWORDS_BI=1

'$include:'./_keywords/catch.bi'
'$include:'./_keywords/finally.bi'
'$include:'./_keywords/invoke.bi'
'$include:'./_keywords/isNull.bi'
'$include:'./_keywords/malloc.bi'
'$include:'./_keywords/new.bi'
'$include:'./_keywords/of.bi'
'$include:'./_keywords/Ptr.bi'
'$include:'./_keywords/Ref.bi'
'$include:'./_keywords/set.bi'
'$include:'./_keywords/throw.bi'
'$include:'./_keywords/try.bi'
'$include:'./_keywords/ValueOf.bi'

$endif
