terraform {

  required_version = ">=1.4.2"

  required_providers {
    proxmox = {
      source  = "telmate/proxmox"
      version = "2.9.11"
    }

    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 3.0"
    }

    linode = {
      source = "linode/linode"
      # version = "..."
    }
  }
}
