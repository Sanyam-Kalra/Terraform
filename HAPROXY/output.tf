output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet" {
  value = module.subnet.public_subnet
}

output "private_subnet" {
  value = module.subnet.private_subnet1
}

output "igw" {
  value = module.igw.igw
}

output "nat" {
  value = module.nat.nat
}