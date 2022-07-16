###################################################################################################
### digitalocean_ssh_key
###################################################################################################
resource "digitalocean_ssh_key" "main" {
  name       = var.ssh_key_name
  public_key = file(var.ssh_key_public_key)
}

###################################################################################################
### digitalocean_droplet
###################################################################################################
resource "digitalocean_droplet" "main" {
  image  = var.droplet_image
  name   = var.droplet_name
  region = var.droplet_region
  size   = var.droplet_size

  backups           = var.droplet_backups
  monitoring        = var.droplet_monitoring
  ipv6              = var.droplet_ipv6
  vpc_uuid          = var.droplet_vpc_uuid
  ssh_keys          = [digitalocean_ssh_key.main.fingerprint]
  resize_disk       = var.droplet_resize_disk
  tags              = var.droplet_tags
  user_data         = var.droplet_user_data
  volume_ids        = var.droplet_volume_ids
  droplet_agent     = var.droplet_agent
  graceful_shutdown = var.droplet_graceful_shutdown
}
