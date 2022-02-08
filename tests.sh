#!/usr/bin/env bash
function succeed() {
	echo 'Test ok'
}
./spwgen -8 -2			>	/dev/null			|| succeed
./spwgen					>	/dev/null 			&& succeed
./spwgen -k 23			>	/dev/null			|| succeed
./spwgen -k 				>	/dev/null			&& succeed
./spwgen -a triangle 		>	/dev/null			&& succeed
./spwgen -a azerty 		>	/dev/null	2>&1	|| succeed
