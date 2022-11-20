resource "aws_subnet" "public" {
  vpc_id            = var.vpc_id
  cidr_block        = var.subnet_cidr
  availability_zone = var.az1
  tags              = var.subnet_tags
}

resource "aws_subnet" "public2" {
  vpc_id            = var.vpc_id
  cidr_block        = var.subnet_cidr_2
  availability_zone = var.az2
  tags              = var.subnet_tags
}

## Private subnet
resource "aws_subnet" "private" {
  vpc_id            = var.vpc_id
  cidr_block        = var.subnet_cidr_private
  availability_zone = var.az2
  tags              = var.subnet_tags_pvt
}

resource "aws_subnet" "private2" {
  vpc_id            = var.vpc_id
  cidr_block        = var.subnet_cidr_private2
  availability_zone = var.az1
  tags              = var.subnet_tags_pvt
}

