$includeonce
$if SYSTEM_BI then
$let MAIN_BI=1

dim as integer argc, each
argc = _commandcount - 1
dim as string argv(-1 to argc)
for each = -1 to argc
	argv(each) = command$(each + 1)
next
system Main%(argc, argv())

$endif
