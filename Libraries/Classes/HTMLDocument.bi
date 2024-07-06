$if SYSTEM_BI then
$includeonce

$if HTML_DOCUMENT_BI then
$else
$let HTML_DOCUMENT_BI=1
$endif

'$include:'./HTMLDocument/head.bi'

$endif
