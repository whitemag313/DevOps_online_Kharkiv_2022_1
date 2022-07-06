#!/usr/bin/env python3

file1 = input("Enter filename: ")

i = 1
f = open(file1)
for line in f.readlines():
    if i % 2 == 0:
        print(line)
    i += 1
