resource "aws_eip" "nat" {
  vpc = true
}

resource "aws_nat_gateway" "nat" {
  allocation_id     = aws_eip.nat.id
  subnet_id         = var.id_sub
  connectivity_type = "public"
  tags = var.tags_nat
}