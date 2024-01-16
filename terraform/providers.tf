# providers.tf

provider "cloudflare" {
  api_token = var.cloudflare_token_secret
}

provider "linode" {
  token = var.linode_token
}
