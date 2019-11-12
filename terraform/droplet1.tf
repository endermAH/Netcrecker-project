resource "digitalocean_droplet" "psql" {
  image = "ubuntu-18-04-x64"
  name = "psql"
  region = "fra1"
  size = "s-1vcpu-1gb"
  private_networking = true
  ssh_keys = [
    "${var.ssh_fingerprint}"
  ]
  connection {
      user = "root"
      type = "ssh"
      private_key = "${file(var.pvt_key)}"
      timeout = "2m"
  }
}