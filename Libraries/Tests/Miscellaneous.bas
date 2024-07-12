'$include:'../System.bi'
'$include:'../System/Classes.bi'
'$include:'../Application.bi'
'$include:'../Application/execute.bi'


sub Application.execute(this as Application)
	dim as StringObject so1, so2
	
	StringObject so1, "Hallo"
	StringObject so2, "Ciao."

	Console.writeLine StringObject.ValueOf(so1)
	Console.writeLine StringObject.ValueOf(so2)

	Console.writeLine Long.toString(StringObject.ReferenceOf(so1))
	Console.writeLine Long.toString(StringObject.ReferenceOf(so2))

	invokes Console.readLine
end sub
