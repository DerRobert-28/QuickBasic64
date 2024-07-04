goto onAfterException

onException:
	LastException = err
	hasOperationFailed = LastException <> 0
	resume next

onAfterException:
