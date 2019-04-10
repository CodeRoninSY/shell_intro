#!/bin/bash

patrn1="Apr"; export patrn1
patrn2="Jan"; export patrn2

echo " "
# sed example is working
#sed "/$patrn1/,/$patrn2/!d;//d" inventory-list.txt

echo " "
# perl one liner - working
perl -lne '$p1=$ENV{patrn1}; $p2=$ENV{patrn2}; print if((/$p1/../$p2/) && !(/$p1/||/$p2/))' inventory-list.txt
