locals {
  droplets = var.droplet_use_name_prefix ? [for i in range(var.droplet_node_count) : format("%s-%s", var.droplet_name, i)] : var.droplet_names
}
