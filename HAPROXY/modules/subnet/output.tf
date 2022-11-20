output "public_subnet" {
  value = aws_subnet.public.id
}

output "public_subnet2" {
  value = aws_subnet.public2.id
}

output "private_subnet1" {
  value = aws_subnet.private.id
}

output "private_subnet2" {
  value = aws_subnet.private2.id
}