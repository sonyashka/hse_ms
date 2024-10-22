#!/bin/bash

echo "Enter filename"
read filename

cat $filename | wc -l