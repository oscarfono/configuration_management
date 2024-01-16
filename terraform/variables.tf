# variables.tf

variable "root_password" {
  description = "Enter the root password for your instance"
  type        = string
}

variable "pub_ssh_key" {
  description = "Public SSH key for passwordless login/Ansible admin"
  type        = string
}

variable "cloudflare_token_secret" {
  description = "Cloudflare API Token Secret"
  type        = string
  sensitive   = true
}

variable "cloudflare_zone_id" {
  description = "Cloudflare Zone ID"
  type        = string
  sensitive   = true
}

variable "cloudflare_erp_id" {
  description = "Cloudflare ERP Domain URL"
  type        = string
  sensitive   = true
}

variable "linode_token" {
  description = "Linode Token"
  type        = string
  sensitive   = true
}
