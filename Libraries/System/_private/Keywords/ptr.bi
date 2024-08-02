$includeonce
$if KEYWORDS_BI then

'$include:'../../Object.bi'
'$include:'./ref.bi'

function ptr& (this as Object)
	ptr = Ref(this)
end function

$endif
