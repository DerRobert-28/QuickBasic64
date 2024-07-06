$if SYSTEM_BI then
$includeonce

$if FILE_BI then
$else
$let FILE_BI=1
$endif

'$include:'./File/close.bi'
'$include:'./File/closeAll.bi'
'$include:'./File/closeAllAndDelete.bi'
'$include:'./File/delete.bi'
'$include:'./File/EndOf.bi'
'$include:'./File/exists.bi'
'$include:'./File/open.bi'
'$include:'./File/read.bi'
'$include:'./File/readLine.bi'
'$include:'./File/rename.bi'
'$include:'./File/write.bi'
'$include:'./File/writeLine.bi'

$endif
