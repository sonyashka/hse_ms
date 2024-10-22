#!/bin/bash

echo "Enter password length"
read len

echo $(openssl rand -hex $len | head -c $len)