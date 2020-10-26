module "common" {
  source = "../../common"

  system_name = local.tags.SystemName
  env_type    = local.tags.EnvType
  vpc_cidr    = "10.0.0.0/16"
}
