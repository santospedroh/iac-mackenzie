data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["Cloud9Ubuntu-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["amazon"]
}

variable "instance_names" {
  type = list
  default = ["frontend-instance", "backend-instance", "db-instance"]
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  key_name   = "vockey"
  count = 3

  tags = {
    Name = var.instance_names[count.index]
  }
}