$if SYSTEM_BI=_defined then
$includeonce

$if HTML_DOCUMENT_BI=_undefined then
$let HTML_DOCUMENT_BI=_defined
$endif


'$include:'./HTMLDocument/head.bi'

$endif
