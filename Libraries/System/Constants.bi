$if MAIN_BI then
$else
$includeonce

$if CONSTANTS_BI then
$else
$let CONSTANTS_BI=1
$endif

const FALSE` = 0
const NULL& = 0&
const TRUE` = not FALSE

$endif
