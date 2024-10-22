#!/bin/bash

echo "Enter two numbers"
read a
read b

if [ $a -gt $b ]; then
    echo "Greater number is $a"
elif [ $a -lt $b ]; then
    echo "Greater number is $b"
else
    echo "Both numbers equal $a"
fi