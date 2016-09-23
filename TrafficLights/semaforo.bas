symbol RED_LED = 7
symbol YELLOW_LED = 6
symbol GREEN_LED = 5
main:
	high RED_LED
	pause 1000
	low RED_LED
	pause 1000
	goto main