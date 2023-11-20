resource "aws_instance" "pub-ec2" {
  ami                    = var.ami_value
  instance_type          = var.instance_type_value
  key_name               = "terraform-key"
  subnet_id = var.subnet_id
  vpc_security_group_ids = var.vpc_security_group_ids
  tags = var.instance_name
  }

