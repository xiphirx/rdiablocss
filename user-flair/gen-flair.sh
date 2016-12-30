#!/bin/bash
echo Updating user flairs...

for i in $( ls *.png ); do
	for j in $( ls *.jpg ); do
		composite -gravity East $j $i ${i:0:(-4)}-${j:0:(-4)}.png
	done
done
