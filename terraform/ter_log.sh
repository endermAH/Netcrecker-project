#!/bin/bash

export DO_FING="1e:5b:78:b9:30:cc:35:f8:b0:ba:0c:99:99:38:28:16"
export DO_TOKEN="98fcb6662e0ecdef1501f564390a5f42b9cbefe7689ca99a0d091b3b117c72c6"

terraform $1 \
  -var "do_token=${DO_TOKEN}" \
  -var "pub_key=$HOME/.ssh/id_rsa.pub" \
  -var "pvt_key=$HOME/.ssh/id_rsa" \
  -var "ssh_fingerprint=${DO_FING}"
