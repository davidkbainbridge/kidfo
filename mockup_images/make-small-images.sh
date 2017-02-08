#!/bin/bash

for i in $(ls -1 *.png | grep -v small); do
       	OUT=$(echo $i | sed -e 's/\.png/_small\.png/')
       	sips -Z 100 $i --out $OUT
done
