symbol RED = B.0
symbol YELLOW = B.1
symbol GREEN = B.2

main:
	'The green LED block and transition to yellow
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
	
	high YELLOW
	pause 3000
	low YELLOW
	pause 1000
	high YELLOW
	pause 1000
	low YELLOW
		
	high RED
	pause 3000
	low RED
	pause 1000
	high RED
	pause 1000
	low RED
	goto main