#!/bin/bash
NUM_OF_APKS="$1"
COUNTER=0
while [ $COUNTER -lt $NUM_OF_APKS ]; do
	./gradlew assembleDebug -Ddebugsuffix="$COUNTER"
	let COUNTER=COUNTER+1
done
