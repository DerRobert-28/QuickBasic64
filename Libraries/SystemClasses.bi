$includeonce

$if SYSTEM_CLASSES_BI then
$else
$let SYSTEM_CLASSES_BI=1
$endif

'$include:'./System.bi'
'$include:'./System/Classes.bi'
