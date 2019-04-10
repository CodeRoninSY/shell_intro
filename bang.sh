#!/bin/sh
# http://www.ertos.nicta.com.au/downloads/lcal2/shell-tut-examples.tgz
# tput terminal info: 
# https://www.gnu.org/software/termutils/manual/termutils-2.0/html_chapter/tput_1.html
X=9
tput clear
while test $X -ge 0
do
	#tput rev
	tput cup 5 0
	#tput bel
	#tput ul
	#tput flash
	tput ed
	# banner "     $X"
	figlet -f banner -c "$X"  # similar to banner, though have more tweaks
	X=$(expr $X - 1)
	sleep 1
done
