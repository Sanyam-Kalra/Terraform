module "vpc" {
  source = "./modules/vpc"
}

module "igw" {
  source = "./modules/igw"
  vpc_id = module.vpc.vpc-id
}

module "subnet" {
  source          = "./modules/subnet"
  vpc_id          = module.vpc.vpc-id
  zone1           = var.sub1zone
  zone2           = var.sub2zone
  zone3           = var.sub3zone
  cidr_block_sub  = var.cidr_sub
  cidr_block_sub2 = var.cidr_sub2
  cidr_block_sub3 = var.cidr_sub3

}

module "route" {
  source   = "./modules/routetable"
  vpc_id   = module.vpc.vpc-id
  igw_id   = module.igw.igw-id
  route_id = module.route.route-id
  sub_id   = module.subnet.subnet-id
  sub_id2  = module.subnet.subnet-id2
  sub_id3  = module.subnet.subnet-id3

}
