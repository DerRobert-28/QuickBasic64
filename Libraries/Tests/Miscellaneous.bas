'$include:'../System.bi'
'$include:'../System/Classes.bi'
'$include:'../Extended.bi'


function Main%(argc as integer, argv() as string)
	dim as StringObject so1, so2
	
	StringObject so1, "Hallo"
	StringObject so2, "Ciao."

	Console.writeLine StringObject.ValueOf(so1)
	Console.writeLine StringObject.ValueOf(so2)

	Console.writeLine Long.toString(StringObject.ReferenceOf(so1))
	Console.writeLine Long.toString(StringObject.ReferenceOf(so2))

	invokes Console.readLine
end function

