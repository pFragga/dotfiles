#!/bin/sh
#
# Use xset s $time to control the timeout when this will run.

if [ $# -lt 1 ];
then
	printf 'usage: %s cmd\n' "$(basename $0)" >&2
	exit 1
fi

cmd="$@"

while true;
do
	if [ "$(xssstate -s)" != disabled ];
	then
		tosleep=$(( $(xssstate -t) / 1000 ))
		if [ "$tosleep" -le 0 ];
		then
			if [ -z "$(pidof $1)" ];
			then
				$cmd
			else
				sleep 10
			fi
		else
			sleep "$tosleep"
		fi
	else
		sleep 10
	fi
done
