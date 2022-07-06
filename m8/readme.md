# Task 8

1. Show data and time

```
#!/usr/bin/env python3

import datetime
dt = datetime.datetime.now()
dt_pretty = dt.strftime("Date: %d/%m/%Y \nTime: %H:%M:%S")
print(dt_pretty)
```

Output:

![p1](https://github.com/whitemag313/DevOps_online_Kharkiv_2022_1/blob/master/m8/scr/p1.png)

2. Transformation into list and tuple

```
#!/usr/bin/env python3

list1 = list(map(int, input('Enter numbers using space: ').split()))
tuple1 = tuple(list1)
print('list: ', list1)
print('tuple: ', tuple1)

```

Output:

![p2](https://github.com/whitemag313/DevOps_online_Kharkiv_2022_1/blob/master/m8/scr/p2.png)

3.

```
#!/usr/bin/env python3

file1 = input("Enter filename: ")

i = 1
f = open(file1)
for line in f.readlines():
    if i % 2 == 0:
        print(line)
    i += 1
```

Output:

![p3](https://github.com/whitemag313/DevOps_online_Kharkiv_2022_1/blob/master/m8/scr/p3.png)

4.

```
#!/usr/bin/python
from bs4 import BeautifulSoup

file1 = input("Enter filename: ")
with open(file1) as f:
    html = BeautifulSoup(f, "html.parser")

tags = html.title.string
print("Title for this file: ", tags)
```

Output:

![p4](https://github.com/whitemag313/DevOps_online_Kharkiv_2022_1/blob/master/m8/scr/p4.png)

5.

```
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
```

Output:

![p5](https://github.com/whitemag313/DevOps_online_Kharkiv_2022_1/blob/master/m8/scr/p5.png)

6.

```
#!/usr/bin/python
import platform
import psutil

my_system = platform.uname()
print('Operating system:', platform.system())
print('Hostname: ', platform.node())
print('Architecture:', platform.architecture())
print('Processor:', platform.platform())
print('Processor usage: ', psutil.cpu_percent(), '%')
print('Memory usage:', psutil.virtual_memory().percent, '%')

```

Output:

![p6](https://github.com/whitemag313/DevOps_online_Kharkiv_2022_1/blob/master/m8/scr/p6.png)
