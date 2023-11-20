variable "ami_value" {
    description = "value of ami"
  }
variable "instance_type_value" {
  description = " value of instant type"
}
variable "subnet_id" {
  type = string
  description = "valu of subnet"
}
variable "vpc_security_group_ids" {
 type = list(string)
  description = "value of security grp"
}
variable "instance_name" {
  type = map(any)
  default = {}
}