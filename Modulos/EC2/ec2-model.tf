resource "aws_instance" "ec2" {
  ami           = "ami-04902260ca3d33422"
  instance_type = var.instance_type
  subnet_id = var.subnet_id
  tags = {
    Name = "${var.instance_name}"
  }
}