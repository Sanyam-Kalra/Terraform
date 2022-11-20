variable "subnet_cidr" {
  default = ""
}

variable "subnet_cidr_private" {
  default = ""
}

variable "az1" {
  default = ""
}

variable "az2" {
  default = ""
}

variable "subnet_tags" {
  default = {
    Name = "Public_subnet" 
  }
}

variable "subnet_tags_pvt" {
  default = {
    Name = "Private_subnet"
  }
}

variable "vpc_id" {
  default = ""
}

variable "subnet_cidr_private2" {
  default = ""
}

variable "subnet_cidr_2" {
  default = ""
}

