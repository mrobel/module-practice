output "public_subnet_id" {
  value = aws_subnet.pub-sb.id
}
output "vpc_id" {
  value = aws_vpc.custom_vpc.id
}