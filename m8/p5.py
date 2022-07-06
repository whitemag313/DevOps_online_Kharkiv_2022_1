#!/usr/bin/python

message = input(">>> ")
words = message.split(" ")
emojis = {
   ":)": "😀",
   ":(": "😞",
   "lol": "😂"
}
outcome = " "
for word in words:
   outcome += emojis.get(word, word) + " "
print(outcome)
