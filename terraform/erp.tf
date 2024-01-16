resource "linode_instance" "erp" {
  label           = "erp.oscarfono.com"
  image           = "linode/ubuntu22.04"
  region          = "ap-southeast"
  type            = "g6-standard-1"
  authorized_keys = ["ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINwn02r+NBq4LZr77P9B+P2Oh/CwrMMLtXnSIGZHDAVK sod@delta"]
  root_pass       = var.root_password
  group           = "erp"
  tags            = ["erp"]
  swap_size       = 256
  private_ip      = true
  backups_enabled = true
  booted          = true
}

resource "local_file" "ansible_inventory" {
  content  = tolist(toset(linode_instance.erp.ipv4))[0]
  filename = "ansible_inventory.tpl"
}
