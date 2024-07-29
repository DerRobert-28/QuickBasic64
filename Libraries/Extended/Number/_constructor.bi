$if SYSTEM_BI then
$includeonce

'$include:'../../System/Classes/Long/pack.bi'
'$include:'../../System/Classes/Object/_constructor.bi'
'$include:'../../System/Classes/String/concat.bi'

sub Number (this as Number, mantissa as long, exponent as long)
	dim as long thisRef
	dim as string packedMantissa, packedExponent

	this.Mantissa = mantissa
	this.Exponent = exponent

	packedMantissa = Long.pack(mantissa)
	packedExponent = Long.pack(exponent)

	thisRef = new(String.concat(packedMantissa, packedExponent))
	Object this.internal, thisRef, len(this)
end sub

$endif
