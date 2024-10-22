#!/bin/bash

echo "Enter server name"
read server

ping -c 1 $server
echo $?