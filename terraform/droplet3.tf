resource "digitalocean_droplet" "liferay" {
  image = "ubuntu-18-04-x64"
  name = "liferay"
  region = "ams3"
  size = "s-1vcpu-3gb"
  private_networking = true
  ssh_keys = [
    "${var.ssh_fingerprint}"
  ]
  connection {
    host = "${digitalocean_droplet.liferay.ipv4_address}"
    user = "root"
    type = "ssh"
    private_key = "${file(var.pvt_key)}"
    timeout = "2m"
  }
  provisioner "remote-exec" {
    inline = [
      "apt update -y",
      "apt-get install -y python python3 python-pip python-yaml python-jinja2 python-httplib2 python-paramiko python-pkg-resources git",
    ]
  }
}

resource "digitalocean_floating_ip_assignment" "liferay_fip" {
  ip_address = "134.209.137.97"
  droplet_id = digitalocean_droplet.liferay.id
}
