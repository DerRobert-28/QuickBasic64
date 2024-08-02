$includeonce

'$include:'../../../System/Environment/getVariable.bi'
'$include:'../../../System/Environment/PathSeparator.bi'
'$include:'../../../System/Random/GUID.bi'
'$include:'../../../System/String/concat.bi'

function Format.internal.createTempFileName$ ()
	dim as string separator, userprofile

	separator = Environment.PathSeparator
	userprofile = Environment.getVariable("userprofile")

	Format.internal.createTempFileName = String.concat2(userprofile, separator, Random.GUID(1))
end function
