symbol RED_LED = 7
symbol YELLOW_LED = 6
symbol GREEN_LED = 5
main:
	high RED_LED
	high YELLOW_LED
	high GREEN_LED
	pause 1000
	low RED_LED
	low YELLOW_LED
	low GREEN_LED
	pause 1000
	goto main