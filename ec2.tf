resource "aws_instance" "adminbox" {
  ami = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"
}
