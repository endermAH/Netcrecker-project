#!/bin/bash

DO_FING=$(ssh-keygen -E md5 -lf ~/.ssh/id_rsa.pub | awk '{print $2}' | cut -c 5-)
DO_TOKEN="81de493f0c712c4eff53e9b6cda57e1ef3bbbc1ee04e6f855c8b31e4693e6b84"

terraform $1 -auto-approve \
  -var "do_token=${DO_TOKEN}" \
  -var "pub_key=$HOME/.ssh/id_rsa.pub" \
  -var "pvt_key=$HOME/.ssh/id_rsa" \
  -var "ssh_fingerprint=${DO_FING}"
