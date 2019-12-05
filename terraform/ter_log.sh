#!/bin/bash

DO_FING=$(ssh-keygen -E md5 -lf ~/.ssh/id_rsa.pub | awk '{print $2}' | cut -c 5-)
DO_TOKEN="0b1e0f4d0c2441b910ee252f676a85db0705fe72528418e1502bc13fa95024c1"

terraform $1 -auto-approve \
  -var "do_token=${DO_TOKEN}" \
  -var "pub_key=$HOME/.ssh/id_rsa.pub" \
  -var "pvt_key=$HOME/.ssh/id_rsa" \
  -var "ssh_fingerprint=${DO_FING}"
