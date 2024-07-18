$includeonce

'$include:'../../../System/Classes/Environment/getVariable.bi'
'$include:'../../../System/Classes/Environment/PathSeparator.bi'
'$include:'../../../System/Classes/Random/GUID.bi'
'$include:'../../../System/Classes/String/concat.bi'

function Format.internal.createTempFileName$ ()
	dim as string separator, userprofile

	separator = Environment.PathSeparator
	userprofile = Environment.getVariable("userprofile")

	Format.internal.createTempFileName = String.concat2(userprofile, separator, Random.GUID(1))
end function
