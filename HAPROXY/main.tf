module "vpc" {
  source         = "./modules/vpc"
  cidr_block_vpc = var.cidr_vpc
  tags_vpc       = var.vpc_tags
}

module "subnet" {
  source               = "./modules/subnet"
  vpc_id               = module.vpc.vpc_id
  subnet_cidr          = var.public_subnet_cidr
  subnet_cidr_private  = var.private_subnet_cidr
  az1                  = var.availability_zone1
  az2                  = var.availability_zone2
  subnet_tags          = var.public_subnet_tags
  subnet_tags_pvt      = var.private_subnet_tags
  subnet_cidr_2        = var.sub_cidr_pub_2
  subnet_cidr_private2 = var.sub_cidr_piv_2
}

module "igw" {
  source   = "./modules/igw"
  vpc_id   = module.vpc.vpc_id
  igw_tags = var.igw_tag
}

module "nat" {
  source   = "./modules/nat"
  id_sub   = module.subnet.public_subnet
  tags_nat = var.tags_nat
}

module "routetable" {
  source      = "./modules/routetable"
  vpc_id      = module.vpc.vpc_id
  igw         = module.igw.igw
  rt_tags     = var.rt_tags
  pub_sub_id  = module.subnet.public_subnet
  pub_sub_id2 = module.subnet.public_subnet2
  pubrt       = module.routetable.rt
  nat_id      = module.nat.nat
  rt_tags_pvt = var.rt_tags_pvt
  pvt_sub_1   = module.subnet.private_subnet1
  pvt_sub2    = module.subnet.private_subnet2
}