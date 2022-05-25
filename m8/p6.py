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
