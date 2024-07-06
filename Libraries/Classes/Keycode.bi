$if SYSTEM_BI=_defined then
$includeonce

$if KEYCODE_BI=_undefined then
$let KEYCODE_BI=_defined
$endif

'$include:'./Keycode/Escape.bi'
'$include:'./Keycode/F1.bi'
'$include:'./Keycode/F2.bi'
'$include:'./Keycode/F3.bi'
'$include:'./Keycode/F4.bi'
'$include:'./Keycode/F5.bi'
'$include:'./Keycode/F6.bi'
'$include:'./Keycode/F7.bi'
'$include:'./Keycode/F8.bi'
'$include:'./Keycode/F9.bi'
'$include:'./Keycode/F10.bi'
'$include:'./Keycode/from.bi'
'$include:'./Keycode/fromExtended.bi'
'$include:'./Keycode/Newline.bi'
'$include:'./Keycode/Null.bi'
'$include:'./Keycode/Return.bi'
'$include:'./Keycode/Tabulator.bi'

$endif
