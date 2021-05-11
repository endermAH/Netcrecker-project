variable "do_token" {}
variable "pub_key" {}
variable "pvt_key" {}
variable "ssh_fingerprint" {}

provider "digitalocean" {
  token = "98fcb6662e0ecdef1501f564390a5f42b9cbefe7689ca99a0d091b3b117c72c6"
}
