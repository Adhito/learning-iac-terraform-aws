## Define Provider Block
provider "aws" {
  profile   = "default"
  region    = "ap-southeast-1"
}

## Defince Resource Block
resource "aws_instance" "ec2-sample-vm" {
  ami             = var.ec2_ami_type
  instance_type   = var.ec2_instance_type

  tags = {
    Name = var.instance_name
  }
}