$includeonce
$let APPLICATION_BI=1

type Application
	isRunning as integer
	Reference as long
	returnValue as integer
end type

'$include:'./Application/_constructor.bi'
'$include:'./Application/_Main.bi'
'$include:'./Application/isRunning.bi'
'$include:'./Application/return.bi'
'$include:'./Application/terminate.bi'
'$include:'./Application/ValueOf.bi'

'IMPLEMENT THE FOLLOWING 3 METHODS:
' - Application.initialize (... as Application)
' - Application.execute (... as Application)
' - Application.dispose (... as Application)
