#!/bin/bash

echo "Enter filename"
read filename

if [ -f $filename ]; then
    echo "Файл найден!"
else
    echo "Файл не найден."
fi