variable "cidr_vpc" {
  default = ""
}

variable "vpc_tags" {
  default = ""
}

variable "public_subnet_cidr" {
  default = ""
}

variable "private_subnet_cidr" {
  default = ""
}

variable "availability_zone1" {
  default = ""
}

variable "availability_zone2" {
  default = ""
}

variable "public_subnet_tags" {
  default = ""
}

variable "private_subnet_tags" {
  default = ""
}

##### IGW

variable "igw_tag" {
  default = ""
}

##### Nat

variable "tags_nat" {
  default = ""
}

variable "sub_cidr_pub_2" {
  default = ""
}

variable "sub_cidr_piv_2" {
  default = ""
}

##### route_table

variable "rt_tags" {
  default = {}
}

variable "rt_tags_pvt" {
  default = "{}"
}