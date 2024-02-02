module "this" {
  #source = "git::https://github.com/kanalavinodkumar/Docker-infra.git"
  source = "K:/practice/Docker-infra"
  cidr_block = var.cidr_block
  common_tags = var.vpc_tags
  public_subnet_cidr = var.public_subnet_cidr
  public_subnet_name = var.public_subnet_name
  private_subnet_cidr = var.private_subnet_cidr
  private_subnet_name = var.private_subnet_name
}