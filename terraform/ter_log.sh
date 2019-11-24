#!/bin/bash

export DO_FING="24:7d:4a:b8:58:52:ff:c9:78:d9:07:02:47:75:ba:13"
export DO_TOKEN="98fcb6662e0ecdef1501f564390a5f42b9cbefe7689ca99a0d091b3b117c72c6"

terraform $1 \
  -var "do_token=${DO_TOKEN}" \
  -var "pub_key=$HOME/.ssh/id_rsa.pub" \
  -var "pvt_key=$HOME/.ssh/id_rsa" \
  -var "ssh_fingerprint=${DO_FING}"
