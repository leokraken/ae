#!/bin/bash
INSTANCES=./FJSS-instances
CASO=TEST

mkdir ./res/$CASO
for f in $( ls $INSTANCES); do
	echo item: $f
	./MainSeq newGA.cfg $INSTANCES/$f ./res/$CASO/${f%.*}.txt
done

