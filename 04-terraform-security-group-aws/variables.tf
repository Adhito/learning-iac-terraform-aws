## Define Variables
variable "instance_name" {
    description = "Value of the tag for the EC2 instance"
    type = string
    default = "ec2-terraform-setup-v2"
}

variable "ec2_instance_type" {
    description = "Value of the EC2 instance type that will be selected"
    type = string
    default = "t2.micro"
}

variable "ec2_ami_type" {
    description = "Value of the AMI instance type that will be selected"
    type = string
    default = "ami-001440bcc4ddffcf1"
}