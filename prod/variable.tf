variable "vpc_name" {
  type = map(any)
  default = {
    Name = "Prod_vpc"
  }
}
variable "security_group_name" {
  type = map(any)
  default = {
    Name = "Prod_Security_Group"
  }
}
variable "instance_name" {
  type = map(any)
  default = {
    Name = "Prod-Ec2"
  }
}