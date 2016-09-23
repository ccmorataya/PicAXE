symbol SENSOR_ENTRANCE1 = pinC.0
symbol SENSOR_ENTRANCE2 = C.1
symbol SENSOR_EXIT1 = C.2
symbol SENSOR_EXIT2 = C.3


symbol REMAINING = 10
symbol OCUPIED = 0

main:
	if SENSOR_ENTRANCE1 = 1 then
		high B.0
	endif
	
	goto main