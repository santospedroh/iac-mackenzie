module "ec2-module" {
    source = "../../../Modulos/EC2"
    instance_type = "t3.medium"
    subnet_id = "subnet-0f4173c49b0e4d758"
}