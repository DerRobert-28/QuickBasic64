$if SYSTEM_BI=_defined then

$includeonce

$if CLASSES_BI=_undefined then
$let CLASSES_BI=_defined
$endif

'$include:'./Classes/Char.bi'
'$include:'./Classes/Console.bi'
'$include:'./Classes/HTMLDocument.bi'
'$include:'./Classes/Integer.bi'
'$include:'./Classes/Keycode.bi'
'$include:'./Classes/String.bi'
'$include:'./Classes/Strings.bi'

$endif
