$if KEYWORDS_BI then
$includeonce

function isNull`(this as long)
	isNull = (this < 1)
end function

$endif
