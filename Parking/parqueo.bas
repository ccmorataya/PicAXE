symbol SENSOR1 = pinC.0
symbol SENSOR2 = pinC.1
symbol SENSOR3 = pinC.2
symbol SENSOR4 = pinC.3

symbol EENTRANCE = B.0
symbol EEXIT = B.1

symbol REMAINING = b13
let REMAINING = 10
symbol OCUPIED = b12
let OCUPIED = 0
symbol CONTROL = b11
let CONTROL = 200

main:
	input C.1
	if SENSOR1 = 1 then
		high EENTRANCE
		pause 5000
	endif
	
	if SENSOR2 = 1 then
		CONTROL = 255
	else
		CONTROL = 200
	endif
	
	if CONTROL = 255 AND SENSOR1 = 0 then
		low EENTRANCE
		let REMAINING = REMAINING - 1
		OCUPIED = OCUPIED + 1
		CONTROL = 200
		output C.1
		SENSOR2 = 0
	endif

	goto main