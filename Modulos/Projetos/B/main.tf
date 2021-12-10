module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "ec2-registry-module-instance"

  ami                    = "ami-0ed9277fb7eb570c9"
  instance_type          = "t2.micro"
  subnet_id              = "subnet-0f4173c49b0e4d758"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}