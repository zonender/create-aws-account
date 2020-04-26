
locals {
  user_data = <<EOF
#!/bin/bash
echo "Hello Terraform!"
EOF
}

# data "aws_vpc" "default" {
#   default = true
# }

# data "aws_subnet_ids" "all" {
#   vpc_id = data.aws_vpc.default.id
# }

resource "aws_instance" "adminbox" {
  ami = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"
  subnet_id = var.EC2_SUBNET
  tags = {
    Name = "mybox"
    Owner = "asim" 
  }
}
