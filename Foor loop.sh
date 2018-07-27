#!/bin/bash
#for loop sample: this will create 1 to 5 folders and files named 1 to 5.txt
for ((c=1;c<=5;c++))
do
 mkdir -pv $c
 echo >./1/$c.txt #this will create five .txt files in folder 1 in the the current directory
done

#loop 2
for i in 1 2 3 4 5
do
  echo "welcome $i times"
done

#loop 3
for (( i = 0; i < 10; i++ )); do
  echo "$i"
done

#loop 4
for j in {1..5}
do
  echo "welcome $j"
done

#loop 5
echo "bash version ${BASH_VERSION}..."
for (( i = 0; i < 10; i++ )); do
  echo "WELCOME $i times"
done

#loop 6
for b in {0..10..2} #not working in macOS; here {start..end..step}
do
  echo "welcome $b no of times"
done

#loop 7
for i in $(seq 1 2 20)
do
  echo "well $i said"
done
