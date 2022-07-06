#!/usr/bin/env python3

import datetime
dt = datetime.datetime.now()
dt_pretty = dt.strftime("Date: %d/%m/%Y \nTime: %H:%M:%S")
print(dt_pretty)
