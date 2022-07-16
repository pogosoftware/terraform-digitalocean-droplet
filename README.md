# terraform-digitalocean-droplent

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0 |
| <a name="requirement_digitalocean"></a> [digitalocean](#requirement\_digitalocean) | 2.21.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_digitalocean"></a> [digitalocean](#provider\_digitalocean) | 2.21.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [digitalocean_droplet.main](https://registry.terraform.io/providers/digitalocean/digitalocean/2.21.0/docs/resources/droplet) | resource |
| [digitalocean_ssh_key.main](https://registry.terraform.io/providers/digitalocean/digitalocean/2.21.0/docs/resources/ssh_key) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_droplet_agent"></a> [droplet\_agent](#input\_droplet\_agent) | A boolean indicating whether to install the DigitalOcean agent used for providing access to the Droplet web console in the control panel. By default, the agent is installed on new Droplets but installation errors (i.e. OS not supported) are ignored. To prevent it from being installed, set to `false`. To make installation errors fatal, explicitly set it to `true` | `bool` | `true` | no |
| <a name="input_droplet_backups"></a> [droplet\_backups](#input\_droplet\_backups) | Boolean controlling if backups are made. Defaults to `false` | `bool` | `false` | no |
| <a name="input_droplet_graceful_shutdown"></a> [droplet\_graceful\_shutdown](#input\_droplet\_graceful\_shutdown) | A boolean indicating whether the droplet should be gracefully shut down before it is deleted. Defaults to `true` | `bool` | `true` | no |
| <a name="input_droplet_image"></a> [droplet\_image](#input\_droplet\_image) | The Droplet image ID or slug | `string` | n/a | yes |
| <a name="input_droplet_ipv6"></a> [droplet\_ipv6](#input\_droplet\_ipv6) | Boolean controlling if IPv6 is enabled. Defaults to `false` | `bool` | `false` | no |
| <a name="input_droplet_monitoring"></a> [droplet\_monitoring](#input\_droplet\_monitoring) | Boolean controlling whether monitoring agent is installed. Defaults to `false` | `bool` | `false` | no |
| <a name="input_droplet_name"></a> [droplet\_name](#input\_droplet\_name) | The Droplet name | `string` | n/a | yes |
| <a name="input_droplet_region"></a> [droplet\_region](#input\_droplet\_region) | The region to start in | `string` | n/a | yes |
| <a name="input_droplet_resize_disk"></a> [droplet\_resize\_disk](#input\_droplet\_resize\_disk) | Boolean controlling whether to increase the disk size when resizing a Droplet. It defaults to `true` | `bool` | `true` | no |
| <a name="input_droplet_size"></a> [droplet\_size](#input\_droplet\_size) | The unique slug that indentifies the type of Droplet | `string` | n/a | yes |
| <a name="input_droplet_tags"></a> [droplet\_tags](#input\_droplet\_tags) | A list of the tags to be applied to this Droplet | `set(string)` | `[]` | no |
| <a name="input_droplet_user_data"></a> [droplet\_user\_data](#input\_droplet\_user\_data) | A string of the desired User Data for the Droplet | `string` | `null` | no |
| <a name="input_droplet_volume_ids"></a> [droplet\_volume\_ids](#input\_droplet\_volume\_ids) | A list of the IDs of each block storage volume to be attached to the Droplet | `set(string)` | `[]` | no |
| <a name="input_droplet_vpc_uuid"></a> [droplet\_vpc\_uuid](#input\_droplet\_vpc\_uuid) | The ID of the VPC where the Droplet will be located | `string` | `null` | no |
| <a name="input_ssh_key_name"></a> [ssh\_key\_name](#input\_ssh\_key\_name) | The name of the SSH key for identification | `string` | n/a | yes |
| <a name="input_ssh_key_public_key"></a> [ssh\_key\_public\_key](#input\_ssh\_key\_public\_key) | The path to public key | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_droplet_id"></a> [droplet\_id](#output\_droplet\_id) | The ID of the Droplet |
| <a name="output_droplet_ipv4_address"></a> [droplet\_ipv4\_address](#output\_droplet\_ipv4\_address) | The IPv4 address |
| <a name="output_droplet_ipv4_address_private"></a> [droplet\_ipv4\_address\_private](#output\_droplet\_ipv4\_address\_private) | The private networking IPv4 address |
| <a name="output_droplet_locked"></a> [droplet\_locked](#output\_droplet\_locked) | Is the Droplet locked |
| <a name="output_droplet_private_networking"></a> [droplet\_private\_networking](#output\_droplet\_private\_networking) | Is private networking enabled |
| <a name="output_droplet_urn"></a> [droplet\_urn](#output\_droplet\_urn) | The uniform resource name of the Droplet |
| <a name="output_ssh_key_fingerprint"></a> [ssh\_key\_fingerprint](#output\_ssh\_key\_fingerprint) | The fingerprint of the SSH key |
| <a name="output_ssh_key_id"></a> [ssh\_key\_id](#output\_ssh\_key\_id) | The unique ID of the key |
| <a name="output_ssh_key_name"></a> [ssh\_key\_name](#output\_ssh\_key\_name) | The name of the SSH key |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->