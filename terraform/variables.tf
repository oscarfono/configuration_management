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

variable "cloudflare_domain_0001-id" {
  description = "Cloudflare Domain URL for domain_0001"
  type        = string
  sensitive   = true
}

variable "cloudflare_domain_0001-ip" {
  description = "Cloudflare Domain IP address for domain_0001"
  type        = string
  sensitive   = true
}

variable "linode_token" {
  description = "Linode Token"
  type        = string
  sensitive   = true
}

# apache-ofbiz

# postgresql
