$includeonce

'$include:'../../System/Classes/Integer/toString.bi'
'$include:'../../System/Classes/String/Length.bi'

function Number.fromInt& (value as integer)
	dim as Number this
	dim as long exponent, exponentRef, mantissaRef
	dim as string mantissaString

	mantissaString = Integer.toString(value)
	mantissaRef = new(mantissaString)
	exponent = String.Length(mantissaString) - 1 + (value < 0)
	exponentRef = new(Integer.toString(exponent))
	
	Number this, mantissaRef, exponentRef

	Number.fromInt = this.internal.Reference	
end function
