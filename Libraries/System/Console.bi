$if SYSTEM_BI then
$includeonce

$if CONSOLE_BI then
$else
$let CONSOLE_BI=1
$endif

'$include:'./Console/Fullscreen.bi'
'$include:'./Console/Newline.bi'
'$include:'./Console/read.bi'
'$include:'./Console/readKey.bi'
'$include:'./Console/readLine.bi'
'$include:'./Console/setSize.bi'
'$include:'./Console/setWindowSize.bi'
'$include:'./Console/write.bi'
'$include:'./Console/writeLine.bi'

$endif
