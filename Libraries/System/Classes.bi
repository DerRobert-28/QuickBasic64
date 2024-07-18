$if SYSTEM_BI then
$includeonce

$if CLASSES_BI then
$else
$let CLASSES_BI=1
$endif

'$include:'./Classes/Char.bi'
'$include:'./Classes/CharacterSize.bi'
'$include:'./Classes/Console.bi'
'$include:'./Classes/Environment.bi'
'$include:'./Classes/File.bi'
'$include:'./Classes/FileAccess.bi'
'$include:'./Classes/Integer.bi'
'$include:'./Classes/Keycode.bi'
'$include:'./Classes/Long.bi'
'$include:'./Classes/Object.bi'
'$include:'./Classes/Random.bi'
'$include:'./Classes/String.bi'
'$include:'./Classes/Strings.bi'

$endif
