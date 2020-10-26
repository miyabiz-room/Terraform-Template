##############################
# Network
##############################
output "network_vpc_id" {
  value       = module.common.network_vpc_id
  description = "The name of the VPC id."
}
