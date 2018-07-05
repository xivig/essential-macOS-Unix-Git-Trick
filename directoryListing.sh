#!/bin/bash
ls -d **/**/**/**/* >Listing.txt
#ls -ltraR |egrep -v '\.$|\.\.|\.:|\.\/|total|^d' |sed '/^$/d' >Listing1.txt
#find -type f -print0 | xargs -0 ls >Lising2.txt
#find . -type f -printf "%T@ %p\n" | sort -nr | cut -d\  -f2- >Lising3.txt
