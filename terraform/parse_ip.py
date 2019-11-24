#!/usr/bin/python3

import json
import sys

f = open('terraform.tfstate')
json_string = f.read()
parsed_string = json.loads(json_string)

for i in range(0,3):
    if parsed_string['resources'][i]['name'] == sys.argv[1]:
        print(parsed_string['resources'][i]['instances'][0]['attributes']['ipv4_address'])
