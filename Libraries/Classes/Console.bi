$if SYSTEM_BI=_defined then
$includeonce

$if CONSOLE_BI=_undefined then
$let CONSOLE_BI=_defined
$endif

'$include:'./Console/Newline.bi'
'$include:'./Console/read.bi'
'$include:'./Console/readKey.bi'
'$include:'./Console/readLine.bi'
'$include:'./Console/write.bi'
'$include:'./Console/writeLine.bi'

$endif
