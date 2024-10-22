#!/bin/bash

echo "Enter dir name"
read dirname

cur_date=$(date +"%Y-%m-%d %H:%M:%S.%3N")
tar -cvf "$dirname_$cur_date.tar" $dirname