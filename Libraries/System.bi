$includeonce

$if SYSTEM_BI then
$else
$let SYSTEM_BI=1
$endif

'$include:'./System/Options.bi'
'$include:'./System/Constants.bi'
'$include:'./System/Shared.bi'
'$include:'./System/ExceptionHandler.bi'
'$include:'./System/Main.bi'
'$include:'./System/Keywords.bi'
