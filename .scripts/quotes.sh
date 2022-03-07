#!/bin/bash
# 
# File: quotes.sh
# Author: Luis Marmolejo




IFS="/"
while read quote source
do
		echo "$quote - $source"
done < ~/.configFiles/.scripts/quotes| gshuf -n 1
