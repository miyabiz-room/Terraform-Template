module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "${var.system_name}-${var.env_type}-vpc"
  cidr = var.vpc_cidr
}
