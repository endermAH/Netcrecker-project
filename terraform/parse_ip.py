#!/usr/bin/python3

import json

f = open('terraform.tfstate')
json_string = f.read()
parsed_string = json.loads(json_string)
print(parsed_string['resources']['instances'])

print(parsed_string['resources'][0]['instances'][0]['attributes']['ipv4_address'])
