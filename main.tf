provider "aws" {
  region  = var.aws_region
}

# resource block
resource "aws_instance" "tf_instance" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [var.security_group]
  tags = {
    Name = "myjenkisterraforminstance"
  }
}
