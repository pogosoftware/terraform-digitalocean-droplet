###################################################################################################
### digitalocean_ssh_key
###################################################################################################
variable "ssh_key_name" {
  description = "The name of the SSH key for identification"
  type        = string
}

variable "ssh_key_public_key" {
  description = "The path to public key"
  type        = string
}
