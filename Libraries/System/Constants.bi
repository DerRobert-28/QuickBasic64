$if MAIN_BI=_undefined then
$includeonce

$if CONSTANTS_BI=_undefined then
$let CONSTANTS_BI=_defined
$endif

const FALSE` = 0
const NULL& = 0&
const TRUE` = not FALSE

$endif
