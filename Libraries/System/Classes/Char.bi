$if SYSTEM_BI then
$includeonce

$if CHAR_BI then
$else
$let CHAR_BI=1
$endif

'$include:'./Char/at.bi'
'$include:'./Char/Backslash.bi'
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
