variable "vpc_cird_block" {
  description = "value for cird main vpc"
}
variable "subnet_cird_block" {
   description = "value for cird subnet"  
}
variable "pri_subnet_cird_block" {
   description = "value for cird subnet"  
}
variable "vpc_name" {
  type = map(any)
  default = {}
}