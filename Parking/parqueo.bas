symbol SENSOR_ENTRANCE1 = 0
symbol SENSOR_ENTRANCE2 = 1
symbol SENSOR_EXIT1 = 2
symbol SENSOR_EXIT2 = 3

main:
	high SENSOR_ENTRANCE1
	high SENSOR_ENTRANCE2
	high SENSOR_EXIT1
	high SENSOR_EXIT2
	pause 1000
	low SENSOR_ENTRANCE1
	low SENSOR_ENTRANCE2
	low SENSOR_EXIT1
	low SENSOR_EXIT2
	pause 1000
	goto main