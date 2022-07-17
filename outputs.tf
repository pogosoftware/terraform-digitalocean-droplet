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
  value       = digitalocean_droplet.main.id
}

output "droplet_urn" {
  description = "The uniform resource name of the Droplet"
  value       = digitalocean_droplet.main.urn
}

output "droplet_ipv4_address" {
  description = "The IPv4 address"
  value       = digitalocean_droplet.main.ipv4_address
}

output "droplet_ipv4_address_private" {
  description = "The private networking IPv4 address"
  value       = digitalocean_droplet.main.ipv4_address_private
}

output "droplet_locked" {
  description = "Is the Droplet locked"
  value       = digitalocean_droplet.main.locked
}

output "droplet_private_networking" {
  description = "Is private networking enabled"
  value       = digitalocean_droplet.main.private_networking
}
