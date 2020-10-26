##############################
# Network
##############################
output "network_vpc_id" {
  value       = module.vpc.vpc_id
  description = "The name of the VPC id."
}
