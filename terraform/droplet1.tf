resource "digitalocean_droplet" "psql" {
  image = "ubuntu-18-04-x64"
  name = "psql"
  region = "ams3"
  size = "s-1vcpu-1gb"
  private_networking = true
  ssh_keys = [
    var.ssh_fingerprint
  ]
  connection {
    host = digitalocean_droplet.psql.ipv4_address
    user = "root"
    type = "ssh"
    private_key = file(var.pvt_key)
    timeout = "2m"
  }
}

resource "digitalocean_floating_ip_assignment" "psql_fip" {
  ip_address = "134.209.137.88"
  droplet_id = digitalocean_droplet.psql.id
}
