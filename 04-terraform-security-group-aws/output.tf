## Define Terraform Output 
output "instance_id" {
    description = "Value of the EC2 Instance ID"
    value = aws_instance.ec2-sample-vm.id
}

output "instance_public_ip" {
  description = "Value of the EC2 Public IP4"
  value = aws_instance.ec2-sample-vm.public_ip
}

output "instance_public_dns" {
  description = "Value of the EC2 Public IP4"
  value = aws_instance.ec2-sample-vm.public_dns
}           