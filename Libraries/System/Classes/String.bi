$if SYSTEM_BI then
$includeonce

$if STRING_BI then
$else
$let STRING_BI=1
$endif

'$include:'./String/append.bi'
'$include:'./String/CharAt.bi'
'$include:'./String/concat.bi'
'$include:'./String/Empty.bi'
'$include:'./String/endsWith.bi'
'$include:'./String/equals.bi'
'$include:'./String/invoke.bi'
'$include:'./String/isEmpty.bi'
'$include:'./String/Length.bi'
'$include:'./String/startsWith.bi'
'$include:'./String/Substr.bi'
'$include:'./String/Substring.bi'
'$include:'./String/toLower.bi'
'$include:'./String/toString.bi'
'$include:'./String/toUpper.bi'
'$include:'./String/trim.bi'

$endif
