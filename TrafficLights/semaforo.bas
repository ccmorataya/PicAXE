symbol RED = B.0
symbol YELLOW = B.1
symbol GREEN = B.2

symbol SW_RED = pinC.0
symbol SW_GREEN = pinC.1

main:
	if SW_RED = 0 AND SW_GREEN = 0 then
		goto green_control
		goto yellow_control
		goto red_control
	else
		goto main
	endif

	
	
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
	
red_control:
	'The red LED block and cycle to main
	high RED
	pause 3000
	low RED
	pause 250
	high RED
	pause 250
	low RED
	pause 250
	high RED
	pause 250
	low RED
	pause 250
	high RED
	pause 250
	low RED
	goto main