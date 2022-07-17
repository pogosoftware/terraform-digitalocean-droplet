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

###################################################################################################
### digitalocean_droplet
###################################################################################################
variable "droplet_image" {
  description = "The Droplet image ID or slug"
  type        = string
}

variable "droplet_name" {
  description = "The Droplet name"
  type        = string
}

variable "droplet_region" {
  description = "The region to start in"
  type        = string
}

variable "droplet_size" {
  description = "The unique slug that indentifies the type of Droplet"
  type        = string
}

variable "droplet_backups" {
  default     = false
  description = "Boolean controlling if backups are made. Defaults to `false`"
  type        = bool
}

variable "droplet_monitoring" {
  default     = false
  description = "Boolean controlling whether monitoring agent is installed. Defaults to `false`"
  type        = bool
}

variable "droplet_ipv6" {
  default     = false
  description = "Boolean controlling if IPv6 is enabled. Defaults to `false`"
  type        = bool
}

variable "droplet_vpc_uuid" {
  default     = null
  description = "The ID of the VPC where the Droplet will be located"
  type        = string
}

variable "droplet_resize_disk" {
  default     = true
  description = "Boolean controlling whether to increase the disk size when resizing a Droplet. It defaults to `true`"
  type        = bool
}

variable "droplet_tags" {
  default     = []
  description = "A list of the tags to be applied to this Droplet"
  type        = set(string)
}

variable "droplet_user_data" {
  default     = null
  description = "A string of the desired User Data for the Droplet"
  type        = string
}

variable "droplet_volume_ids" {
  default     = []
  description = "A list of the IDs of each block storage volume to be attached to the Droplet"
  type        = set(string)
}

variable "droplet_agent" {
  default     = true
  description = "A boolean indicating whether to install the DigitalOcean agent used for providing access to the Droplet web console in the control panel. By default, the agent is installed on new Droplets but installation errors (i.e. OS not supported) are ignored. To prevent it from being installed, set to `false`. To make installation errors fatal, explicitly set it to `true`"
  type        = bool
}

variable "droplet_graceful_shutdown" {
  default     = true
  description = "A boolean indicating whether the droplet should be gracefully shut down before it is deleted. Defaults to `true`"
  type        = bool
}
