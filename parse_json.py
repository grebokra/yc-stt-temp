#!/usr/bin/python3

import json
penajson = open("result.json", "r")
pena = json.load(penajson)


for i in pena['response']['chunks']:
    if i['channelTag'] == "1":              # Because we have 2 chanels
        print(i['alternatives'][0]['text'])
