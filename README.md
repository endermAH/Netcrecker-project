## I want to deploy it on my DigitalOcean

### On your first host must be:

1. Installed `terraform v0.12.16` 
2. Configured `StrictHostKeyChecking no` in `ssh_config`

### Prepare your Digital Ocean

1. Create a token: `API -> Tokens/Keys -> Generate` token and **save it**
2. Add your public key `Security -> Add SSH Key`
3. Create 3 floatings _(you can create it only when you have a droplet so you should create a droplets defore)_

### Prepare your script

1. Change floating ip's in `droplet1.tf`, `droplet2.tf` and `droplet3.tf` to yours
2. Change ip's in `start` to yours
3. Change DigitalOcean token in `start` to yours

### Start deployment

To start deployment use `start` script 
