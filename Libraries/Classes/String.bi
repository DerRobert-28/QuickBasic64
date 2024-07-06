$if SYSTEM_BI=_defined then
$includeonce

$if STRING_BI=_undefined then
$let STRING_BI=_defined
$endif

'$include:'./String/append.bi'
'$include:'./String/CharAt.bi'
'$include:'./String/concat.bi'
'$include:'./String/Empty.bi'
'$include:'./String/endsWith.bi'
'$include:'./String/equals.bi'
'$include:'./String/isEmpty.bi'
'$include:'./String/Length.bi'
'$include:'./String/startsWith.bi'
'$include:'./String/Substr.bi'
'$include:'./String/Substring.bi'
'$include:'./String/trim.bi'

$endif
