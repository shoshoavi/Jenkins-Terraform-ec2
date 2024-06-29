variable "aws_region" {
  description = "The AWS region to create things in."
  default     = "us-east-1"
}


variable "instance_type" {
  description = "instance type for ec2"
  default     = "t2.micro"
}

variable "ami" {
  description = "ubuntu AMI for ec2"
  default     = "ami-04b70fa74e45c3917"
}

variable "key_name" {
  description = " SSH keys to connect to ec2 instance"
  default     = "mymachine"
}

variable "security_group" {
  description = "Security group for ec2 instance opening inbound traffic for ports 22, 80, 443"
  default     = "sg-0ab145b50d47cee0a"
}
