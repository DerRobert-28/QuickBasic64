$includeonce

'$include:'./_constructor.bi'
'$include:'./isRunning.bi'
'$include:'./ValueOf.bi'

function Main%(argc as integer, argv() as string)
	dim as Application this

	Application this, argv(-1)

	call Application.initialize(this)
	while Application.isRunning(this)
		call Application.run(this)
	wend
	call Application.dispose(this)

	Main = Application.ValueOf(this)
end function
