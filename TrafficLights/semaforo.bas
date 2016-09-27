symbol RED = B.0
symbol YELLOW = B.1
symbol GREEN = B.2

symbol SW_RED = pinC.1
symbol SW_GREEN = pinC.0

main:
	if SW_RED = 0 AND SW_GREEN = 0 then
		low RED, YELLOW, GREEN
		goto green_control
		goto main
	elseif SW_RED = 0 AND SW_GREEN = 1 then
		low RED, YELLOW
		high GREEN
	elseif SW_RED = 1 AND SW_GREEN = 0 then
		low GREEN, YELLOW
		high RED
	else
		low RED, GREEN
		high YELLOW
		pause 250
		low YELLOW
		goto main
	endif
	goto main
	
	
green_control:
	'The green LED block and transition to yellow.
	high GREEN
	pause 3000
	low GREEN
	pause 250
	high GREEN
	pause 250
	low GREEN
	pause 250
	high GREEN
	pause 250
	low GREEN
	pause 250
	high GREEN
	pause 250
	low GREEN
	goto yellow_control

yellow_control:
	'The yellow LED block and transition to red.
	high YELLOW
	pause 3000
	low YELLOW
	pause 250
	high YELLOW
	pause 250
	low YELLOW
	pause 250
	high YELLOW
	pause 250
	low YELLOW
	pause 250
	high YELLOW
	pause 250
	low YELLOW
	goto red_control
	
red_control:
	'The red LED block and cycle to main
	high RED
	pause 3000
	low RED
	goto main