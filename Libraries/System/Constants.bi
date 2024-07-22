$includeonce
$if SYSTEM_BI then
$if MAIN_BI then
$else
$let CONSTANTS_BI=1

const FALSE` = 0
const TRUE` = not FALSE

const NULL& = 0&

$endif
$endif
