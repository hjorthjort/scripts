#!/usr/bin/env python

import codecs
import random
import os
dirname = os.path.dirname(os.path.realpath(__file__))

MIN_INGRED = 2
MAX_INGRED = 8

filename = dirname + "/vegetarian"
with open(filename) as ingredients:
        content = ingredients.read().splitlines()

roulette_result = []
roulette_tries = random.randint(2,8)
already_selected = []
for i in range(0, roulette_tries):
    select = random.randint(0, len(content) -1)
    while select in already_selected:
        select = random.randint(0, len(content) -1)
    already_selected.append(select)
    roulette_result.append(content[select])

for string in roulette_result:
    print string.decode('utf-8', 'ignore')
