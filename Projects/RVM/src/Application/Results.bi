function DefaultResult% ()
	DefaultResult = 0
end function

function HaltResult% ()
	HaltResult = &h8000
end function

function StopResult% ()
	StopResult = &h8100
end function

function SuccessResult% ()
	SuccessResult = &h8200
end function
