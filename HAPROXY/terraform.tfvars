cidr_vpc = "10.0.0.0/20"
vpc_tags = {
  Name = "Haproxy_vpc"
  type = "Ninja_Tool"
}

##### Subnet Variables

public_subnet_cidr  = "10.0.0.0/21"
private_subnet_cidr = "10.0.15.0/26"
availability_zone1  = "us-east-1a"
availability_zone2  = "us-east-1b"
public_subnet_tags  = {}
private_subnet_tags = {}
sub_cidr_piv_2      = "10.0.15.192/26"
sub_cidr_pub_2      = "10.0.14.0/26"
#### IGW
igw_tag = {}

##### Nat
tags_nat = {}

rt_tags = {
  Name = "Public_route_table"
}

rt_tags_pvt = {
  Name = "Private_route_table"
}