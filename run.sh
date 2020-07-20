#!/bin/bash

for filename in ./data/*.json; do
	echo $filename
	./data.sh $filename
done

