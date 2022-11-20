variable "vpc_id" {
  default = ""
}

variable "igw" {
  default = ""
}

variable "rt_tags" {
  default = {
    Name = "Public_route_table"
  }
}

variable "pub_sub_id" {
  default = ""
}

variable "pub_sub_id2" {
  default = ""
}

variable "pubrt" {
  default = ""
}

variable "rt_tags_pvt" {
 default = {
   Name = "Private_route_table"
}
}

variable "pvt_sub_1" {
  default = ""
}

variable "pvt_sub2" {
  default = ""
}

variable "nat_id" {
  default = ""
}