###################################################################################################
### digitalocean_ssh_key
###################################################################################################
output "ssh_key_id" {
  description = "The unique ID of the key"
  value       = digitalocean_ssh_key.main.id
}

output "ssh_key_name" {
  description = "The name of the SSH key"
  value       = digitalocean_ssh_key.main.name
}

output "ssh_key_fingerprint" {
  description = "The fingerprint of the SSH key"
  value       = digitalocean_ssh_key.main.fingerprint
}

###################################################################################################
### digitalocean_droplet
###################################################################################################
output "droplet_id" {
  description = "The ID of the Droplet"
  value       = { for k, v in digitalocean_droplet.main : k => digitalocean_droplet.main[k].id }
}

output "droplet_urn" {
  description = "The uniform resource name of the Droplet"
  value       = { for k, v in digitalocean_droplet.main : k => digitalocean_droplet.main[k].urn }
}

output "droplet_ipv4_address" {
  description = "The IPv4 address"
  value       = { for k, v in digitalocean_droplet.main : k => digitalocean_droplet.main[k].ipv4_address }
}

output "droplet_ipv4_address_private" {
  description = "The private networking IPv4 address"
  value       = { for k, v in digitalocean_droplet.main : k => digitalocean_droplet.main[k].ipv4_address_private }
}

output "droplet_locked" {
  description = "Is the Droplet locked"
  value       = { for k, v in digitalocean_droplet.main : k => digitalocean_droplet.main[k].locked }
}

output "droplet_private_networking" {
  description = "Is private networking enabled"
  value       = { for k, v in digitalocean_droplet.main : k => digitalocean_droplet.main[k].private_networking }
}
