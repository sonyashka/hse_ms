#!/bin/bash

echo "Enter directory to backup"
read dirname

user="root"
psw="root"
ip="localhost"
port="2222" 
tar czf "$dirname.tar.gz" "$dirname"/*
scp -r -P "$port" "$dirname.tar.gz" "$user@$ip:" 