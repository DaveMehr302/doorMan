#!/bin/bash

#maybe set volume to full

waitTime=20
smokeTime=5

#configure relais pin (Relays 2 => ch20)
echo 20 > /sys/class/gpio/export
echo out > /sys/class/gpio/gpio20/direction

while :
do
	echo 0 > /sys/class/gpio/gpio20/value
	sleep $smokeTime
	echo 1 > /sys/class/gpio/gpio20/value

	mpg321 /home/pi/doorMan/src/doorMan/media/Whisper.mp3
	sleep $waitTime

	mpg321 /home/pi/doorMan/src/doorMan/media/mortalApproch.mp3
	sleep $waitTime

	mpg321 /home/pi/doorMan/src/doorMan/media/EatYouAlive.mp3
	sleep $waitTime

	mpg321 /home/pi/doorMan/src/doorMan/media/IamDeath.mp3
	sleep $waitTime

	mpg321 /home/pi/doorMan/src/doorMan/media/Whisper.mp3
	sleep $waitTime

	mpg321 /home/pi/doorMan/src/doorMan/media/mortalApproch.mp3
	sleep $waitTime

	mpg321 /home/pi/doorMan/src/doorMan/media/EatYouAlive.mp3
	sleep $waitTime

	mpg321 /home/pi/doorMan/src/doorMan/media/IamDeath.mp3
	sleep $waitTime

done

exit 0