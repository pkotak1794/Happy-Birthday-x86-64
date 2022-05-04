#!/bin/bash

#Author: Priyanka Kotak
#Program Name: Happy Birthday

rm *.o
rm *.out

echo "Files are being compiled..."

nasm -f elf64 -o bday.o bday.asm

g++ -g -c -m64 -std=c++17 -fno-pie -no-pie -o driver.o driver.cpp

g++ -g -m64 -std=c++17 -fno-pie -no-pie -o application.out bday.o driver.o

./application.out

echo "Script file terminated."
