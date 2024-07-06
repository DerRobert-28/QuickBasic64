$if SYSTEM_BI=_defined then
$includeonce

$if CHAR_BI=_undefined then
$let CHAR_BI=_defined
$endif

'$include:'./Char/at.bi'
'$include:'./Char/Escape.bi'
'$include:'./Char/from.bi'
'$include:'./Char/Newline.bi'
'$include:'./Char/NoBr.bi'
'$include:'./Char/NoBreak.bi'
'$include:'./Char/Null.bi'
'$include:'./Char/Return.bi'
'$include:'./Char/Space.bi'
'$include:'./Char/Tabulator.bi'
'$include:'./Char/Zero.bi'

$endif
