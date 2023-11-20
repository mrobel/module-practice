variable "vpc_name" {
  type = map(any)
  default = {
    Name = "Dev_vpc"
  }
}
variable "security_group_name" {
  type = map(any)
  default = {
    Name = "Dev_Security_Group"
  }
}
variable "instance_name" {
  type = map(any)
  default = {
    Name = "Dev-Ec2"
  }
}