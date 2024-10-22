#!/bin/bash

echo "Enter filename"
read filename

echo "Enter word to search"
read word

echo $(grep -o $word $filename | wc -l)