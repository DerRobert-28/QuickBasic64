$if SYSTEM_BI then
$includeonce

$if CLASSES_BI then
$else
$let CLASSES_BI=1
$endif

'$include:'./Classes/Char.bi'
'$include:'./Classes/Console.bi'
'$include:'./Classes/HTMLDocument.bi'
'$include:'./Classes/Integer.bi'
'$include:'./Classes/Keycode.bi'
'$include:'./Classes/String.bi'
'$include:'./Classes/Strings.bi'

$endif
