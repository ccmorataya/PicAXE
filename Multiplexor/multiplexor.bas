symbol ONE = pinc.0
symbol TWO = pinc.1
symbol THREE = pinc.2
symbol OUT = b.7

main:
	if ONE = 0 AND TWO = 0 AND THREE = 0 then
		high OUT
	elseif ONE = 0 AND TWO = 0 AND THREE = 1 then
		high OUT
	else
		low OUT
	endif
	goto main