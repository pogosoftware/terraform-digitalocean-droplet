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
