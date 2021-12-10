variable "instance_type" {
    type = string
    default = "t2.nano"
}
variable "instance_name" {
    type = string
    default = "ec2-module-instance"
}
variable "subnet_id" {
    type = string
    default = "subnet-0f4173c49b0e4d758"
}