$includeonce

'$include:'../Long/pack.bi'
'$include:'./concat.bi'
'$include:'./Length.bi'

function String.toString$ (this as string)
	dim as long length
	dim as string lengthStr

	length = String.Length(this)
	lengthStr = Long.pack(length)

	String.toString = String.concat(lengthStr, this)
end function
