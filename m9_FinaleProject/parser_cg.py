#!/usr/bin/python3

import json
# import urllib.request
import requests
# from bs4 import BeautifulSoup
from pycoingecko import CoinGeckoAPI


# Telegram-bot block
def send_msg(text):
    token = "5432504154:AAFlozUw2UHFZi34KEOb3G8Rn5fgFhA-yF8"
    chat_id = "-1001633468979"
    url_req = "https://api.telegram.org/bot" + token + \
              "/sendMessage" + "?chat_id=" + chat_id + "&text=" + text
    results = requests.get(url_req)
    print(results.json())
#send_msg("Hello python!")


# Parsing price
cg = CoinGeckoAPI()
d1 = dict()
prices = cg.get_price(
    ids=['bitcoin', 'ethereum', 'monero'], vs_currencies='usd')

for tik, price in prices.items():
    for usd_k in price:
        usd_p = (price[usd_k])
        d1[tik] = usd_p

cont1 = ("Bitcoin: " + str(d1["bitcoin"]) + "$")
cont2 = ("Ethereum: " + str(d1["ethereum"]) + "$")
cont3 = ("Monero: " + str(d1["monero"]) + "$")

content = (cont1 + "\n" + cont2 + "\n" + cont3 + "\n")

send_msg(content)
