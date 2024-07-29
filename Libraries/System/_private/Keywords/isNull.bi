$includeonce
$if KEYWORDS_BI then

'$include:'../../Object.bi'
'$include:'../../Object/isNull.bi'

function isNull` (this as Object)
	isNull = Object.isNull(this)
end function

$endif
