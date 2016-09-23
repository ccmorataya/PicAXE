symbol SENSOR1 = pinC.0
symbol SENSOR2 = pinC.1
symbol SENSOR3 = pinC.2
symbol SENSOR4 = pinC.3

symbol EENTRANCE = B.0
symbol EEXIT = B.1

symbol REMAINING = b0
let REMAINING = 10
symbol OCUPIED = b1
let OCUPIED = 0

main:
	if SENSOR1 = 1 then
		high EENTRANCE
	else
		low EENTRANCE
	endif
	
	if SENSOR2 = 1 AND SENSOR1 = 0 then
		low EENTRANCE
		let REMAINING = REMAINING - 1
		OCUPIED = OCUPIED + 1
	endif
	
	goto main