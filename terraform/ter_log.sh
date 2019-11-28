#!/bin/bash

DO_FING=$(ssh-keygen -E md5 -lf ~/.ssh/id_rsa.pub | awk '{print $2}' | cut -c 5-)
DO_TOKEN="224507c855781e2bb5ad6f1eca0237b7f856a0b96d2a0797b0771c6a0136c04b"

terraform $1 -auto-approve \
  -var "do_token=${DO_TOKEN}" \
  -var "pub_key=$HOME/.ssh/id_rsa.pub" \
  -var "pvt_key=$HOME/.ssh/id_rsa" \
  -var "ssh_fingerprint=${DO_FING}"
