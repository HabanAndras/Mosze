#!/bin/bash
IFS=$'\n'

rm kimenetek.txt

./output Hosarkany.json Sotetvarazslo.json >> kimenetek.txt
./output Hosarkany.json Arnykiraly.json >> kimenetek.txt 
./output Sotetvarazslo.json Hosarkany.json >> kimenetek.txt 
./output Sotetvarazslo.json Arnykiraly.json >> kimenetek.txt 
./output Arnykiraly.json Sotetvarazslo.json >> kimenetek.txt 
./output Arnykiraly.json Hosarkany.json >> kimenetek.txt
