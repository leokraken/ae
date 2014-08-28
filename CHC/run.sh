#!/bin/bash
INSTANCES=../GA/FJSS-instances
CASO=TEST

mkdir ./res/$CASO
for f in $( ls $INSTANCES); do
	echo item: $f
	./MainSeq CHC.cfg $INSTANCES/$f ./res/$CASO/${f%.*}.txt
done

