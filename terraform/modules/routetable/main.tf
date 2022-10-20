#ROUTETABLE

resource "aws_route_table" "route" {
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.igw_id
  }

  tags = {
    Name = "route"
  }
}

#ROUTEASSOCIATION

resource "aws_route_table_association" "association" {
  subnet_id      = var.sub_id
  route_table_id = var.route_id
}

resource "aws_route_table_association" "association2" {
  subnet_id      = var.sub_id2
  route_table_id = var.route_id
}


resource "aws_route_table_association" "association3" {
  subnet_id      = var.sub_id3
  route_table_id = var.route_id
}

