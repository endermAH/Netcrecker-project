resource "digitalocean_droplet" "liferay" {
  image = "ubuntu-18-04-x64"
  name = "liferay"
  region = "fra1"
  size = "s-1vcpu-3gb"
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