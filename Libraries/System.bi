$includeonce

$if SYSTEM_BI=_undefined then
$let SYSTEM_BI=_defined
$endif

'$include:'./System/Options.bi'
'$include:'./System/Constants.bi'
'$include:'./System/Shared.bi'
'$include:'./System/ExceptionHandler.bi'
'$include:'./System/Main.bi'
'$include:'./System/Keywords.bi'
