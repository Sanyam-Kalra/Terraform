
#SUBNET

resource "aws_subnet" "main" {
  vpc_id     = var.vpc_id
  cidr_block = var.cidr_block_sub
  availability_zone = var.zone1
  tags = {
    Name = "Main"
  }
}


#SUBNET2

resource "aws_subnet" "main2" {
  vpc_id     = var.vpc_id
  cidr_block = var.cidr_block_sub2
  availability_zone = var.zone2
  tags = {
    Name = "Main"
  }
}


#SUBNET3

resource "aws_subnet" "main3" {
  vpc_id     = var.vpc_id
  cidr_block = var.cidr_block_sub3
 availability_zone = var.zone3
  tags = {
    Name = "Main"
  }
}