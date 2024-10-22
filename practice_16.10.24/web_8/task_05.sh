#!/bin/bash

echo "Enter dir name"
read dir_name

for file in *
    do
        mv $file "backup_$file"
    done