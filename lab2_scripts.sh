#!/bin/bash
# Author: Steven James McDonald
# Date: 1/30/2019

echo "File Name: $0"
echo "Command Line Argument 1: $1"
grep -o '\([0-9]\{3\}\-[0-9]\{3\}\-[0-9]\{4\}\)\|\(([0-9]\{3\})[0-9]\{3\}\-[0-9]\{4\}\)\|\([0-9]\{10\}\)\|\([0-9]\{3\}\s[0-9]\{3\}\s[0-9]\{4\}\)' $2 | wc -l
grep -E -o "\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}\b" $2 | wc -l
grep -E -o "\b[A-Za-z0-9._%+-]+@geocities\.com" $2 > email_results.txt
grep "303\-[0-9]\{3\}-[0-9]\{4\}" $2 > phone_results.txt
grep $1 $2 > command_results.txt

