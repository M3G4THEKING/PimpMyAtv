#!/bin/bash
adb disconnect
for i in $(seq 101 199); do
	adb connect 192.168.8.$i;
done

for j in $(seq 210 230); do
	adb connect 192.168.8.$j;
done

readarray -d ' ' devices < <(adb devices -l | cut -f1 -d' ' | tail -n+2 | xargs);

for device in "${devices[@]}"; do
	echo "updating pogo on "$device;	
	adb -s $device install -r "atlas.apk";
done

adb disconnect
