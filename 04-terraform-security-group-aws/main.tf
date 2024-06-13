## Define Provider Block
provider "aws" {
  profile   = "default"
  region    = "ap-southeast-1"
}

## Define AWS Resource Block
resource "aws_instance" "ec2-sample-vm" {
  ami                     = var.ec2_ami_type
  instance_type           = var.ec2_instance_type
  vpc_security_group_ids  = [aws_security_group.adhito-cloud-infra-security-group.id]

  tags = {
    Name = var.instance_name
  }
}

## Define AWS VPC
resource "aws_default_vpc" "default" {

}

resource "aws_security_group" "adhito-cloud-infra-security-group" {
    name = "adhito-cloud-infra-security-group"
    description = "SSH on port 22 and HTTP on port 80"
    vpc_id = aws_default_vpc.default.id

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
    }
}