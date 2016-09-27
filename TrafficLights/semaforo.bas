symbol RED = B.0
symbol YELLOW = B.1
symbol GREEN = B.2

main:
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