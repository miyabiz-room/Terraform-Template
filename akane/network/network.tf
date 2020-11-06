# Terraform のバージョン指定
terraform {
  required_version = "= 0.13.5"
}

resource "aws_vpc" "akane_vpc" {
  cidr_block = "${lookup(var.params, "vpc_cidr")}"
  instance_tenancy     = "default"
  enable_dns_support   = "true"
  enable_dns_hostnames = "false"

  tags = {
    Name = "${lookup(var.params, "system_name")}-${lookup(var.params, "env_type")}-vpc"
  }
}

output "akane_vpc" {
  value = "${
    map(
      "vpc_id", "${aws_vpc.akane_vpc.id}"
    )
  }"
}
