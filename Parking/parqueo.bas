symbol SENSOR_ENTRANCE1 = pinC.0
symbol SENSOR_ENTRANCE2 = pinC.1
symbol SENSOR_EXIT1 = pinC.2
symbol SENSOR_EXIT2 = pinC.3

symbol EENTRANCE = B.0
symbol EEXIT = B.1

symbol REMAINING = 10
symbol OCUPIED = 0

main:
	if SENSOR_ENTRANCE1 = 1 then
		high EENTRANCE
	else
		low EENTRANCE
	endif
	
	goto main