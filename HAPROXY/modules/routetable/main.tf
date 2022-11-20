#ROUTETABLE

resource "aws_route_table" "publicrt1" {
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.igw
  }

  tags = var.rt_tags
}

#ROUTEASSOCIATION

resource "aws_route_table_association" "association" {
  subnet_id      = var.pub_sub_id
  route_table_id = var.pubrt 
}

resource "aws_route_table_association" "association2" {
subnet_id = var.pub_sub_id2
route_table_id = var.pubrt 
}



#ROUTETABLE PRIVATE

resource "aws_route_table" "privatert" {
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.nat_id
  }

  tags = var.rt_tags_pvt
}

#ROUTEASSOCIATION PRIVATE

resource "aws_route_table_association" "association3" {
  subnet_id      = var.pvt_sub_1
  route_table_id = aws_route_table.privatert.id
}

resource "aws_route_table_association" "association4" {
  subnet_id      = var.pvt_sub2
  route_table_id = aws_route_table.privatert.id
}