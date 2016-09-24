symbol SENSOR1 = pinC.0
symbol SENSOR2 = pinC.1
symbol SENSOR3 = pinC.2
symbol SENSOR4 = pinC.3

symbol EENTRANCE = B.0
symbol EEXIT = B.1

symbol REMAINING = b13
let REMAINING = 10
symbol OCCUPIED = b12
let OCCUPIED = 0
symbol CONTROL = b11
let CONTROL = 200

main:
	if SENSOR1 = 1 AND SENSOR2 = 0 then
		if pinB.0 = 0 then
			high EENTRANCE
		endif
	endif
	
	if SENSOR2 = 1 then
		CONTROL = 255
	else
		CONTROL = 200
	endif
	
	if CONTROL = 255 AND SENSOR1 = 0 then
		low EENTRANCE
		REMAINING = REMAINING - 1
		OCCUPIED = OCCUPIED + 1
		CONTROL = 200
		output C.1
		SENSOR2 = 0
		input C.1
	endif

	if SENSOR3 = 1 then
		if pinB.1 = 0 then
			high EEXIT
		endif
	elseif SENSOR4 = 1 AND SENSOR3 = 0 then
		if pinB.1 = 1 then
			low EEXIT	
			REMAINING = REMAINING + 1
			OCCUPIED = OCCUPIED - 1
		endif
	endif
	
	goto main