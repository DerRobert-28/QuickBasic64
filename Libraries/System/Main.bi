dim argc as integer
dim each as integer

argc = _commandcount - 1

dim argv(-1 to 0) as string
for each = 0 to argc
	argv(each - 1) = command$(each)
next

ObjectHandle = NULL
system Main%(argc, argv())
