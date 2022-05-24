#!/usr/bin/python
from bs4 import BeautifulSoup

file1 = input("Enter filename: ")
with open(file1) as f:
    html = BeautifulSoup(f, "html.parser")

tags = html.title.string
print("Title for this file: ", tags)
