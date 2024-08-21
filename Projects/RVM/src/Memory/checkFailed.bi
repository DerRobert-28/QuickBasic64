function Memory.checkFailed` (isChecking as _byte, address as _unsigned long)
	dim result as _bit
	:
	result = FALSE
	if isChecking then
		'The zero page is not supposed to be manipulated:  
		'if address < &H0350 then result = TRUE
	endif
	:
	Memory.checkFailed = result
end function
