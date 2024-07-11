$if SYSTEM_BI then
$includeonce

$if APPLICATION_BI then
$else
$let APPLICATION_BI=1
$endif

type Application
	isRunning as integer
	Reference as long
	returnValue as integer
end type

'$include:'./Application/isRunning.bi'
'$include:'./Application/Main.bi'
'$include:'./Application/return.bi'
'$include:'./Application/terminate.bi'
'$include:'./Application/ValueOf.bi'

'IMPLEMENT THE FOLLOWING 3 METHODS:
' - Application.initialize (... as Application)
' - Application.execute (... as Application)
' - Application.dispose (... as Application)

$endif
