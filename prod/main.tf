module "security_group" {
  source              = "/home/robel/Terraform-practice/module-practice/module/sqgp"
  vpc_id              = module.aws_vpc.vpc_id
  security_group_name = var.security_group_name
}
module "ec2_instance" {
  source                 = "/home/robel/Terraform-practice/module-practice//module/ec2"
  ami_value              = "ami-01bc990364452ab3e"
  instance_type_value    = "t2.micro"
  subnet_id              = module.aws_vpc.public_subnet_id
  vpc_security_group_ids = [module.security_group.vpc_security_group_ids]
  instance_name          = var.instance_name
}

module "aws_vpc" {
  source                = "/home/robel/Terraform-practice/module-practice/module/vpc"
  vpc_cird_block        = "10.0.0.0/16"
  subnet_cird_block     = "10.0.1.0/24"
  pri_subnet_cird_block = "10.0.2.0/24"
  vpc_name              = var.vpc_name
}

output "Public_ip" {
  value = module.ec2_instance.instanceIP-Pub
}