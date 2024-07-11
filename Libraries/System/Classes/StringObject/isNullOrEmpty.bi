$includeonce

'$include:'../Boolean/or.bi'
'$include:'./isEmpty.bi'
'$include:'./isNull.bi'

function StringObject.isNullOrEmpty` (this as StringObject)
	StringObject.isNullOrEmpty = Boolean.or(StringObject.isNull(this), StringObject.isEmpty(this))
end function
