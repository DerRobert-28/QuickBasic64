$includeonce

'$include:'../Byte/pack.bi'
'$include:'../Integer/unpack.bi'
'$include:'../String/concat.bi'
'$include:'./nextByte.bi'

function Random.nextInt% ()
	dim as _byte lo, hi
	dim as string packed
	
	lo = Byte.pack(Random.nextByte)
	hi = Byte.pack(Random.nextByte)
	packed = String.concat(lo, hi)

	Random.nextInt = Integer.unpack(packed)
end function
