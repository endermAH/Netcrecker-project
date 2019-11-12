resource "digitalocean_droplet" "jenkins" {
  image = "ubuntu-18-04-x64"
  name = "jenkins"
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